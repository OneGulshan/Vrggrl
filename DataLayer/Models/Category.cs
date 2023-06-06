using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Vrggrl.Models
{
    public class Category
    {
        [Key]
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public int MenuId { get; set; }
        [NotMapped]
        public List<Menu> Menus { get; set; }
        [NotMapped]
        public List<Category> Categories { get; set; }
    }
}
