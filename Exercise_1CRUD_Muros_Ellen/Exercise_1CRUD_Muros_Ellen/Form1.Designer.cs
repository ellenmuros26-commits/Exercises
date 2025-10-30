namespace FourPs_Information_System
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label1 = new Label();
            btnRead = new Button();
            btnDelete = new Button();
            btnUpdate = new Button();
            lblAllowance = new Label();
            txtAllowance = new TextBox();
            lblProvince = new Label();
            lblMunicipality = new Label();
            lblBarangay = new Label();
            label3 = new Label();
            lblGender = new Label();
            cmbGender = new ComboBox();
            txtProvince = new TextBox();
            btnCreate = new Button();
            txtMunicipality = new TextBox();
            txtBarangay = new TextBox();
            txtAge = new TextBox();
            txtFullname = new TextBox();
            lblFullname = new Label();
            dataGridView1 = new DataGridView();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Lucida Bright", 19.8000011F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(253, 49);
            label1.Name = "label1";
            label1.Size = new Size(430, 39);
            label1.TabIndex = 65;
            label1.Text = "4Ps Information System";
            // 
            // btnRead
            // 
            btnRead.Font = new Font("Century Gothic", 16.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnRead.Location = new Point(345, 485);
            btnRead.Name = "btnRead";
            btnRead.Size = new Size(134, 42);
            btnRead.TabIndex = 64;
            btnRead.Text = "Read";
            btnRead.UseVisualStyleBackColor = true;
            btnRead.Click += btnRead_Click_1;
            // 
            // btnDelete
            // 
            btnDelete.Font = new Font("Century Gothic", 16.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnDelete.Location = new Point(625, 485);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(134, 42);
            btnDelete.TabIndex = 63;
            btnDelete.Text = "Delete";
            btnDelete.UseVisualStyleBackColor = true;
            btnDelete.Click += btnDelete_Click_1;
            // 
            // btnUpdate
            // 
            btnUpdate.Font = new Font("Century Gothic", 16.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnUpdate.Location = new Point(485, 485);
            btnUpdate.Name = "btnUpdate";
            btnUpdate.Size = new Size(134, 42);
            btnUpdate.TabIndex = 62;
            btnUpdate.Text = "Update";
            btnUpdate.UseVisualStyleBackColor = true;
            btnUpdate.Click += btnUpdate_Click_1;
            // 
            // lblAllowance
            // 
            lblAllowance.AutoSize = true;
            lblAllowance.Font = new Font("Georgia", 15F);
            lblAllowance.Location = new Point(179, 432);
            lblAllowance.Name = "lblAllowance";
            lblAllowance.Size = new Size(234, 30);
            lblAllowance.TabIndex = 61;
            lblAllowance.Text = "Monthly Allowance:";
            // 
            // txtAllowance
            // 
            txtAllowance.Font = new Font("Georgia", 15F);
            txtAllowance.Location = new Point(419, 426);
            txtAllowance.Name = "txtAllowance";
            txtAllowance.Size = new Size(297, 36);
            txtAllowance.TabIndex = 60;
            // 
            // lblProvince
            // 
            lblProvince.AutoSize = true;
            lblProvince.Font = new Font("Georgia", 15F);
            lblProvince.Location = new Point(297, 387);
            lblProvince.Name = "lblProvince";
            lblProvince.Size = new Size(116, 30);
            lblProvince.TabIndex = 59;
            lblProvince.Text = "Province:";
            // 
            // lblMunicipality
            // 
            lblMunicipality.AutoSize = true;
            lblMunicipality.Font = new Font("Georgia", 15F);
            lblMunicipality.Location = new Point(253, 342);
            lblMunicipality.Name = "lblMunicipality";
            lblMunicipality.Size = new Size(160, 30);
            lblMunicipality.TabIndex = 58;
            lblMunicipality.Text = "Municipality:";
            // 
            // lblBarangay
            // 
            lblBarangay.AutoSize = true;
            lblBarangay.Font = new Font("Georgia", 15F);
            lblBarangay.Location = new Point(287, 300);
            lblBarangay.Name = "lblBarangay";
            lblBarangay.Size = new Size(126, 30);
            lblBarangay.TabIndex = 57;
            lblBarangay.Text = "Barangay:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Georgia", 15F);
            label3.Location = new Point(350, 258);
            label3.Name = "label3";
            label3.Size = new Size(63, 30);
            label3.TabIndex = 56;
            label3.Text = "Age:";
            // 
            // lblGender
            // 
            lblGender.AutoSize = true;
            lblGender.Font = new Font("Georgia", 15F);
            lblGender.Location = new Point(311, 214);
            lblGender.Name = "lblGender";
            lblGender.Size = new Size(102, 30);
            lblGender.TabIndex = 55;
            lblGender.Text = "Gender:";
            // 
            // cmbGender
            // 
            cmbGender.Font = new Font("Georgia", 15F);
            cmbGender.FormattingEnabled = true;
            cmbGender.Items.AddRange(new object[] { "Male", "Female" });
            cmbGender.Location = new Point(419, 211);
            cmbGender.Name = "cmbGender";
            cmbGender.Size = new Size(151, 38);
            cmbGender.TabIndex = 54;
            // 
            // txtProvince
            // 
            txtProvince.Font = new Font("Georgia", 15F);
            txtProvince.Location = new Point(419, 384);
            txtProvince.Name = "txtProvince";
            txtProvince.Size = new Size(297, 36);
            txtProvince.TabIndex = 53;
            // 
            // btnCreate
            // 
            btnCreate.Font = new Font("Century Gothic", 16.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnCreate.Location = new Point(205, 485);
            btnCreate.Name = "btnCreate";
            btnCreate.Size = new Size(134, 42);
            btnCreate.TabIndex = 52;
            btnCreate.Text = "Add";
            btnCreate.UseVisualStyleBackColor = true;
            btnCreate.Click += btnCreate_Click_1;
            // 
            // txtMunicipality
            // 
            txtMunicipality.Font = new Font("Georgia", 15F);
            txtMunicipality.Location = new Point(419, 339);
            txtMunicipality.Name = "txtMunicipality";
            txtMunicipality.Size = new Size(297, 36);
            txtMunicipality.TabIndex = 51;
            // 
            // txtBarangay
            // 
            txtBarangay.Font = new Font("Georgia", 15F);
            txtBarangay.Location = new Point(419, 297);
            txtBarangay.Name = "txtBarangay";
            txtBarangay.Size = new Size(297, 36);
            txtBarangay.TabIndex = 50;
            // 
            // txtAge
            // 
            txtAge.Font = new Font("Georgia", 15F);
            txtAge.Location = new Point(419, 255);
            txtAge.Name = "txtAge";
            txtAge.Size = new Size(297, 36);
            txtAge.TabIndex = 49;
            // 
            // txtFullname
            // 
            txtFullname.Font = new Font("Georgia", 15F);
            txtFullname.Location = new Point(419, 169);
            txtFullname.Name = "txtFullname";
            txtFullname.Size = new Size(297, 36);
            txtFullname.TabIndex = 48;
            // 
            // lblFullname
            // 
            lblFullname.AutoSize = true;
            lblFullname.Font = new Font("Georgia", 15F);
            lblFullname.Location = new Point(277, 175);
            lblFullname.Name = "lblFullname";
            lblFullname.Size = new Size(136, 30);
            lblFullname.TabIndex = 47;
            lblFullname.Text = "Full Name:";
            // 
            // dataGridView1
            // 
            dataGridView1.BackgroundColor = SystemColors.Control;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(37, 539);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 51;
            dataGridView1.Size = new Size(909, 427);
            dataGridView1.TabIndex = 46;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.AntiqueWhite;
            ClientSize = new Size(987, 857);
            Controls.Add(label1);
            Controls.Add(btnRead);
            Controls.Add(btnDelete);
            Controls.Add(btnUpdate);
            Controls.Add(lblAllowance);
            Controls.Add(txtAllowance);
            Controls.Add(lblProvince);
            Controls.Add(lblMunicipality);
            Controls.Add(lblBarangay);
            Controls.Add(label3);
            Controls.Add(lblGender);
            Controls.Add(cmbGender);
            Controls.Add(txtProvince);
            Controls.Add(btnCreate);
            Controls.Add(txtMunicipality);
            Controls.Add(txtBarangay);
            Controls.Add(txtAge);
            Controls.Add(txtFullname);
            Controls.Add(lblFullname);
            Controls.Add(dataGridView1);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Button btnRead;
        private Button btnDelete;
        private Button btnUpdate;
        private Label lblAllowance;
        private TextBox txtAllowance;
        private Label lblProvince;
        private Label lblMunicipality;
        private Label lblBarangay;
        private Label label3;
        private Label lblGender;
        private ComboBox cmbGender;
        private TextBox txtProvince;
        private Button btnCreate;
        private TextBox txtMunicipality;
        private TextBox txtBarangay;
        private TextBox txtAge;
        private TextBox txtFullname;
        private Label lblFullname;
        private DataGridView dataGridView1;
    }
}
