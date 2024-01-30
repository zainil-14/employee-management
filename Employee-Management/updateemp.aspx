<%@ Page Title="" Language="C#" MasterPageFile="~/emp.Master" AutoEventWireup="true" CodeBehind="updateemp.aspx.cs" Inherits="Employee_Management.updateemp" %>
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
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Employee Name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="234px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Email Id</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="234px"></asp:TextBox>
            </td>
            <td>
              <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Proper Mail Address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">Mobile No:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" Width="234px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Date Of Birth:(YYYY-MM-DD)</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server" Width="229px"></asp:TextBox>
            </td>
            <td>
                 <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                 <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Check Eligiblity" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Employee Type:</td>
            <td class="auto-style8">
               
                <asp:DropDownList ID="DropDownList1" runat="server" Width="173px">
                    <asp:ListItem Text="-- Select Type --" Value="" />
                    <asp:ListItem>Full Time</asp:ListItem>
                    <asp:ListItem>Part Time</asp:ListItem>
                    <asp:ListItem>Remote</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style9"></td>
        </tr>
          <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5">
                
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update Employee" />
                
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
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [emp]"></asp:SqlDataSource>
</asp:Content>
