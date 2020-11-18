using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Não se esqueça de colocar a biblioteca AppDatabase.DLL nas referências

namespace WebApplication2.Admin
{
    public partial class InserirUsuarios : System.Web.UI.Page
    {
        // 1. Criação de string de conexão

        static string caminho = HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + caminho + ";Persist Security Info=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RecuperarDados();
            }
        }
        
        #region Salvar Registro
        protected void Salvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (NomeCompleto.Text.Trim() == "")
                {
                    Mensagem.Text = "Preencha o campo nome";
                }
                else if (Login.Text.Trim() == "")
                {
                    Mensagem.Text = "Preencha o campo login";
                }
                else if (Senha.Text.Trim() == "")
                {
                    Mensagem.Text = "Preencha o campo senha";
                }
                else if (Anotacoes.Text.Trim() == "")
                {
                    Mensagem.Text = "Preencha o campo anotações";
                }
                else if(LoginExiste(Login.Text.Trim()))
                {
                    Mensagem.Text = "O login já existe, por favor escolha outro";
                }
                else
                {
                    string comando = "";
                    if (Codigo.Text == "")
                    {
                        // 2. Criação da string de comando SQL
                        comando = "INSERT INTO Usuarios(NomeCompleto,Login,Senha,Anotacoes) VALUES('" + NomeCompleto.Text + "','" + Login.Text + "','" + Senha.Text + "','" + Anotacoes.Text + "');";
                    }
                    else
                    {
                        comando = "UPDATE Usuarios SET NomeCompleto='" + NomeCompleto.Text + "',Login='" + Login.Text + "',Senha='" + Senha.Text + "',Anotacoes='" + Anotacoes.Text + "' WHERE Codigo =" + Codigo.Text + ";";
                    }
                    // 3. Conexão ao Banco de Dados e envio dos comandos SQL
                    AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                    db.ConnectionString = conexao;
                    db.Query(comando);

                    Mensagem.Text = "Registro concluído com sucesso";

                    RecuperarDados();
                }
            }
            catch (Exception ex)
            {
                Mensagem.Text = "Houve uma falha inesperada no registro dos dados: " + ex.Message;
                //Instancia a Classe RecoverExceptions
                ADSLIB2020.RecoverExceptions re = new ADSLIB2020.RecoverExceptions();
                //Salva a exceção
                re.SaveException(ex);
            }
        }
        
        protected bool LoginExiste(string nomeLogin)
        {
            string comando = "SELECT * FROM Usuarios WHERE Login ='" + nomeLogin + "';";
            // 3. Conexão ao Banco de Dados e envio dos comandos SQL
            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;
            
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);
            if (tb.Rows.Count == 1)
            {
                if (tb.Rows[0]["Codigo"].ToString() == Codigo.Text)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        } 
        #endregion
        #region Obter Dados

        // Recupera os dados da tabela do usuário e atribui ao controle GridView
        protected void RecuperarDados()
        {
            try
            {
                string comando = "SELECT * FROM Usuarios ORDER BY NomeCompleto ASC";

                //DataTable
                System.Data.DataTable tb = new System.Data.DataTable();
                
                // 3. Conexão ao Banco de Dados e envio dos comandos SQL
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;

                tb = (System.Data.DataTable)db.Query(comando);

                // 4. Copia dos dados da Tb para o DataSource do GridView
                Usuarios.DataSource = tb;
                Usuarios.DataBind();
                tb.Dispose();
                
                Codigo.Text = "";
                NomeCompleto.Text = "";
                Login.Text = "";
                Senha.Text = "";
                Anotacoes.Text = "";
                Excluir.Visible = false;
                Cancelar.Visible = false;
                Mensagem.Text = "";
            }
            catch(Exception ex)
            {
                Mensagem.Text = "Houve uma falha inesperada";
                //Instancia a Classe RecoverExceptions
                ADSLIB2020.RecoverExceptions re = new ADSLIB2020.RecoverExceptions();
                //Salva a exceção
                re.SaveException(ex);
            }    
        }
        protected void Buscar_Click(object sender, EventArgs e)
        {
            try
            {
                string comando = "SELECT Codigo,NomeCompleto,Login FROM Usuarios WHERE NomeCompleto + Login LIKE '%" + BuscarUsuario.Text + "%'";
                // 3. Conexão ao Banco de Dados e envio dos comandos SQL
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                System.Data.DataTable tb = new System.Data.DataTable();
                tb = (System.Data.DataTable)db.Query(comando);

                // 4. Copia dos dados da Tb para o DataSource do GridView
                Usuarios.DataSource = tb;
                Usuarios.DataBind();
                tb.Dispose();
                Cancelar.Visible = true;
            }
            catch(Exception ex)
            {
                Mensagem.Text = "Houve uma falha inesperada";
                //Instancia a Classe RecoverExceptions
                ADSLIB2020.RecoverExceptions re = new ADSLIB2020.RecoverExceptions();
                //Salva a exceção
                re.SaveException(ex);
            }
        }
        protected void Cancelar_Click(object sender, EventArgs e)
        {
            BuscarUsuario.Text = "";
            RecuperarDados();
            
        }
        protected void Usuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Codigo.Text = Usuarios.SelectedRow.Cells[1].Text;
                string comando = "SELECT * FROM Usuarios WHERE Codigo=" + Codigo.Text;

                // 3. Conexão ao Banco de Dados e envio dos comandos SQL
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

                if (tb.Rows.Count == 1)
                {
                    NomeCompleto.Text = tb.Rows[0]["NomeCompleto"].ToString();
                    Login.Text = tb.Rows[0]["Login"].ToString();
                    Senha.Text = tb.Rows[0]["Senha"].ToString();
                    Anotacoes.Text = tb.Rows[0]["Anotacoes"].ToString();
                    Excluir.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Mensagem.Text = "Houve uma falha inesperada";
                //Instancia a Classe RecoverExceptions
                ADSLIB2020.RecoverExceptions re = new ADSLIB2020.RecoverExceptions();
                //Salva a exceção
                re.SaveException(ex);
            }
        }
        #endregion
        #region Excluir Registro

        protected void Excluir_Click(object sender, EventArgs e)
        {
            try
            {
                string comando = "DELETE FROM Usuarios WHERE Codigo=" + Codigo.Text + ";";

                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                db.Query(comando);

                Mensagem.Text = "Registro apagado com sucesso";

                RecuperarDados();
                
            }
            catch(Exception ex)
            {
                Mensagem.Text = "Houve uma falha inesperada";
                //Instancia a Classe RecoverExceptions
                ADSLIB2020.RecoverExceptions re = new ADSLIB2020.RecoverExceptions();
                //Salva a exceção
                re.SaveException(ex);
            }
        }
        #endregion

    }
}