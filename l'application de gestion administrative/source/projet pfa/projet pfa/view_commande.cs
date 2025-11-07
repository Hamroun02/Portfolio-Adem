using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace projet_pfa
{
    public partial class view_commande : Form
    {
        myDBConnection con = new myDBConnection();
        MySqlCommand command;
        public view_commande()
        {
            InitializeComponent();
            con.Connect();
        }
        
       private void fetchempdata()
        {
            con.cn.Open();
            
            command = new MySqlCommand("select * from commande where id_commande='" + c_id0.Text + "'", con.cn);
            command.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(command);
            sda.Fill(dt);
            foreach(DataRow dr in dt.Rows)
            {
                c_id.Text = dr["id_commande"].ToString();
                ut_id.Text = dr["id_utilisateur"].ToString();
                c_d.Text = dr["date"].ToString();
                c_c.Text = dr["statut"].ToString();
                c_a.Text= dr["adresse"].ToString();
                c_id.Visible = true;
                ut_id.Visible = true;
                c_d.Visible = true;
                c_c.Visible = true;

            }
            con.cn
                .Close();
        }
        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void view_commande_Load(object sender, EventArgs e)
        {

        }

        private void button_refresh(object sender, EventArgs e)
        {
            fetchempdata();
        }

        private void home_Click(object sender, EventArgs e)
        {
            HOME HOME = new HOME();
            HOME.Show();
            this.Hide();
        }

        private void print_Click(object sender, EventArgs e)
        {
            if (printPreviewDialog1.ShowDialog()==DialogResult.OK)
            {
                printDocument1.Print();

            }
        }


        private void printPreviewDialog1_Load(object sender, EventArgs e)
        {

        }

        private void printDocument1_PrintPage_1(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            e.Graphics.DrawString("======COMMANDE DETAILS======", new Font("century gothic", 20, FontStyle.Bold), Brushes.Red, new Point(180));
            e.Graphics.DrawString("COMMANDE_ID: "+c_id.Text, new Font("century gothic", 18, FontStyle.Bold), Brushes.Blue, new Point(10,100));
            e.Graphics.DrawString("Utilisateur_ID: " + ut_id.Text, new Font("century gothic", 18, FontStyle.Bold), Brushes.Blue, new Point(10,150));
            e.Graphics.DrawString("DATE: " + c_d.Text, new Font("century gothic", 18, FontStyle.Bold), Brushes.Blue, new Point(10, 200));
            e.Graphics.DrawString("STATUS: " + c_c.Text, new Font("century gothic", 18, FontStyle.Bold), Brushes.Blue, new Point(10, 250));
            e.Graphics.DrawString("ADRESS: " + c_a.Text, new Font("century gothic", 18, FontStyle.Bold), Brushes.Blue, new Point(10, 300));

        }

        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void table_commande_Click(object sender, EventArgs e)
        {
            commande commande = new commande();
            commande.Show();
            this.Hide();
        }
    }
}
