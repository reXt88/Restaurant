using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Restaurant.ModelData;

namespace Restaurant
{
    public partial class AuthorizationForm : Form
    {
        public AuthorizationForm()
        {
            InitializeComponent();
        }
        public static Workers Enter_workers;

        private void buttonEnter_Click(object sender, EventArgs e)
        {
            Enter_workers = null;
            Model1 model = new Model1();
            Enter_workers = model.Workers.FirstOrDefault(x => x.Login == textBoxLogin.Text && x.Password == textBoxPassword.Text);
            if(Enter_workers != null )
            {
                switch (Enter_workers.RoleID)
                {
                    case 2:
                        MForm menu = new MForm();
                        menu.Show();
                        this.Hide();
                        break;
                    case 4:
                        MForm menuForm = new MForm();
                        menuForm.Show();
                        this.Hide();
                        break;
                    default:
                        MessageBox.Show("Роль не найдена!");
                        break;
                }
            }
        }

    }
}
