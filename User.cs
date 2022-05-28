using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
public class User
{
    public int Id { get; set; }
    public string Name { get; set; }

    [ForeignKey("CompanyInfoKey")]
    public int CompanyInfoKey { get; set; }
    public Company Company { get; set; }
}
