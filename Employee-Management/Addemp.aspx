<%@ Page Title="" Language="C#" MasterPageFile="~/emp.Master" AutoEventWireup="true" CodeBehind="Addemp.aspx.cs" Inherits="Employee_Management.Addemp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 22px;
            width: 255px;
        }
        .auto-style3 {
            width: 255px;
        }
        .auto-style4 {
            height: 22px;
            width: 346px;
        }
        .auto-style5 {
            width: 346px;
        }
        .auto-style6 {
            margin-top: 15;
        }
        .auto-style7 {
            width: 255px;
            height: 26px;
        }
        .auto-style8 {
            width: 346px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
     <script type="text/javascript">
        function disableFirstOption() {
            // Disable the first option after the page loads
            var ddl = document.getElementById('<%= DropDownList1.ClientID %>');
            ddl.options[0].disabled = true;
        }
    </script>
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
                
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Employee" />
                
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
