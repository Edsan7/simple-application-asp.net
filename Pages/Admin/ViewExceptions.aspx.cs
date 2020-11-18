﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin
{
    public partial class ViewExceptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string caminho = HttpContext.Current.Server.MapPath("/Pages/Admin/Exceptions/Log.txt");
            Resultado.Text = System.IO.File.ReadAllText(caminho).Replace("\n","<br/>");
        }
    }
}