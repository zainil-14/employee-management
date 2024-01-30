<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Employee_Management.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/styles.min.css" rel="stylesheet" />
    <link href="css/icons/tabler-icons/tabler-icons.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <div
      class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
      <div class="d-flex align-items-center justify-content-center w-100">
        <div class="row justify-content-center w-100">
          <div class="col-md-8 col-lg-6 col-xxl-3">
            <div class="card mb-0">
              <div class="card-body">
                <a href="./index.html" class="text-nowrap logo-img text-center d-block py-3 w-100">
                  <img src="images/backgrounds/logo.png" width="180" alt="">
                </a>
               
                
                  <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Username</label>
                  
                      <br />
                <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="mb-4">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    
                      <br />
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="d-flex align-items-center justify-content-between mb-4">
                    
                    <a class="text-primary fw-bold" href="./index.html">Forgot Password ?</a>
                  </div>
                  
                <asp:Button ID="Button1" runat="server" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2" Text="Sign In" OnClick="Button1_Click" />
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        </div>
        
    </form>
</body>
</html>
