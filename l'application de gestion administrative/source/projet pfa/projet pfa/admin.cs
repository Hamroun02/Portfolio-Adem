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
using System.IO;
using MySql.Data.MySqlClient;
using Mysqlx.Crud;

namespace projet_pfa
{
    public partial class admin : Form
    {
        myDBConnection con = new myDBConnection();
        MySqlCommand command;
        MySqlDataAdapter da;
        MySqlDataReader reader;
        DataTable dt;
        public admin()
        {
            InitializeComponent();
            con.Connect();
            populate();

        }
       

        

        private void view_produit_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            a_id.Text = view_admin.SelectedRows[0].Cells[0].Value.ToString();
            a_n1.Text = view_admin.SelectedRows[0].Cells[1].Value.ToString();
            a_n2.Text = view_admin.SelectedRows[0].Cells[2].Value.ToString();
            a_e.Text = view_admin.SelectedRows[0].Cells[3].Value.ToString();
            a_p.Text = view_admin.SelectedRows[0].Cells[4].Value.ToString();
            path.Text= view_admin.SelectedRows[0].Cells[5].Value.ToString();
            object cellValueObj = view_admin.SelectedRows[0].Cells[5].Value;
            string cellValue = cellValueObj != null ? cellValueObj.ToString() : "";
            string image_name = Path.GetFileName(cellValue);
            Image image = null;
            if (!string.IsNullOrEmpty(image_name))
            {
                image = Properties.Resources.ResourceManager.GetObject(image_name) as Image;
            }

            picture.Image = image;
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
        private void populate()
        {
            try
            {
                con.cn.Close();
                con.cn.Open();
                command = new MySqlCommand("Select * from admin", con.cn);
                command.ExecuteNonQuery();
                dt = new DataTable();
                da = new MySqlDataAdapter(command);
                da.Fill(dt);
                view_admin.DataSource = dt.DefaultView;
                con.cn.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show("echec");
                MessageBox.Show(ex.Message);
            }
        }

        private void ADD_Click(object sender, EventArgs e)
        {

            if (a_id.Text == "" || a_n1.Text == "" || a_e.Text == "" || a_p.Text == "" || a_n2.Text == "" || path.Text == "")
            {
                MessageBox.Show("Missing Information");
            }
           
               else
                {
                    con.cn.Close();
                    con.cn.Open();
                    command = new MySqlCommand("insert into admin values('" + a_id.Text + "','" + a_n1.Text + "','" + a_n2.Text + "','" + a_e.Text + "','" + a_p.Text + "','" + path.Text + "')", con.cn);
                    command.ExecuteNonQuery();
                    con.cn.Close();
                    MessageBox.Show("Data succesfully saved");
                    populate();
                }

            }
        
      
        private void home_Click(object sender, EventArgs e)
        {
            HOME HOME = new HOME();
            HOME.Show();
            this.Hide();
        }

        private void upload_image_Click(object sender, EventArgs e)
        {
            OpenFileDialog opf = new OpenFileDialog();
            opf.Filter = " select image (*.png;*.jpg;*.gif)|*.png;*.jpg;*.gif ";
            if (opf.ShowDialog() == DialogResult.OK)
            {
                picture.Image = Image.FromFile(opf.FileName);
                string nomFichierSansExtension = System.IO.Path.GetFileNameWithoutExtension(opf.FileName);

                path.Text = nomFichierSansExtension;
            }


        }


        private void picture_Click(object sender, EventArgs e)
        {

        }


        private void DELETE_Click(object sender, EventArgs e)
        {

            if (a_id.Text == "")
            {
                MessageBox.Show("Enter the ADMIN_id");
            }
            else
            {
                con.cn.Close();
                con.cn.Open();
                string query = "DELETE FROM admin WHERE id_admin = '" + a_id.Text + "'";
                MySqlCommand command = new MySqlCommand(query, con.cn);
                command.ExecuteNonQuery();
                con.cn.Close();
                MessageBox.Show("Data deleted successfully!");
                populate();
            }
        }

        private void admin_Load(object sender, EventArgs e)
        {

        }
    }
}
