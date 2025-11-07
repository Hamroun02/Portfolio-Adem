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
    public partial class HOME : Form
    {
        public HOME()
        {
            InitializeComponent();
        }

        private void label_Commande(object sender, EventArgs e)
        {
            view_commande view_commande = new view_commande();
            view_commande.Show();
            this.Hide();
        }

        private void HOME_Load(object sender, EventArgs e)
        {

        }

        private void picture_produit(object sender, EventArgs e)
        {
            produit produit = new produit();
            produit.Show();
            this.Hide();

        }

        private void label_produit(object sender, EventArgs e)
        {
            produit produit = new produit();
            produit.Show();
            this.Hide();
        }

        private void picture_Commande(object sender, EventArgs e)
        {
           view_commande view_commande = new view_commande();
            view_commande.Show();
            this.Hide();
        }

        private void label_login(object sender, EventArgs e)
        {
          login login = new login();
            login.Show();
            this.Hide();
        }

        private void picture_login(object sender, EventArgs e)
        {
            login login = new login();
            login.Show();
            this.Hide();
        }

        private void label4_Click_1(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void picture_admin(object sender, EventArgs e)
        {
            admin admin = new admin();
            admin.Show();
            this.Hide();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
