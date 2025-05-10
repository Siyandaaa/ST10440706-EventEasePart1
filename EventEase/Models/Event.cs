using System.ComponentModel.DataAnnotations;

namespace EventEase.Models
{
    public class Event
    {
        [Key]
        public int EventId { get; set; }
        [Display(Name = "Event Name")]
        [StringLength(60, MinimumLength = 3)]
        [Required]
        public string? EventName { get; set; }
        [Display(Name = "Event Date")]
        [DataType(DataType.Date)]
        [Required]
        public DateTime EventDate { get; set; }
        [RegularExpression(@"^[A-Z]+[a-zA-Z\s]*$")]
        [StringLength(100)]
        public string? Description { get; set; }

    }
}
