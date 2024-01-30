<%@ Page Title="" Language="C#" MasterPageFile="~/emp.Master" AutoEventWireup="true" CodeBehind="deleteemp.aspx.cs" Inherits="Employee_Management.delegteemp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">
               Select Id To Update Emploee</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id] FROM [emp]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
          <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5">
                <script type="text/javascript">
        function confirmAction() {
            return confirm("Are you sure you want to perform this action?");
        }
    </script>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" OnClientClick="return confirmAction();" Text="Delete Employee" />
                
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <style type="text/css">
        .gridview-border {
            border-collapse: collapse;
            width: 100%;
            border: 1px solid #ddd; /* Border for the entire table */
        }

        .gridview-border th, .gridview-border td {
            border: 1px solid #ddd; /* Border for each cell */
            padding: 8px; /* Add padding for better appearance */
            text-align: left;
        }
    </style>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" CssClass="gridview-border">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [emp]" DeleteCommand="DELETE FROM [emp] WHERE [Id] = @Id" InsertCommand="INSERT INTO [emp] ([name], [email], [mno], [dob], [type]) VALUES (@name, @email, @mno, @dob, @type)" UpdateCommand="UPDATE [emp] SET [name] = @name, [email] = @email, [mno] = @mno, [dob] = @dob, [type] = @type WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mno" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mno" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
