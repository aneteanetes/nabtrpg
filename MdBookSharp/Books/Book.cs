using Geranium.Reflection;
using HandlebarsDotNet;
using Markdig;
using MdBookSharp.Extensions;
using MdBookSharp.MdBook;
using MdBookSharp.Resources;
using System.Diagnostics;

namespace MdBookSharp.Books
{
    internal class Book
    {
        public string Title { get; set; }

        public string DefaultTheme { get; set; } = "rust";

        public string PathToRoot { get; set; } = "./";

        public bool IsFaviconSvg { get; set; }

        public bool IsPrintEnable { get; set; }

        public string[] AdditionalCssFiles { get; set; }

        public string[] AdditionalJsFiles { get; set; }

        public bool IsFaviconPng { get; set; }

        public string Language { get; set; } = "ru";

        public List<Page> Pages { get; set; } = new();

        public string RenderedNavbar { get; set; }

        public string ProjectPath { get; set; }

        public string ProjectRootPath { get; set; }

        public string Binpath { get; set; } = "booksharp";

        public static Book Load(string path)
        {
            var rootpath=path;

            path = Path.Combine(path, "src")+"\\";

            var book = SummaryParser.Parse(Path.Combine(path, "SUMMARY.md"));
            book.ProjectPath = path;
            book.ProjectRootPath = rootpath;


            var resultPath = Path.Combine(book.ProjectRootPath, book.Binpath);
            if (Directory.Exists(resultPath))
                Directory.Delete(resultPath, true);

            var favicon = Directory.GetFiles(path, "favicon*",SearchOption.AllDirectories).LastOrDefault();
            book.IsFaviconSvg = Path.GetExtension(favicon) == ".svg";
            if (!book.IsFaviconSvg)
                book.IsFaviconPng = Path.GetExtension(favicon) == ".png";

            //book.AdditionalCssFiles = Directory.GetFiles(path, "*.css", SearchOption.AllDirectories).Select(csspath => csspath.Replace(path, book.PathToRoot)).ToArray();
            //book.AdditionalJsFiles = Directory.GetFiles(path, "*.js", SearchOption.AllDirectories).Select(js => js.Replace(path, book.PathToRoot)).ToArray();

            int internalCounter = 1;

            int internalIndex = 0;

            for (int i = 0; i < book.Pages.Count; i++)
            {
                book.BindPage(book.Pages.ElementAtOrDefault(i), path, internalCounter, internalIndex);
                internalIndex++;
            }

            foreach (var page in book.Pages)
            {
                if (page.RelativePath.IsEmpty())
                    continue;

                if (page.RelativePath.IsNotEmpty())
                    page.PathToRoot = Path.GetRelativePath(page.RelativePath.Replace(".md",".html"), "./");

                if (page.PathToRoot.IsNotEmpty() && page.PathToRoot.StartsWith("..\\"))
                    page.PathToRoot = "./" + page.PathToRoot.Substring(3);

                if (page.PathToRoot.IsNotEmpty())
                {
                    page.PathToRoot = page.PathToRoot.Replace("\\", "/");

                    if (page.PathToRoot == "..")
                        page.PathToRoot = "./";
                    else
                        page.PathToRoot += "/";
                }
            }

            return book;
        }

        private void BindPage(Page page, string absPath, int internalCounter, int internalIndex, string parentCount="")
        {
            var prev = Pages.ElementAtOrDefault(internalIndex - 1);
            if (prev != null && prev.Path.IsEmpty())
            {
                int minus = 2;
                while (prev.Path.IsEmpty())
                {
                    prev = Pages.ElementAtOrDefault(internalIndex - minus);
                    minus++;

                    if (minus >= Pages.Count) break;
                }
            }

            var next = Pages.ElementAtOrDefault(internalIndex + 1);
            if (next != null && next.Path.IsEmpty())
            {
                int plus = 2;
                while (next.Path.IsEmpty())
                {
                    next = Pages.ElementAtOrDefault(internalIndex + plus);
                    plus++;

                    if (plus >= Pages.Count) break;
                }
            }

            if (page.Path.IsEmpty())
                return;

            page.Path = page.Path.Replace("./", ProjectPath);

            page.MdContent = File.ReadAllText(page.Path);
            page.RelativePath = page.Path.Replace(absPath, "");

            if (prev != default)
            {
                page.Prev = Path.GetRelativePath(page.RelativePath.Replace(".md", ".html"), prev.RelativePath.Replace(".md", ".html"));

                if (page.Prev.StartsWith("..\\"))
                    page.Prev = "./" + page.Prev.Substring(3);

                    page.Prev = page.Prev.Replace("\\", "/");
            }

            if (next != default)
            {
                page.Next = Path.GetRelativePath(page.RelativePath.Replace(".md", ".html"), next.Path.Replace(absPath,"").Replace(".md", ".html"));

                if (page.Next.StartsWith("..\\"))
                    page.Next = "./" + page.Next.Substring(3);

                page.Next = page.Next.Replace("\\", "/");
            }

            internalIndex++;
        }

