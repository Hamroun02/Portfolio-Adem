namespace projet_pfa
{
    partial class splash
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.myprogress = new Guna.UI.WinForms.GunaCircleProgressBar();
            this.gunaCirclePictureBox1 = new Guna.UI.WinForms.GunaCirclePictureBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.myprogress.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gunaCirclePictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.label1.Location = new System.Drawing.Point(64, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(468, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "COMMANDE MANAGEMENT SYSTEM";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.White;
            this.label2.Font = new System.Drawing.Font("MS Reference Sans Serif", 10.2F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.label2.Location = new System.Drawing.Point(130, 276);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(324, 26);
            this.label2.TabIndex = 0;
            this.label2.Text = "DeveloppedByEtudiantEsen";
            this.label2.Click += new System.EventHandler(this.label1_Click);
            // 
            // myprogress
            // 
            this.myprogress.AnimationSpeed = 0.6F;
            this.myprogress.BaseColor = System.Drawing.Color.White;
            this.myprogress.Controls.Add(this.gunaCirclePictureBox1);
            this.myprogress.ForeColor = System.Drawing.Color.Cornsilk;
            this.myprogress.IdleColor = System.Drawing.Color.Gainsboro;
            this.myprogress.IdleOffset = 20;
            this.myprogress.IdleThickness = 10;
            this.myprogress.Image = null;
            this.myprogress.ImageSize = new System.Drawing.Size(52, 52);
            this.myprogress.Location = new System.Drawing.Point(186, 68);
            this.myprogress.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.myprogress.Name = "myprogress";
            this.myprogress.ProgressMaxColor = System.Drawing.SystemColors.MenuHighlight;
            this.myprogress.ProgressMinColor = System.Drawing.SystemColors.MenuHighlight;
            this.myprogress.ProgressOffset = 20;
            this.myprogress.ProgressThickness = 10;
            this.myprogress.Size = new System.Drawing.Size(187, 200);
            this.myprogress.TabIndex = 1;
            // 
            // gunaCirclePictureBox1
            // 
            this.gunaCirclePictureBox1.BaseColor = System.Drawing.Color.White;
            this.gunaCirclePictureBox1.Image = global::projet_pfa.Properties.Resources.boutique;
            this.gunaCirclePictureBox1.Location = new System.Drawing.Point(42, 48);
            this.gunaCirclePictureBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gunaCirclePictureBox1.Name = "gunaCirclePictureBox1";
            this.gunaCirclePictureBox1.Size = new System.Drawing.Size(101, 95);
            this.gunaCirclePictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.gunaCirclePictureBox1.TabIndex = 2;
            this.gunaCirclePictureBox1.TabStop = false;
            this.gunaCirclePictureBox1.UseTransfarantBackground = false;
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick_1);
            // 
            // splash
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(579, 315);
            this.Controls.Add(this.myprogress);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "splash";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.splash_Load);
            this.myprogress.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gunaCirclePictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private Guna.UI.WinForms.GunaCircleProgressBar myprogress;
        private Guna.UI.WinForms.GunaCirclePictureBox gunaCirclePictureBox1;
        private System.Windows.Forms.Timer timer1;
    }
}

