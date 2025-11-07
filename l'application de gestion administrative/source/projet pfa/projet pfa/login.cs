using Microsoft.VisualBasic.ApplicationServices;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace projet_pfa
{
    public partial class login : Form
    {
        myDBConnection con = new myDBConnection();
        MySqlCommand command;
        MySqlDataAdapter da;
        MySqlDataReader reader;
        DataTable dt;
        public login()
        {
            InitializeComponent();
            con.Connect();
        }
       
      

        
       

        private void bunifuMaterialTextbox3_OnValueChanged(object sender, EventArgs e)
        {

        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void clear(object sender, EventArgs e)
        {
            login_id.Text = "";
            login_p.Text = "";
        }

        private void button_login(object sender, EventArgs e)
        {
            if (login_id.Text == "" || login_p.Text == "")
            {
                MessageBox.Show("try again");
            }
            else
            {
                try
                {
                    con.cn.Open();
                    string query = "SELECT * FROM admin WHERE email='" + login_id.Text + "' AND mot_de_passe='" + login_p.Text + "' ";
                    dt = new DataTable();
                    da = new MySqlDataAdapter(query, con.cn);
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        HOME HOME = new HOME();
                        HOME.Show();
                        this.Hide();
                    }
                    else
                    {
                        MessageBox.Show("The User name or password you entered is incorrect,try again");

                    }
                    con.cn.Close();

                }
                catch (Exception Ex)
                {
                    MessageBox.Show(Ex.Message);
                }
            }
        }

        private void login_Load_1(object sender, EventArgs e)
        {

        }

        private void logine2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void login_id_OnValueChanged(object sender, EventArgs e)
        {

        }
    }
}
