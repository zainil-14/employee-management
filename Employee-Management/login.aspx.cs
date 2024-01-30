using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Management
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text=="admin")
            {
                if(TextBox2.Text=="admin")
                {
                    Response.Redirect("home.aspx");
                }
                else
                {
                    MsgBox(" Incorrect Password", this.Page, this);
                }
            }
            else
            {
                MsgBox(" Incorrect Username ", this.Page, this);
            }
        }
    }
}