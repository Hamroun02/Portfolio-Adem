using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace projet_pfa
{
    public partial class commande : Form
    {
        myDBConnection con = new myDBConnection();
        MySqlCommand command;
        MySqlDataAdapter da;
        MySqlDataReader reader;
        DataTable dt;
        public commande()
        {
            InitializeComponent();
            con.Connect();
            populate();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel2_Paint_1(object sender, PaintEventArgs e)
        {

        }
        private void populate()
        {
            try
            {
                con.cn.Close();
                con.cn.Open();
                command = new MySqlCommand("Select * from commande", con.cn);
                command.ExecuteNonQuery();
                dt = new DataTable();
                da = new MySqlDataAdapter(command);
                da.Fill(dt);
                view_commande.DataSource = dt.DefaultView;
                con.cn.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show("echec");
                MessageBox.Show(ex.Message);
            }
        }
        private void p_q_OnValueChanged(object sender, EventArgs e)
        {

        }

        private void view_produit_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void commande_Load(object sender, EventArgs e)
        {

        }

        private void p_p_OnValueChanged(object sender, EventArgs e)
        {

        }

        private void p_n_OnValueChanged(object sender, EventArgs e)
        {

        }

        private void A_Click(object sender, EventArgs e)
        {
            view_commande view_commande = new view_commande();
            view_commande.Show();
            this.Hide();
        }
    }
}
