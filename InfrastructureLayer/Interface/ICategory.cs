using Vrggrl.Models;

namespace Vrggrl.Infrastructure
{
    public interface ICategory
    {
        List<Category> GetAll();
        Category GetByID(int Id);
        Category AddCategory(Category category);
        Category UpdateCategory(Category category);
        Category DeleteCategory(int Id);
    }
}
