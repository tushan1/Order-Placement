<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderPage.aspx.cs" Inherits="Order_Placement_System.orderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>

</head>
<body style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/76.webp');height: 100vh;">

        <form id="form1" runat="server">
               <!--navigation -->

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="dashboard.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Order</a>
      </li>
    </ul>
    <div class="form-inline my-2 my-lg-0">
      <asp:Label ID="usernameLbl" ForeColor="White" runat="server" Text="username"></asp:Label>&nbsp;&nbsp;
        <asp:Button  class="btn btn-outline-danger my-2 my-sm-0" ID="logoutBtn" runat="server" Text="Logout" OnClick="logoutBtn_Click" />
    </div>
      
  </div>
</nav>
<br /><br />

            <!--TABLE -->
            <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Package</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Sub Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1 <asp:CheckBox ID="CheckBox1" runat="server" /> </th>
      <td>Rs:250</td>
      <td><asp:TextBox ID="packageOneQty" runat="server" OnTextChanged="packageOneQty_TextChanged"></asp:TextBox></td>
     <td><asp:TextBox ID="packageOneSubTotal" runat="server" ></asp:TextBox></td>
    </tr>
    <tr>
      <th scope="row">2 <asp:CheckBox ID="CheckBox2" runat="server" /></th>
       <td>Rs:350</td>
      <td><asp:TextBox ID="packageTwoQty" runat="server" OnTextChanged="packageTwoQty_TextChanged"></asp:TextBox></td>
        <td><asp:TextBox ID="packageTwoSubTotal" runat="server" ></asp:TextBox></td>
      
    </tr>
    <tr>
      <th scope="row">3 <asp:CheckBox ID="CheckBox3" runat="server" /></th>
        <td>Rs:500</td>
        <td><asp:TextBox ID="packageThreeQty" runat="server" OnTextChanged="packageThreeQty_TextChanged"></asp:TextBox></td>
      <td><asp:TextBox ID="packageThreeSubTotal" runat="server" ></asp:TextBox></td>
    </tr>
  </tbody>
    </table>

      <asp:Label ID="Label1" runat="server" Text="Total:"></asp:Label>
            <asp:TextBox ID="TotalBox"  runat="server"></asp:TextBox>
            <asp:Button ID="generateTotalBtn" runat="server" Text="Generate Total" OnClick="generateTotalBtn_Click"  />
            <asp:Button ID="placeOrder" runat="server" Text="Place order" OnClick="placeOrder_Click" />

    </form>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
