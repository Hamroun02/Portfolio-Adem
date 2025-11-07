using System;

namespace projet_pfa
{
    partial class login
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
            this.login_bout = new System.Windows.Forms.Button();
            this.Clear = new System.Windows.Forms.Button();
            this.logine1 = new System.Windows.Forms.Label();
            this.login_id = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.login_p = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.logine2 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // login_bout
            // 
            this.login_bout.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.login_bout.Font = new System.Drawing.Font("MS Reference Sans Serif", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.login_bout.ForeColor = System.Drawing.Color.White;
            this.login_bout.Location = new System.Drawing.Point(445, 320);
            this.login_bout.Name = "login_bout";
            this.login_bout.Size = new System.Drawing.Size(103, 43);
            this.login_bout.TabIndex = 8;
            this.login_bout.Text = "LOGIN";
            this.login_bout.UseVisualStyleBackColor = false;
            this.login_bout.Click += new System.EventHandler(this.button_login);
            // 
            // Clear
            // 
            this.Clear.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.Clear.Font = new System.Drawing.Font("MS Reference Sans Serif", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Clear.ForeColor = System.Drawing.Color.White;
            this.Clear.Location = new System.Drawing.Point(571, 320);
            this.Clear.Name = "Clear";
            this.Clear.Size = new System.Drawing.Size(103, 43);
            this.Clear.TabIndex = 9;
            this.Clear.Text = "CLEAR";
            this.Clear.UseVisualStyleBackColor = false;
            this.Clear.Click += new System.EventHandler(this.clear);
            // 
            // logine1
            // 
            this.logine1.AutoSize = true;
            this.logine1.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.logine1.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.logine1.Location = new System.Drawing.Point(175, 171);
            this.logine1.Name = "logine1";
            this.logine1.Size = new System.Drawing.Size(172, 35);
            this.logine1.TabIndex = 11;
            this.logine1.Text = "EMAIL_AD";
            this.logine1.Click += new System.EventHandler(this.label12_Click);
            // 
            // login_id
            // 
            this.login_id.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.login_id.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.login_id.ForeColor = System.Drawing.Color.Black;
            this.login_id.HintForeColor = System.Drawing.Color.Empty;
            this.login_id.HintText = "";
            this.login_id.isPassword = false;
            this.login_id.LineFocusedColor = System.Drawing.Color.Brown;
            this.login_id.LineIdleColor = System.Drawing.Color.DarkGray;
            this.login_id.LineMouseHoverColor = System.Drawing.Color.Brown;
            this.login_id.LineThickness = 4;
            this.login_id.Location = new System.Drawing.Point(356, 171);
            this.login_id.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.login_id.Name = "login_id";
            this.login_id.Size = new System.Drawing.Size(281, 35);
            this.login_id.TabIndex = 10;
            this.login_id.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.login_id.OnValueChanged += new System.EventHandler(this.login_id_OnValueChanged);
            // 
            // login_p
            // 
            this.login_p.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.login_p.Cursor = System.Windows.Forms.Cursors.WaitCursor;
            this.login_p.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.login_p.ForeColor = System.Drawing.Color.Black;
            this.login_p.HintForeColor = System.Drawing.Color.Empty;
            this.login_p.HintText = "";
            this.login_p.isPassword = true;
            this.login_p.LineFocusedColor = System.Drawing.Color.Brown;
            this.login_p.LineIdleColor = System.Drawing.Color.DarkGray;
            this.login_p.LineMouseHoverColor = System.Drawing.Color.Brown;
            this.login_p.LineThickness = 4;
            this.login_p.Location = new System.Drawing.Point(356, 253);
            this.login_p.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.login_p.Name = "login_p";
            this.login_p.Size = new System.Drawing.Size(281, 35);
            this.login_p.TabIndex = 10;
            this.login_p.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.login_p.UseWaitCursor = true;
            this.login_p.OnValueChanged += new System.EventHandler(this.bunifuMaterialTextbox3_OnValueChanged);
            // 
            // logine2
            // 
            this.logine2.AutoSize = true;
            this.logine2.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.logine2.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.logine2.Location = new System.Drawing.Point(174, 253);
            this.logine2.Name = "logine2";
            this.logine2.Size = new System.Drawing.Size(188, 35);
            this.logine2.TabIndex = 11;
            this.logine2.Text = "PASSWORD";
            this.logine2.Click += new System.EventHandler(this.logine2_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.RoyalBlue;
            this.label5.Location = new System.Drawing.Point(700, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(39, 35);
            this.label5.TabIndex = 11;
            this.label5.Text = "×";
            this.label5.Click += new System.EventHandler(this.logine2_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Agency FB", 26F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.label6.Location = new System.Drawing.Point(265, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(343, 62);
            this.label6.TabIndex = 11;
            this.label6.Text = "Patisserie Abdellatif";
            this.label6.Click += new System.EventHandler(this.label12_Click);
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::projet_pfa.Properties.Resources.cadenas1;
            this.pictureBox2.Location = new System.Drawing.Point(-1, 0);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(169, 476);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.pictureBox2.TabIndex = 12;
            this.pictureBox2.TabStop = false;
            // 
            // login
            // 
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(734, 478);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.logine2);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.logine1);
            this.Controls.Add(this.login_p);
            this.Controls.Add(this.login_id);
            this.Controls.Add(this.Clear);
            this.Controls.Add(this.login_bout);
            this.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "login";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.login_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void login_page(object sender, EventArgs e) => throw new NotImplementedException();

        
        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private Bunifu.Framework.UI.BunifuMaterialTextbox bunifuMaterialTextbox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private Bunifu.Framework.UI.BunifuMaterialTextbox Admin_id;
        private System.Windows.Forms.Label label4;
        private Bunifu.Framework.UI.BunifuMaterialTextbox password;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button login_bout;
        private System.Windows.Forms.Button Clear;
        private System.Windows.Forms.Label logine1;
        private Bunifu.Framework.UI.BunifuMaterialTextbox login_id;
        private Bunifu.Framework.UI.BunifuMaterialTextbox login_p;
        private System.Windows.Forms.Label logine2;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
    }
}