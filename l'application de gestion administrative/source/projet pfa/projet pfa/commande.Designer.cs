namespace projet_pfa
{
    partial class commande
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panel2 = new System.Windows.Forms.Panel();
            this.view_commande = new Guna.UI.WinForms.GunaDataGridView();
            this.label6 = new System.Windows.Forms.Label();
            this.A = new System.Windows.Forms.Button();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.view_commande)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.Control;
            this.panel2.Controls.Add(this.view_commande);
            this.panel2.Location = new System.Drawing.Point(1, 68);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1063, 477);
            this.panel2.TabIndex = 1;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint_1);
            // 
            // view_commande
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.White;
            this.view_commande.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.view_commande.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.view_commande.BackgroundColor = System.Drawing.SystemColors.Control;
            this.view_commande.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.view_commande.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.view_commande.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.MenuHighlight;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.view_commande.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.view_commande.ColumnHeadersHeight = 25;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.view_commande.DefaultCellStyle = dataGridViewCellStyle3;
            this.view_commande.EnableHeadersVisualStyles = false;
            this.view_commande.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.view_commande.Location = new System.Drawing.Point(3, 3);
            this.view_commande.Name = "view_commande";
            this.view_commande.RowHeadersVisible = false;
            this.view_commande.RowHeadersWidth = 51;
            this.view_commande.RowTemplate.Height = 24;
            this.view_commande.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.view_commande.Size = new System.Drawing.Size(1048, 398);
            this.view_commande.TabIndex = 8;
            this.view_commande.Theme = Guna.UI.WinForms.GunaDataGridViewPresetThemes.Guna;
            this.view_commande.ThemeStyle.AlternatingRowsStyle.BackColor = System.Drawing.Color.White;
            this.view_commande.ThemeStyle.AlternatingRowsStyle.Font = null;
            this.view_commande.ThemeStyle.AlternatingRowsStyle.ForeColor = System.Drawing.Color.Empty;
            this.view_commande.ThemeStyle.AlternatingRowsStyle.SelectionBackColor = System.Drawing.Color.Empty;
            this.view_commande.ThemeStyle.AlternatingRowsStyle.SelectionForeColor = System.Drawing.Color.Empty;
            this.view_commande.ThemeStyle.BackColor = System.Drawing.SystemColors.Control;
            this.view_commande.ThemeStyle.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.view_commande.ThemeStyle.HeaderStyle.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.view_commande.ThemeStyle.HeaderStyle.BorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.view_commande.ThemeStyle.HeaderStyle.Font = new System.Drawing.Font("MS Reference Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.view_commande.ThemeStyle.HeaderStyle.ForeColor = System.Drawing.Color.Black;
            this.view_commande.ThemeStyle.HeaderStyle.HeaightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            this.view_commande.ThemeStyle.HeaderStyle.Height = 25;
            this.view_commande.ThemeStyle.ReadOnly = false;
            this.view_commande.ThemeStyle.RowsStyle.BackColor = System.Drawing.Color.White;
            this.view_commande.ThemeStyle.RowsStyle.BorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.view_commande.ThemeStyle.RowsStyle.Font = new System.Drawing.Font("MS Reference Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.view_commande.ThemeStyle.RowsStyle.ForeColor = System.Drawing.Color.Black;
            this.view_commande.ThemeStyle.RowsStyle.Height = 24;
            this.view_commande.ThemeStyle.RowsStyle.SelectionBackColor = System.Drawing.Color.White;
            this.view_commande.ThemeStyle.RowsStyle.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            this.view_commande.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.view_produit_CellContentClick);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("MS Reference Sans Serif", 16.2F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(4, 28);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(365, 40);
            this.label6.TabIndex = 4;
            this.label6.Text = "Tableau Commande";
            // 
            // A
            // 
            this.A.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.A.Font = new System.Drawing.Font("MS Reference Sans Serif", 16F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.A.ForeColor = System.Drawing.Color.White;
            this.A.Location = new System.Drawing.Point(971, 2);
            this.A.Name = "A";
            this.A.Size = new System.Drawing.Size(93, 60);
            this.A.TabIndex = 8;
            this.A.Text = "←";
            this.A.UseVisualStyleBackColor = false;
            this.A.Click += new System.EventHandler(this.A_Click);
            // 
            // commande
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.ClientSize = new System.Drawing.Size(1065, 542);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.A);
            this.Controls.Add(this.panel2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "commande";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "commande";
            this.Load += new System.EventHandler(this.commande_Load);
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.view_commande)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private Guna.UI.WinForms.GunaDataGridView view_commande;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button A;
    }
}