        public Book Render(List<MdBookExtension> extensions)
        {
            var pipelineBuilder = new MarkdownPipelineBuilder().UseAdvancedExtensions();
            var pipeline = pipelineBuilder.Build();

            foreach (var page in Pages)
            {
                if (page.MdContent.IsEmpty())
                    continue;

                page.Html = Markdown.ToHtml(page.MdContent, pipeline);
                extensions.ForEach(extension => extension.Process(page));
                page.IsRendered = true;
            }

            return this;
        }

        public void Build()
        {
            RenderPages();

            var firstPage = Pages.ElementAtOrDefault(0);
            if (firstPage != null)
            {
                var path = Path.Combine(ProjectRootPath, Binpath, "index.html");
                var dir = Path.GetDirectoryName(path);

                if (!Directory.Exists(dir))
                {
                    Directory.CreateDirectory(dir);
                }
                File.WriteAllText(path, firstPage.Content);
            }

            foreach (var page in Pages.Where(x=>x.Path.IsNotEmpty()))
            {
                WritePage(page);
            }

            foreach (var file in EmbeddedResources.GetEmbeddedFolder("book"))
            {
                var path = Path.Combine(ProjectRootPath, Binpath, file.FileName);
                ValidateDirectory(path);

                File.WriteAllBytes(path, file.Content.ToArray());
            }

            var imageroot = PathToRoot + "\\images";
            foreach (var image in Directory.GetFiles(Path.Combine(ProjectPath, "images"),".", SearchOption.AllDirectories))
            {
                var path = Path.Combine(ProjectRootPath, Binpath, image.Replace(ProjectPath, ""));
                ValidateDirectory(path);
                File.Copy(image,path,true);
            }
        }

        private string ValidateDirectory(string path)
        {
            var dir = Path.GetDirectoryName(path);

            if (!Directory.Exists(dir))
            {
                Directory.CreateDirectory(dir);
            }

            return path;
        }

        private void WritePage(Page page)
        {
            var path = Path.Combine(ProjectRootPath, Binpath, page.RelativePath.Replace(".md",".html"));

            ValidateDirectory(path);

            File.WriteAllText(path, page.Content);
        }

        private void BuildNavbar(Page renderingPage)
        {
            RenderedNavbar = "";
            int level = 0;

            string closing = "";

            foreach (var page in Pages)
            {
                if (page.RelativePath == renderingPage.RelativePath)
                    page.IsActive = "active";

                if (page.Name.IsEmpty())
                {
                    RenderedNavbar += EmbeddedResources.GetEmbeddedFileContent("navbar/spacer.html");
                    continue; // ?
                }

                var hbs = string.Empty;

                if (page.Path.IsEmpty())
                    hbs = EmbeddedResources.GetEmbeddedFileContent("navbar/static.hbs");
                else
                    hbs = EmbeddedResources.GetEmbeddedFileContent($"navbar/item.hbs");

                var tpl = Handlebars.Compile(hbs);

                if (page.Level > level)
                {
                    level++;
                    RenderedNavbar += "<li><ol class=\"section\">";
                }

                if (page.Level < level)
                {
                    RenderedNavbar += string.Join("", Enumerable.Range(0, level - page.Level).Select(x => "</ol></li>"));
                    level = page.Level;
                }

                page.Url = page.RelativePath;

                if (!page.RelativePath.IsEmpty() && !renderingPage.RelativePath.IsEmpty() && page != renderingPage)
                    page.Url = Path.GetRelativePath(renderingPage.RelativePath, page.RelativePath);

                if (page.Url.IsNotEmpty())
                    page.Url = page.Url.Replace(".md", ".html");

                if (page.Url.IsNotEmpty() && page.Url.StartsWith("..\\"))
                    page.Url = ".\\" + page.Url.Substring(3);

                RenderedNavbar += tpl.Invoke(page);

                page.IsActive = "";
            }
        }

        private void RenderPages()
        {
            var template = EmbeddedResources.GetEmbeddedFileContent("page.hbs");
            var bindHtml = Handlebars.Compile(template);

            foreach (var page in Pages)
            {
                BuildNavbar(page);

                if (page.Path.IsEmpty())
                    continue;

                page.Content = bindHtml.Invoke(new
                {
                    Language,
                    DefaultTheme,
                    Title,
                    page.Name,
                    IsFaviconPng,
                    IsFaviconSvg,
                    page.PathToRoot,
                    AdditionalCssFiles,
                    AdditionalJsFiles,
                    RenderedNavbar,
                    IsPrintEnable,
                    page.Html,
                    page.Prev,
                    page.IsPrevExists,
                    page.Next,
                    page.IsNextExists,
                });
            }

        }

    }
}