using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InstrumentoMusical
{
    public partial class FormMusical : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadGrid();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            instrumeto inst = new instrumeto()
            {
                nome = txtNome.Text,
                tipo = txtTipo.Text,
                familia = txtFamilia.Text,
                dataFabricacao = Convert.ToDateTime(txtDtFabricacao.Text)
            };

            MusicalEntities context = new MusicalEntities();

            context.instrumeto.Add(inst);
            context.SaveChanges();

            loadGrid();
        }

        private void loadGrid() {
            MusicalEntities context = new MusicalEntities();
            List<instrumeto> lstIstrumento = context.instrumeto.ToList<instrumeto>();

            gridInst.DataSource = lstIstrumento;
            gridInst.DataBind();
        }

    
    }
}