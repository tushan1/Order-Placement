<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Order_Placement_System.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>

</head>
<body style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/76.webp');height: 100vh;">
  
        <!--navigation -->
        <form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="orderPage.aspx">Order</a>
      </li>
    </ul>
    <div class="form-inline my-2 my-lg-0">
      <asp:Label ID="usernameLbl" ForeColor="White" runat="server" Text="username"></asp:Label>&nbsp;&nbsp;
        <asp:Button  class="btn btn-outline-danger my-2 my-sm-0" ID="logoutBtn" runat="server" Text="Logout" OnClick="logoutBtn_Click" />
    </div>
      
  </div>
</nav>

    <!--Table/Gridview -->

        
        <div class="mt-5">
            <asp:GridView ID="ordersGridView" runat="server" class="table table-sm table-dark" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Username" HeaderText="Username" />
                    <asp:BoundField DataField="Package1" HeaderText="Package 1" />
                    <asp:BoundField DataField="Package2" HeaderText="Package 2" />
                    <asp:BoundField DataField="Package3" HeaderText="Package 3" />
                    <asp:BoundField DataField="Total" HeaderText="Total" />
                    <asp:BoundField DataField="DateTime" HeaderText="Date Time" />
                </Columns>

            </asp:GridView>
        </div>
    </form>  
  

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
