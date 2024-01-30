using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Employee_Management
{
    public partial class Addemp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "disableFirstOption", "disableFirstOption();", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dobStr = TextBox4.Text;

            try
            {
                // Convert the input string to a DateTime object
                DateTime dob = DateTime.ParseExact(dobStr, "dd-MM-yyyy", null);

                // Check if the user is 18 years or older
                if ((DateTime.Now - dob).TotalDays < 365.25 * 18)
                {
                    lblResult.Text = "Sorry, you must be 18 years or older.";
                }
                else
                {
                    lblResult.Text = "You are eligible. ";
                }
            }
            catch (FormatException)
            {
                lblResult.Text = "Invalid date format. Please enter date in the format DD-MM-YYYY.";
            }



        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text=="")
            {
                MsgBox(" Name Is Required ", this.Page, this);
                if (TextBox2.Text == "")
                {
                    MsgBox(" Email Is Required ", this.Page, this);
                    if (TextBox3.Text == "")
                    {
                        MsgBox(" Mobile Number Is Required ", this.Page, this);
                        if (TextBox4.Text == "")
                        { 
                            MsgBox(" Date Of Birth Is Required ", this.Page, this);
                            if (DropDownList1.SelectedIndex == 0)
                            {
                                MsgBox(" Select Proper Type Is Required ", this.Page, this);

                            }
                        }
                    }
                }
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\Employee-Management\Employee-Management\App_Data\Database1.mdf;Integrated Security=True");
                con.Open();
                string query = "insert into emp values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue.ToString() + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                MsgBox(" Data Inserted Successfully ", this.Page, this);
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                DropDownList1
            }
           

        }
    }
}