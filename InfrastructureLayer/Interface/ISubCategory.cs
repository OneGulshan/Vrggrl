using Vrggrl.Models;

namespace Vrggrl.Infrastructure
{
    public interface ISubCategory
    {
        List<SubCategory> GetAll();
        SubCategory GetByID(int Id);
        SubCategory AddSubCategory(SubCategory SubCategory);
        SubCategory UpdateSubCategory(SubCategory SubCategory);
        SubCategory DeleteSubCategory(int Id);
    }
}
