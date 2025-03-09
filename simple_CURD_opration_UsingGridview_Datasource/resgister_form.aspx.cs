using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simple_CURD_opration_UsingGridview_Datasource
{
    public partial class resgister_form : System.Web.UI.Page
    {
        protected void btn_insrt_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource4.InsertParameters["Emp_Id"].DefaultValue = txt_id.Text;
                SqlDataSource4.InsertParameters["Emp_Name"].DefaultValue = txt_name.Text;
                SqlDataSource4.InsertParameters["Emp_Salary"].DefaultValue = txt_salary.Text;

                SqlDataSource4.Insert();
                Response.Write("डेटा यशस्वीरित्या इन्सर्ट झाला!");
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}
    