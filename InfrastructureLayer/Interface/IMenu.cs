using Vrggrl.Models;

namespace Vrggrl.Infrastructure
{
    public interface IMenu
    {
        List<Menu> GetAll();
        Menu GetByID(int Id);
        Menu AddMenu(Menu Menu);
        Menu UpdateMenu(Menu Menu);
        Menu DeleteMenu(int Id);
    }
}
