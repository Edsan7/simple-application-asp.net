using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NomeCompleto"] != null)
            {
                NomeCompleto.Text = Session["NomeCompleto"].ToString();
                ViewExceptions.Visible = true;
                InserirUsuarios.Visible = true;
                Login.Visible = false;
                Logout.Visible = true;
            }
            else
            {
                ViewExceptions.Visible = false;
                InserirUsuarios.Visible = false;
                Login.Visible = true;
                Logout.Visible = false;
            }
        }
    }
}