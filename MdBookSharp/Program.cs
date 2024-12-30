using MdBookSharp.Books;
using MdBookSharp.Extensions;
using MdBookSharp.Extensions.Dices;
using System.Reflection;

List<MdBookExtension> extensions = [
    new DiceExtension()
];

var path = Path.GetFullPath("..\\Book\\");
var asmname = Assembly.GetEntryAssembly().GetName().Name;

void FindBook()
{
    var dir = Directory.GetParent(path);
    path = dir.FullName;
    if (dir.Name != asmname)
        FindBook();
}
FindBook();

path = Path.Combine(Directory.GetParent(path).FullName, "Book");

Book.Load(path)
    .Render(extensions)
    .Build();