using System;
using System.Net;
using System.Net.Mail;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSLIB2020;

namespace WebApplication2
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Enviar_Click(object sender, EventArgs e)
        {
            // ENVIAR O EMAIL

            //1. Validando os dados enviados pelo usuário
            if (Mensagem.Text.Trim() == "")
            {
                Erro.Text = "Preencha todos os dados";
            }
            else if (SeuNome.Text.Trim() == "")
            {
                Erro.Text = "Preencha o campo nome";
            }
            else if (SeuEmail.Text.Trim() == "")
            {
                Erro.Text = "Preencha o campo email";
            }
            else
            {
                try
                {
                    // ENVIANDO O EMAIL PARA O DONO SITE
                    MailMessage email = new MailMessage();
                    SmtpClient smtp = new SmtpClient();

                    email.Subject = "Fale Conosco";
                    email.To.Add("contato@seudominio.com.br");
                    MailAddress from = new MailAddress("contato@seudominio.com.br");
                    email.From = from;
                    email.Body = "Dados Enviados pelo Form de Contato\n";
                    email.Body += "Nome: " + SeuNome.Text + "\n";
                    email.Body += "Email: " + SeuEmail.Text + "\n";
                    email.Body += "Mensagem: " + Mensagem.Text + "\n";
                    email.IsBodyHtml = false;

                    // PASSO 2 - ENVIAR A MENSAGEM POR SMTP (SEND EMAIL TRANSFER PROTOCOL)

                    smtp.Host = "smtp.seudominio.com.br";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Credentials = new NetworkCredential("contato@seudominio.com.br", "suasenha");
                    smtp.Send(email);
                }
                catch(Exception ex)
                {
                    Erro.Text = "Algo inesperado ocorreu. Estamos trabalhando para resolver o mais rápido possível";

                    // Salva a exceção ocorrida

                    RecoverExceptions re = new RecoverExceptions();
                    re.SaveException(ex);

                }
            }
        }
    }
}