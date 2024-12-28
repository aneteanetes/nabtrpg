using Markdig;
using MdBookSharp.Books;
using MdBookSharp.Extensions;
using System.Diagnostics;

List<MdBookExtension> extensions = new();

var path = "C:\\Users\\anete\\Desktop\\Nabunassar TTRPG\\mdbook\\nabunassar_sharp\\";

Book.Load(path)
    .Render(extensions)
    .Build();

var psi = new ProcessStartInfo();
psi.FileName = @"c:\windows\explorer.exe";
psi.Arguments = path;
Process.Start(psi);