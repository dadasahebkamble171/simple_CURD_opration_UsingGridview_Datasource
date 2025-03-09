<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resgister_form.aspx.cs" Inherits="simple_CURD_opration_UsingGridview_Datasource.resgister_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CURD Operation simple</title>
    <style type="text/css">
        .auto-style1 {
            width: 453px;
            height: 202px;
            position: absolute;
            top: 146px;
            left: 650px;
            z-index: 1;
            margin-right: 17px;
            margin-bottom: 78px;
        }
        .auto-style2 {
            position: absolute;
            top: 66px;
            left: 676px;
            z-index: 1;
            width: 342px;
        }
        .auto-style3 {
            position: absolute;
            top: 170px;
            left: 46px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 243px;
            left: 43px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 321px;
            left: 39px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 173px;
            left: 199px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 245px;
            left: 198px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 320px;
            left: 192px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 398px;
            left: 121px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style1" DataKeyNames="Emp_Id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Emp_Id" HeaderText="Emp_Id" ReadOnly="True" SortExpression="Emp_Id" />
                <asp:BoundField DataField="Emp_Name" HeaderText="Emp_Name" SortExpression="Emp_Name" />
                <asp:BoundField DataField="Emp_Salary" HeaderText="Emp_Salary" SortExpression="Emp_Salary" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:simple_curd_dbConnectionString %>" DeleteCommand="DELETE FROM [Emp_Curd] WHERE [Emp_Id] = @original_Emp_Id AND (([Emp_Name] = @original_Emp_Name) OR ([Emp_Name] IS NULL AND @original_Emp_Name IS NULL)) AND (([Emp_Salary] = @original_Emp_Salary) OR ([Emp_Salary] IS NULL AND @original_Emp_Salary IS NULL))" InsertCommand="INSERT INTO [Emp_Curd] ([Emp_Id], [Emp_Name], [Emp_Salary]) VALUES (@Emp_Id, @Emp_Name, @Emp_Salary)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:simple_curd_dbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Emp_Curd]" UpdateCommand="UPDATE [Emp_Curd] SET [Emp_Name] = @Emp_Name, [Emp_Salary] = @Emp_Salary WHERE [Emp_Id] = @original_Emp_Id AND (([Emp_Name] = @original_Emp_Name) OR ([Emp_Name] IS NULL AND @original_Emp_Name IS NULL)) AND (([Emp_Salary] = @original_Emp_Salary) OR ([Emp_Salary] IS NULL AND @original_Emp_Salary IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Emp_Id" Type="Int32" />
                <asp:Parameter Name="original_Emp_Name" Type="String" />
                <asp:Parameter Name="original_Emp_Salary" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Emp_Id" Type="Int32" />
                <asp:Parameter Name="Emp_Name" Type="String" />
                <asp:Parameter Name="Emp_Salary" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Emp_Name" Type="String" />
                <asp:Parameter Name="Emp_Salary" Type="Int32" />
                <asp:Parameter Name="original_Emp_Id" Type="Int32" />
                <asp:Parameter Name="original_Emp_Name" Type="String" />
                <asp:Parameter Name="original_Emp_Salary" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Emp_id"></asp:Label>
        <asp:Button ID="btn_insrt" runat="server" BackColor="#3333CC" CssClass="auto-style9" Font-Bold="True" ForeColor="White" OnClick="btn_insrt_Click" Text="INSERT" />
        <asp:TextBox ID="txt_salary" runat="server" CssClass="auto-style8"></asp:TextBox>
        <asp:TextBox ID="txt_name" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:TextBox ID="txt_id" runat="server" CssClass="auto-style6"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Emp_Salary"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Emp_Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#CC0066" BorderStyle="Solid" CssClass="auto-style2" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF0066">Simple CURD Operation</asp:TextBox>
    </form>
</body>
</html>
