using MdBookSharp.Books;

namespace MdBookSharp.Extensions.Dices
{
    internal class DiceExtension : MdBookExtension
    {
        public override void Process(Page file)
        {
            //not inversed for 'faster' check
            if (file.MdContent.Contains("d4") || file.MdContent.Contains("d6") || file.MdContent.Contains("d8") || file.MdContent.Contains("d10") || file.MdContent.Contains("d12"))
            {
                typeof(Dice).GetAllValues<Dice>().ForEach(d =>
                {
                    file.Html = file.Html.Replace(d.ToString(), Dice(file, d));
                });
            }
        }

        private string Dice(Page page, Dice dice)
        {
            return $@"<img width=""24"" height=""24"" class=""dice"" src=""{page.PathToRoot}images/dices/{dice.ToString()}.png"" alt=""{dice.ToString()}"">";
        }
    }
}
