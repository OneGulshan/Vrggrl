using Vrggrl.Data;
using Vrggrl.Infrastructure;
using Vrggrl.Models;

namespace Vrggrl.Repository
{
    public class MenuRepo : IMenu
    {
        private readonly AppDbContext _context;

        public MenuRepo(AppDbContext context)
        {
            _context = context;
        }

        public Menu AddMenu(Menu menu)
        {
            var result = _context.Menus.Add(menu);
            _context.SaveChanges();
            return result.Entity;
        }

        public Menu DeleteMenu(int Id)
        {
            var result = _context.Menus.Find(Id);
            _context.Menus.Remove(result);
            _context.SaveChanges();
            return result;
        }

        public List<Menu> GetAll()
        {
            return _context.Menus.ToList();
        }

        public Menu GetByID(int Id)
        {
            return _context.Menus.FirstOrDefault(x => x.MenuId == Id);
        }

        public Menu UpdateMenu(Menu menu)
        {
            var result = _context.Menus.Where(x => x.MenuId == menu.MenuId).FirstOrDefault();
            result.MenuName = menu.MenuName;
            _context.Menus.Update(result);
            _context.SaveChanges();
            return result;
        }
    }
}
