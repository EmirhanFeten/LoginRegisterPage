using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRegisterPage
{
    public partial class registerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            User user = new User();
            UserCRUD userRegisterCrud = new UserCRUD();
            user.FName = TextBox1.Text;
            user.LName = TextBox2.Text;
            user.UsName = TextBox3.Text;
            user.Psw = TextBox4.Text;
            user.Mail = TextBox6.Text;

            bool cvp = userRegisterCrud.listRegister(TextBox3.Text, TextBox6.Text);
            if (cvp != true)
            {
                bool answ = userRegisterCrud.addUser(user);
                if (answ == true)
                {
                    Panel1.Visible=true;
                }
                else
                {
                    Panel2.Visible=true;
                }
            }
            else
            {
                Panel3.Visible = true;
            }

        }
    }
}