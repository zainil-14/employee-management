<%@ Page Title="" Language="C#" MasterPageFile="~/emp.Master" AutoEventWireup="true" CodeBehind="viewemp.aspx.cs" Inherits="Employee_Management.viewemp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" CssClass="gridview-border" AllowSorting="True">
        <Columns>
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
