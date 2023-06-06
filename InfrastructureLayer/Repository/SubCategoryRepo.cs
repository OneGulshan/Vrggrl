using Vrggrl.Data;
using Vrggrl.Infrastructure;
using Vrggrl.Models;

namespace Vrggrl.Repository
{
    public class SubCategoryRepo : ISubCategory
    {
        private readonly AppDbContext _context;

        public SubCategoryRepo(AppDbContext context)
        {
            _context = context;
        }

        public SubCategory AddSubCategory(SubCategory subcategory)
        {
            var result = _context.SubCategories.Add(subcategory);
            _context.SaveChanges();
            return result.Entity;
        }
        
        public SubCategory DeleteSubCategory(int Id)
        {
            var result = _context.SubCategories.Find(Id);
            _context.SubCategories.Remove(result);
            _context.SaveChanges();
            return result;
        }
        
        public List<SubCategory> GetAll()
        {
            return _context.SubCategories.ToList();
        }

        public SubCategory GetByID(int Id)
        {
            return _context.SubCategories.FirstOrDefault(x => x.SubCategoryId == Id);
        }

        public SubCategory UpdateSubCategory(SubCategory subcategory)
        {
            var result = _context.SubCategories.Where(x => x.SubCategoryId == subcategory.SubCategoryId).FirstOrDefault();
            result.SubCategoryName = subcategory.SubCategoryName;
            result.Categories = subcategory.Categories;
            _context.SubCategories.Update(result);
            _context.SaveChanges();
            return result;
        }
    }
}
