using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Vrggrl.Models
{
    public class SubCategory
    {
        [Key]
        public int SubCategoryId { get; set; }
        public string SubCategoryName { get; set; }
        public int CategoryId { get; set; }
        public int MenuId { get; set; }
        [NotMapped]
        public List<Menu> Menus { get; set; }
        [NotMapped]
        public List<Category> Categories { get; set; }
        [NotMapped]
        public List<SubCategory> SubCategories { get; set; }
    }
}
