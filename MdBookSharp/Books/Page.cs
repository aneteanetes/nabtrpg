﻿using Geranium.Reflection;
using MdBookSharp.Resources;
using System.Diagnostics;

namespace MdBookSharp.Books
{
    [DebuggerDisplay("{Name} {Path}")]
    internal class Page
    {
        public string IsActive { get; set; }
        public string Name { get; set; }

        public string PathToRoot { get; set; }

        public string FileNameWithoutExtension
        {
            get
            {
                if (fileNameWithoutExtension == null)
                    fileNameWithoutExtension = System.IO.Path.GetFileNameWithoutExtension(Path);

                return fileNameWithoutExtension;
            }
        }
        private string fileNameWithoutExtension;

        public string Path { get; set; }

        public string[] ExtensionCssFiles { get; set; } = [];

        public string RelativePath { get; set; }

        public string Url { get; set; }

        public string RelativePathHtml => System.IO.Path.GetFileNameWithoutExtension(RelativePath) + ".html";

        public bool IsCounted { get; set; } = true;

        public bool IsCollapsible { get; set; } = true;

        public string Number { get; set; }

        public string CounterNumber { get; set; }

        public string MdContent { get; set; }

        public string Content { get; set; }

        public string Html { get; set; }

        public string Prev { get; set; }

        public string Next { get; set; }

        public int Level { get; set; }

        public int LevelFolder { get; set; }

        public bool IsRendered { get; set; }

        public bool IsPrevExists => Prev.IsNotEmpty();

        public bool IsNextExists => Next.IsNotEmpty();
    }
}
