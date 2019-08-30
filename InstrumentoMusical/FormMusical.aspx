<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormMusical.aspx.cs" Inherits="InstrumentoMusical.FormMusical" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 168px;
        }
        .auto-style2 {
            margin-left: 16px;
        }
        .auto-style3 {
            margin-left: 6px;
        }
        .auto-style4 {
            height: 192px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divCadastroInst" class="auto-style1">
           <label style="font-style: italic">Cadastro de Instrumentos</label>
            <br />
            <label>Nome: </label>
            <asp:TextBox runat="server"  ID="txtNome" CssClass="auto-style3" Width="126px"/> 
             <br />
            <label>Tipo: </label>
            <asp:TextBox runat="server"  ID="txtTipo" CssClass="auto-style2" Width="127px"/>
             <br />
            <label>Família: </label>
            <asp:TextBox runat="server"  ID="txtFamilia" Width="125px"/>
             <br />
            <label>Data Fabricação: </label>
            <asp:TextBox runat="server"  ID="txtDtFabricacao"/> 
             <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
             <br />
        </div>
        <div id="divTabelaDados" class="auto-style4">

            <asp:GridView ID="gridInst" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" >
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
