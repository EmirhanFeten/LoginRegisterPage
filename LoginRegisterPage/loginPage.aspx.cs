using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRegisterPage
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserCRUD usercrud = new UserCRUD();
            bool cvp = usercrud.list(TextBox1.Text,TextBox2.Text);
            if (cvp == true)
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel2.Visible=true;
            }
        }
    }
}