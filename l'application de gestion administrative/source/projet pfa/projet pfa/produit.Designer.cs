using System;

namespace projet_pfa
{
    partial class produit
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(produit));
            this.panel2 = new System.Windows.Forms.Panel();
            this.view_produit = new Guna.UI.WinForms.GunaDataGridView();
            this.ADDD = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.p_n = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.label9 = new System.Windows.Forms.Label();
            this.p_d = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.p_q = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.p_p = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.p_id = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.label6 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.pictureBox6 = new System.Windows.Forms.PictureBox();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.view_produit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.Control;
            this.panel2.Controls.Add(this.view_produit);
            this.panel2.Controls.Add(this.ADDD);
            this.panel2.Controls.Add(this.button4);
            this.panel2.Controls.Add(this.button2);
            this.panel2.Controls.Add(this.button1);
            this.panel2.Controls.Add(this.label12);
            this.panel2.Controls.Add(this.p_n);
            this.panel2.Controls.Add(this.label9);
            this.panel2.Controls.Add(this.p_d);
            this.panel2.Controls.Add(this.label11);
            this.panel2.Controls.Add(this.label10);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.p_q);
            this.panel2.Controls.Add(this.p_p);
            this.panel2.Controls.Add(this.p_id);
            this.panel2.Location = new System.Drawing.Point(2, 97);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1063, 443);
            this.panel2.TabIndex = 0;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // view_produit
            // 
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.White;
            this.view_produit.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle4;
            this.view_produit.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.view_produit.BackgroundColor = System.Drawing.SystemColors.Control;
            this.view_produit.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.view_produit.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.view_produit.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.MenuHighlight;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.view_produit.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle5;
            this.view_produit.ColumnHeadersHeight = 25;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.White;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.view_produit.DefaultCellStyle = dataGridViewCellStyle6;
            this.view_produit.EnableHeadersVisualStyles = false;
            this.view_produit.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.view_produit.Location = new System.Drawing.Point(448, 3);
            this.view_produit.Name = "view_produit";
            this.view_produit.RowHeadersVisible = false;
            this.view_produit.RowHeadersWidth = 51;
            this.view_produit.RowTemplate.Height = 24;
            this.view_produit.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.view_produit.Size = new System.Drawing.Size(603, 417);
            this.view_produit.TabIndex = 8;
            this.view_produit.Theme = Guna.UI.WinForms.GunaDataGridViewPresetThemes.Guna;
            this.view_produit.ThemeStyle.AlternatingRowsStyle.BackColor = System.Drawing.Color.White;
            this.view_produit.ThemeStyle.AlternatingRowsStyle.Font = null;
            this.view_produit.ThemeStyle.AlternatingRowsStyle.ForeColor = System.Drawing.Color.Empty;
            this.view_produit.ThemeStyle.AlternatingRowsStyle.SelectionBackColor = System.Drawing.Color.Empty;
            this.view_produit.ThemeStyle.AlternatingRowsStyle.SelectionForeColor = System.Drawing.Color.Empty;
            this.view_produit.ThemeStyle.BackColor = System.Drawing.SystemColors.Control;
            this.view_produit.ThemeStyle.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.view_produit.ThemeStyle.HeaderStyle.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.view_produit.ThemeStyle.HeaderStyle.BorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.view_produit.ThemeStyle.HeaderStyle.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.view_produit.ThemeStyle.HeaderStyle.ForeColor = System.Drawing.Color.Black;
            this.view_produit.ThemeStyle.HeaderStyle.HeaightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            this.view_produit.ThemeStyle.HeaderStyle.Height = 25;
            this.view_produit.ThemeStyle.ReadOnly = false;
            this.view_produit.ThemeStyle.RowsStyle.BackColor = System.Drawing.Color.White;
            this.view_produit.ThemeStyle.RowsStyle.BorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.view_produit.ThemeStyle.RowsStyle.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.view_produit.ThemeStyle.RowsStyle.ForeColor = System.Drawing.Color.Black;
            this.view_produit.ThemeStyle.RowsStyle.Height = 24;
            this.view_produit.ThemeStyle.RowsStyle.SelectionBackColor = System.Drawing.Color.White;
            this.view_produit.ThemeStyle.RowsStyle.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            this.view_produit.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gunaDataGrid_View_produit);
            // 
            // ADDD
            // 
            this.ADDD.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.ADDD.Font = new System.Drawing.Font("MS Reference Sans Serif", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ADDD.ForeColor = System.Drawing.Color.White;
            this.ADDD.Location = new System.Drawing.Point(6, 343);
            this.ADDD.Name = "ADDD";
            this.ADDD.Size = new System.Drawing.Size(93, 36);
            this.ADDD.TabIndex = 7;
            this.ADDD.Text = "ADD";
            this.ADDD.UseVisualStyleBackColor = false;
            this.ADDD.Click += new System.EventHandler(this.ADD_Click);
            // 
            // button4
            // 
            this.button4.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.button4.Font = new System.Drawing.Font("MS Reference Sans Serif", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.ForeColor = System.Drawing.Color.White;
            this.button4.Location = new System.Drawing.Point(135, 397);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(93, 36);
            this.button4.TabIndex = 7;
            this.button4.Text = "HOME";
            this.button4.UseVisualStyleBackColor = false;
            this.button4.Click += new System.EventHandler(this.home_Click);
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.button2.Font = new System.Drawing.Font("MS Reference Sans Serif", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.ForeColor = System.Drawing.Color.White;
            this.button2.Location = new System.Drawing.Point(280, 343);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(114, 36);
            this.button2.TabIndex = 7;
            this.button2.Text = "DELETE";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button_Delete);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.button1.Font = new System.Drawing.Font("MS Reference Sans Serif", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(135, 343);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(93, 36);
            this.button1.TabIndex = 7;
            this.button1.Text = "EDIT";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.update_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.label12.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.ForeColor = System.Drawing.Color.White;
            this.label12.Location = new System.Drawing.Point(220, 40);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(228, 35);
            this.label12.TabIndex = 5;
            this.label12.Text = "Name_Produit";
            this.label12.Click += new System.EventHandler(this.label_Exit);
            // 
            // p_n
            // 
            this.p_n.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.p_n.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.p_n.ForeColor = System.Drawing.Color.Black;
            this.p_n.HintForeColor = System.Drawing.Color.Empty;
            this.p_n.HintText = "";
            this.p_n.isPassword = false;
            this.p_n.LineFocusedColor = System.Drawing.Color.Brown;
            this.p_n.LineIdleColor = System.Drawing.Color.Black;
            this.p_n.LineMouseHoverColor = System.Drawing.Color.Brown;
            this.p_n.LineThickness = 4;
            this.p_n.Location = new System.Drawing.Point(223, 73);
            this.p_n.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.p_n.Name = "p_n";
            this.p_n.Size = new System.Drawing.Size(209, 35);
            this.p_n.TabIndex = 4;
            this.p_n.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.p_n.OnValueChanged += new System.EventHandler(this.bunifuMaterialTextbox1_OnValueChanged_1);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.label9.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.ForeColor = System.Drawing.Color.White;
            this.label9.Location = new System.Drawing.Point(3, 255);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(188, 35);
            this.label9.TabIndex = 5;
            this.label9.Text = "Description";
            this.label9.Click += new System.EventHandler(this.label_Exit);
            // 
            // p_d
            // 
            this.p_d.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.p_d.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.p_d.ForeColor = System.Drawing.Color.Black;
            this.p_d.HintForeColor = System.Drawing.Color.Empty;
            this.p_d.HintText = "";
            this.p_d.isPassword = false;
            this.p_d.LineFocusedColor = System.Drawing.Color.Brown;
            this.p_d.LineIdleColor = System.Drawing.Color.Black;
            this.p_d.LineMouseHoverColor = System.Drawing.Color.Brown;
            this.p_d.LineThickness = 4;
            this.p_d.Location = new System.Drawing.Point(6, 288);
            this.p_d.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.p_d.Name = "p_d";
            this.p_d.Size = new System.Drawing.Size(367, 35);
            this.p_d.TabIndex = 4;
            this.p_d.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.p_d.OnValueChanged += new System.EventHandler(this.bunifuMaterialTextbox1_OnValueChanged_1);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.label11.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.ForeColor = System.Drawing.Color.White;
            this.label11.Location = new System.Drawing.Point(188, 153);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(245, 35);
            this.label11.TabIndex = 5;
            this.label11.Text = "Quantity_stock";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.label10.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.ForeColor = System.Drawing.Color.White;
            this.label10.Location = new System.Drawing.Point(10, 153);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(90, 35);
            this.label10.TabIndex = 5;
            this.label10.Text = "Price";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.label8.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.Color.White;
            this.label8.Location = new System.Drawing.Point(3, 40);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(209, 35);
            this.label8.TabIndex = 5;
            this.label8.Text = "PRODUIT_ID";
            // 
            // p_q
            // 
            this.p_q.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.p_q.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.p_q.ForeColor = System.Drawing.Color.Black;
            this.p_q.HintForeColor = System.Drawing.Color.Empty;
            this.p_q.HintText = "";
            this.p_q.isPassword = false;
            this.p_q.LineFocusedColor = System.Drawing.Color.Brown;
            this.p_q.LineIdleColor = System.Drawing.Color.Black;
            this.p_q.LineMouseHoverColor = System.Drawing.Color.Brown;
            this.p_q.LineThickness = 4;
            this.p_q.Location = new System.Drawing.Point(204, 195);
            this.p_q.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.p_q.Name = "p_q";
            this.p_q.Size = new System.Drawing.Size(169, 35);
            this.p_q.TabIndex = 4;
            this.p_q.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.p_q.OnValueChanged += new System.EventHandler(this.p_id_OnValueChanged);
            // 
            // p_p
            // 
            this.p_p.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.p_p.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.p_p.ForeColor = System.Drawing.Color.Black;
            this.p_p.HintForeColor = System.Drawing.Color.Empty;
            this.p_p.HintText = "";
            this.p_p.isPassword = false;
            this.p_p.LineFocusedColor = System.Drawing.Color.Brown;
            this.p_p.LineIdleColor = System.Drawing.Color.Black;
            this.p_p.LineMouseHoverColor = System.Drawing.Color.Brown;
            this.p_p.LineThickness = 4;
            this.p_p.Location = new System.Drawing.Point(0, 195);
            this.p_p.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.p_p.Name = "p_p";
            this.p_p.Size = new System.Drawing.Size(169, 35);
            this.p_p.TabIndex = 4;
            this.p_p.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.p_p.OnValueChanged += new System.EventHandler(this.p_id_OnValueChanged);
            // 
            // p_id
            // 
            this.p_id.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.p_id.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.p_id.ForeColor = System.Drawing.Color.Black;
            this.p_id.HintForeColor = System.Drawing.Color.Empty;
            this.p_id.HintText = "";
            this.p_id.isPassword = false;
            this.p_id.LineFocusedColor = System.Drawing.Color.Brown;
            this.p_id.LineIdleColor = System.Drawing.Color.Black;
            this.p_id.LineMouseHoverColor = System.Drawing.Color.Brown;
            this.p_id.LineThickness = 4;
            this.p_id.Location = new System.Drawing.Point(6, 73);
            this.p_id.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.p_id.Name = "p_id";
            this.p_id.Size = new System.Drawing.Size(169, 35);
            this.p_id.TabIndex = 4;
            this.p_id.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.p_id.OnValueChanged += new System.EventHandler(this.p_id_OnValueChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("MS Reference Sans Serif", 16.2F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(105, 47);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(291, 40);
            this.label6.TabIndex = 3;
            this.label6.Text = "Manage Produit";
            this.label6.Click += new System.EventHandler(this.label_produit);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.ForeColor = System.Drawing.Color.White;
            this.label13.Location = new System.Drawing.Point(1033, 3);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(39, 35);
            this.label13.TabIndex = 5;
            this.label13.Text = "×";
            this.label13.Click += new System.EventHandler(this.label_Exit);
            // 
            // pictureBox6
            // 
            this.pictureBox6.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox6.Image")));
            this.pictureBox6.Location = new System.Drawing.Point(2, 3);
            this.pictureBox6.Name = "pictureBox6";
            this.pictureBox6.Size = new System.Drawing.Size(97, 79);
            this.pictureBox6.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox6.TabIndex = 2;
            this.pictureBox6.TabStop = false;
            this.pictureBox6.Click += new System.EventHandler(this.picture_produit);
            // 
            // produit
            // 
            this.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.ClientSize = new System.Drawing.Size(1068, 542);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.pictureBox6);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.label13);
            this.ForeColor = System.Drawing.Color.Black;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "produit";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "v";
            this.Load += new System.EventHandler(this.produit_Load_1);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.view_produit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void produit_Load(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }



        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label Price_p;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private Bunifu.Framework.UI.BunifuMaterialTextbox description_p;
        private Bunifu.Framework.UI.BunifuMaterialTextbox Name_p;
        private Bunifu.Framework.UI.BunifuMaterialTextbox Produit_id;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button delet;
        private System.Windows.Forms.Button edit;
        private System.Windows.Forms.Button add;
        private System.Windows.Forms.Button home;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox qantite_p;
        private System.Windows.Forms.ComboBox price;
        private Guna.UI.WinForms.GunaDataGridView gunaDataGridView1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox pictureBox6;
        private Bunifu.Framework.UI.BunifuMaterialTextbox p_id;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label9;
        private Bunifu.Framework.UI.BunifuMaterialTextbox p_d;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button ADDD;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label12;
        private Bunifu.Framework.UI.BunifuMaterialTextbox p_n;
        private Guna.UI.WinForms.GunaDataGridView view_produit;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.BindingSource bindingSource1;
        private Bunifu.Framework.UI.BunifuMaterialTextbox p_q;
        private Bunifu.Framework.UI.BunifuMaterialTextbox p_p;
    }
}