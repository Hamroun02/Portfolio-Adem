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
    public partial class splash : Form
    {
        public splash()
        {
            InitializeComponent();
        }
        int startpoint = 0;
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {

        }

        private void splash_Load(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void timer1_Tick_1(object sender, EventArgs e)
        {
            startpoint += 2;
            myprogress.Value = startpoint;
            if (myprogress.Value == 100)
            {
                myprogress.Value = 0;
                timer1.Stop();
                this.Hide();
                login login = new login();
                login.Show();
            }
        }
    }
}
