using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using System.Windows.Forms;

namespace EF
{
    public partial class mainForm : Form
    {
        public mainForm()
        {
            InitializeComponent();
        }

        public static void DBcheck()
        {
        
        }

        private void btnGenerate_Click(object sender, EventArgs e)
        {
            try
            {
                
                string connectionString = ConfigurationManager.ConnectionStrings["DataModel"].ConnectionString;
                string queryPath = ConfigurationManager.ConnectionStrings["SchemaSQL"].ConnectionString;

                DataModel context = new DataModel();
                bool exists = context.Database
                     .SqlQuery<int?>(@"
                         SELECT 1 FROM sys.tables AS T
                         INNER JOIN sys.schemas AS S ON T.schema_id = S.schema_id
                         WHERE S.Name = 'dbo' AND T.Name = 'Messages'")
                     .SingleOrDefault() != null;

                if (!exists)
                {
                    var fileData = File.ReadAllText(queryPath);
                    var queryData = fileData.Split(new[] {"GO"}, StringSplitOptions.RemoveEmptyEntries);

                    var con = new SqlConnection(connectionString);
                    var cmd = new SqlCommand("query", con);

                    con.Open();
                    foreach (var query in queryData)
                    {
                        cmd.CommandText = query;
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                    MessageBox.Show("Schema created successfully!", "Congratulations message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Schema already created!", "Congratulations message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                } 
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnLoadJSON_Click(object sender, EventArgs e)
        {
            try
            {
                string read = System.IO.File.ReadAllText(ConfigurationManager.ConnectionStrings["MessagesJSON"].ConnectionString);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                List<Messages> msgJSON = new List<Messages>();
                msgJSON = serializer.Deserialize<List<Messages>>(read.ToString());

                using (var ctx = new DataModel())
                {
                    foreach (var obj in msgJSON)
                    {
                        ctx.Messages.Add(obj);
                    }
                    ctx.SaveChanges();
                }
                MessageBox.Show("Data added successfully!", "Congratulations message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnClearData_Click(object sender, EventArgs e)
        {
            try
            {
                string read = System.IO.File.ReadAllText(ConfigurationManager.ConnectionStrings["MessagesJSON"].ConnectionString);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                List<Messages> msgJSON = new List<Messages>();
                msgJSON = serializer.Deserialize<List<Messages>>(read.ToString());

                using (var ctx = new DataModel())
                {
                    foreach (var item in msgJSON)
                    {
                        ctx.Messages.RemoveRange(ctx.Messages.Where(x => x.FromEmail == item.FromEmail.ToString()));
                    }
                    ctx.SaveChanges();
                }
                MessageBox.Show("Data deleted successfully!", "Congratulations message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void messagesBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.messagesBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.testDBDataSet);
        }

        private void mainForm_Load(object sender, EventArgs e)
        {
            this.messagesTableAdapter.Fill(this.testDBDataSet.Messages);
        }

        private void btnGridRefresh_Click(object sender, EventArgs e)
        {
            this.messagesTableAdapter.Fill(this.testDBDataSet.Messages);
        }

        //DONE: Add Entitity Framework and generate DB model from existing (Real DB)
        //DONE: Create SQL file that generates DataBase schema
        //DONE: Create Button on the form that Creates Database from schema from SQL in previous step
        //DONE: Choose one of entities (Messages)
        //DONE: Add button clicking on which you import data from json file to database
        //DONE: Add button that cleanups data added by your code
    }
}
