using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Globalization;

namespace FourPs_Information_System
{
    public partial class Form1 : Form
    {
        MySqlConnection conn = new MySqlConnection("server=localhost;database=fourps_db;username=root;password=root;");

        public Form1()
        {
            InitializeComponent();


            txtFullname.TextChanged += CapitalizeFirstLetter;
            txtBarangay.TextChanged += CapitalizeFirstLetter;
            txtMunicipality.TextChanged += CapitalizeFirstLetter;
            txtProvince.TextChanged += CapitalizeFirstLetter;


            txtFullname.KeyDown += MoveNextOnEnter;
            cmbGender.KeyDown += MoveNextOnEnter;
            txtAge.KeyDown += MoveNextOnEnter;
            txtBarangay.KeyDown += MoveNextOnEnter;
            txtMunicipality.KeyDown += MoveNextOnEnter;
            txtProvince.KeyDown += MoveNextOnEnter;
            txtAllowance.KeyDown += MoveNextOnEnter;
        }


        private void CapitalizeFirstLetter(object sender, EventArgs e)
        {
            TextBox txt = sender as TextBox;
            if (txt == null) return;

            int cursorPosition = txt.SelectionStart;
            string text = txt.Text;

            if (!string.IsNullOrEmpty(text))
            {
                text = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(text.ToLower());
                txt.Text = text;
                txt.SelectionStart = cursorPosition;
            }
        }


        private void MoveNextOnEnter(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                e.SuppressKeyPress = true;
                this.SelectNextControl((Control)sender, true, true, true, true);
            }
        }


        private void btnRead_Click_1(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT * FROM beneficiaries", conn);
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                dataGridView1.DataSource = dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }


        private void btnCreate_Click_1(object sender, EventArgs e)
        {
            if (!decimal.TryParse(txtAllowance.Text, out decimal allowance) ||
                !int.TryParse(txtAge.Text, out int age))
            {
                MessageBox.Show("Please enter valid numbers for Age and Monthly Allowance.");
                return;
            }

            try
            {
                conn.Open();
                string query = "INSERT INTO beneficiaries (fullname, gender, age, barangay, municipality, province, monthly_allowance) " +
                               "VALUES (@fullname, @gender, @age, @barangay, @municipality, @province, @monthly_allowance)";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@fullname", txtFullname.Text);
                cmd.Parameters.AddWithValue("@gender", cmbGender.Text);
                cmd.Parameters.AddWithValue("@age", age);
                cmd.Parameters.AddWithValue("@barangay", txtBarangay.Text);
                cmd.Parameters.AddWithValue("@municipality", txtMunicipality.Text);
                cmd.Parameters.AddWithValue("@province", txtProvince.Text);
                cmd.Parameters.AddWithValue("@monthly_allowance", allowance);
                cmd.ExecuteNonQuery();

                MessageBox.Show("Record Added Successfully!");
                btnRead_Click_1(sender, e);
                ClearFields();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        private void btnUpdate_Click_1(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
            {
                MessageBox.Show("Please select a record to update.");
                return;
            }

            if (!decimal.TryParse(txtAllowance.Text, out decimal allowance) ||
                !int.TryParse(txtAge.Text, out int age))
            {
                MessageBox.Show("Please enter valid numbers for Age and Monthly Allowance.");
                return;
            }

            int id = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells["id"].Value);

            try
            {
                conn.Open();
                string query = "UPDATE beneficiaries SET fullname=@fullname, gender=@gender, age=@age, barangay=@barangay, municipality=@municipality, province=@province, monthly_allowance=@monthly_allowance WHERE id=@id";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@fullname", txtFullname.Text);
                cmd.Parameters.AddWithValue("@gender", cmbGender.Text);
                cmd.Parameters.AddWithValue("@age", age);
                cmd.Parameters.AddWithValue("@barangay", txtBarangay.Text);
                cmd.Parameters.AddWithValue("@municipality", txtMunicipality.Text);
                cmd.Parameters.AddWithValue("@province", txtProvince.Text);
                cmd.Parameters.AddWithValue("@monthly_allowance", allowance);
                cmd.ExecuteNonQuery();

                MessageBox.Show("Record Updated Successfully!");
                btnRead_Click_1(sender, e);
                ClearFields();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }


        private void btnDelete_Click_1(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
            {
                MessageBox.Show("Please select a record to delete.");
                return;
            }

            int id = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells["id"].Value);

            try
            {
                conn.Open();
                string query = "DELETE FROM beneficiaries WHERE id=@id";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();

                MessageBox.Show("Record Deleted Successfully!");
                btnRead_Click_1(sender, e);
                ClearFields();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                txtFullname.Text = dataGridView1.Rows[e.RowIndex].Cells["fullname"].Value.ToString();
                cmbGender.Text = dataGridView1.Rows[e.RowIndex].Cells["gender"].Value.ToString();
                txtAge.Text = dataGridView1.Rows[e.RowIndex].Cells["age"].Value.ToString();
                txtBarangay.Text = dataGridView1.Rows[e.RowIndex].Cells["barangay"].Value.ToString();
                txtMunicipality.Text = dataGridView1.Rows[e.RowIndex].Cells["municipality"].Value.ToString();
                txtProvince.Text = dataGridView1.Rows[e.RowIndex].Cells["province"].Value.ToString();
                txtAllowance.Text = dataGridView1.Rows[e.RowIndex].Cells["monthly_allowance"].Value.ToString();
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            cmbGender.Items.Add("Male");
            cmbGender.Items.Add("Female");
            btnRead_Click_1(sender, e);
        }

        private void ClearFields()
        {
            txtFullname.Clear();
            cmbGender.SelectedIndex = -1;
            txtAge.Clear();
            txtBarangay.Clear();
            txtMunicipality.Clear();
            txtProvince.Clear();
            txtAllowance.Clear();
        }

        
    }
}
