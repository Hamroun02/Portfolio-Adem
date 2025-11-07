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
using static System.Net.Mime.MediaTypeNames;
using System.Security.Policy;
namespace projet_pfa
{
    public partial class produit : Form
    {
        myDBConnection con = new myDBConnection();
        MySqlCommand command;
        MySqlDataAdapter da;
        MySqlDataReader reader;
        DataTable dt;
        public produit()
        {
            InitializeComponent();
            con.Connect();
        }
        
     
        private void populate()
        {
            try
            {
                con.cn.Close();
                con.cn.Open();
                command = new MySqlCommand("Select * from produit", con.cn);
                command.ExecuteNonQuery();
                dt = new DataTable();
                da = new MySqlDataAdapter(command);
                da.Fill(dt);
                view_produit.DataSource = dt.DefaultView;
                con.cn.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show("echec");
                MessageBox.Show(ex.Message);
            }
        }
        private void produit_Load_1(object sender, EventArgs e)
        {
            populate();
        }



        private void picture_produit(object sender, EventArgs e)
        {

        }

        private void label_Exit(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }

        private void bunifuMaterialTextbox1_OnValueChanged_1(object sender, EventArgs e)
        {

        }

        private void button_Delete(object sender, EventArgs e)
        {
            if (p_id.Text== "")
            {
                MessageBox.Show("Enter the PRODUIT_id");
            }
            else
            {
                con.cn.Close();
                con.cn.Open();
                string query = "DELETE FROM produit WHERE id_produit = '" +p_id.Text + "'";
                MySqlCommand command = new MySqlCommand(query, con.cn);
                command.ExecuteNonQuery();
                con.cn.Close();
                MessageBox.Show("Data deleted successfully!");
                populate();
            }
        }

        private void gunaDataGrid_View_produit(object sender, DataGridViewCellEventArgs e)
        {
            p_id.Text = view_produit.SelectedRows[0].Cells[0].Value.ToString();
            p_n.Text = view_produit.SelectedRows[0].Cells[1].Value.ToString();
            p_d.Text = view_produit.SelectedRows[0].Cells[2].Value.ToString();
            p_p.Text = view_produit.SelectedRows[0].Cells[3].Value.ToString();
            p_q.Text = view_produit.SelectedRows[0].Cells[4].Value.ToString();


        }

        private void ADD_Click(object sender, EventArgs e)
        {
            if (p_id.Text=="" || p_n.Text=="" || p_p.Text=="" || p_q.Text == "" || p_d.Text == "")
            {
                MessageBox.Show("Missing Information");
            }
            else
            {
                con.cn.Close();
                con.cn.Open();
                command = new MySqlCommand("insert into produit(id_produit,nom,description,prix,quantite_stock) values('" + p_id.Text + "','" + p_n.Text + "','" + p_d.Text + "','" + p_p.Text + "','" + p_q.Text + "')", con.cn);
                command.ExecuteNonQuery();
                con.cn.Close();
                MessageBox.Show("Data succesfully saved");
                populate();
            }
        }

        private void p_id_OnValueChanged(object sender, EventArgs e)
        {

        }

        private void update_Click(object sender, EventArgs e)
        {
            if (p_id.Text == "" || p_n.Text == "" || p_p.Text == "" || p_q.Text == "" || p_d.Text == "")
            {
                MessageBox.Show("Missing Information");
            }
            else
            {
                con.cn.Close();
                con.cn.Open();
                command = new MySqlCommand("UPDATE produit SET nom='" + p_n.Text + "', quantite_stock='" + p_q.Text + "', description='" + p_d.Text + "', prix='" + p_p.Text + "' WHERE id_produit = '" + p_id.Text + "';", con.cn);
                command.ExecuteNonQuery();
                con.cn.Close();
                MessageBox.Show("Data succesfully updated");
                
               populate();
            }
        }

        private void home_Click(object sender, EventArgs e)
        {
            HOME HOME = new HOME();
            HOME.Show();
            this.Hide();
        }

        private void label_produit(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
