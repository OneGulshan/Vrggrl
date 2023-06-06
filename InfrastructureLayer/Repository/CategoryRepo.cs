using Vrggrl.Data;
using Vrggrl.Infrastructure;
using Vrggrl.Models;

namespace Vrggrl.Repository
{
    public class CategoryRepo : ICategory
    {
        private readonly AppDbContext _context;

        public CategoryRepo(AppDbContext context)
        {
            _context = context;
        }

        public Category AddCategory(Category category)
        {
            var result = _context.Categories.Add(category);
            _context.SaveChanges();
            return result.Entity;
        }

        public Category DeleteCategories(int Id)
        {
            var result = _context.Categories.Find(Id);
            _context.Categories.Remove(result);
            _context.SaveChanges();
            return result;
        }

        public Category DeleteCategory(int Id)
        {
            throw new NotImplementedException();
        }

        public List<Category> GetAll()
        {
            return _context.Categories.ToList();
        }

        public Category GetByID(int Id)
        {
            return _context.Categories.FirstOrDefault(x => x.CategoryId == Id);
        }

        public Category UpdateCategory(Category category)
        {
            var result = _context.Categories.Where(x => x.CategoryId == category.CategoryId).FirstOrDefault();
            result.CategoryName = category.CategoryName;
            result.Menus = category.Menus;            
            _context.Categories.Update(result);
            _context.SaveChanges();
            return result;
        }
    }
}
