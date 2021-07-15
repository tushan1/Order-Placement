<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Order_Placement_System.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
	

	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>

	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>

	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>

	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>

</head>
<body>

       <div class="limiter" >
		<div class="container-login100" >
			<div class="wrap-login100">
				
				   <div class="login100-pic js-tilt" data-tilt="">

					    <img src="images/img-01.png" alt="IMG"  class="center" style="margin-top:45%;" />
				    </div>
			   

				<form runat="server" class="login100-form validate-form">
					<span class="login100-form-title">
						Member Registration
					</span>

					<!-- First Name -->

                    <div class="wrap-input100 validate-input" data-validate = "First Name is required">
                        <asp:TextBox ID="firstName" class="input100" placeholder="First Name" type="text"  runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user-circle-o" aria-hidden="true"></i>
						</span>
					</div>

					<!-- Last Name -->

                    <div class="wrap-input100 validate-input" data-validate = "Last Name is required">
						<asp:TextBox ID="lastName" class="input100" placeholder="Last Name" type="text"  runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user-circle" aria-hidden="true"></i>
						</span>
					</div>

					<!-- Email Name -->

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<asp:TextBox ID="email" class="input100" placeholder="Email" type="text"  runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
						
					</div>

					<!-- UserName -->

					<div class="wrap-input100 validate-input" data-validate = "Username is required">
						<asp:TextBox ID="username" class="input100" placeholder="Username" type="text"  runat="server" pattern="^\d{6}$"  title="must be 6 characters"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<!-- Password -->

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<asp:TextBox ID="password" class="input100" placeholder="Password" type="password"  runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<!-- Confirm Password -->

                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
						<asp:TextBox ID="confirmPassword" class="input100" placeholder="Confirm Password" type="password"  runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<!-- Address -->

					<div class="wrap-input100 validate-input" data-validate = "Address is required">
						<asp:TextBox ID="address" class="input100" placeholder="Address" type="text"  runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-id-card" aria-hidden="true"></i>
						</span>
					</div>

					<!-- NIC -->

					<div class="wrap-input100 validate-input" data-validate = "NIC is required">
						<asp:TextBox ID="nicNo" class="input100" placeholder="NIC No" type="text"  runat="server" MaxLength="10" pattern="^\d{5}-\d{4}-\d{V}$" title="Enter Valid NIC"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-id-card" aria-hidden="true"></i>
						</span>
					</div>

					<!-- Telephone No -->

					<div class="wrap-input100 validate-input" data-validate = "Telephone / Mobile Number is required">
						<asp:TextBox ID="telephone" class="input100" placeholder="Telephone / Mobile No" type="phonenumber"  runat="server" MaxLength="10" pattern="^\d{10}$"  title="please enter valide phone number(071 1234567)"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</span>
					</div>

					<asp:CheckBox ID="CheckBoxterms" runat="server" /> Terms and Conditions

					<div class="container-login100-form-btn" >
						 <asp:Button ID="regBtn" class="login100-form-btn" runat="server" Text="Register" OnClick="regBtn_Click" />
					</div>

					<div class="text-center p-t-136">
						<a href="index.aspx">
							All Ready  Have Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- confermtion password-->

	<script>
        var password = document.getElementById("password")
            , confirm_password = document.getElementById("confirmPassword");

        function validatePassword() {
            if (password.value != confirm_password.value) {
                confirm_password.setCustomValidity("Passwords Don't Match");
            } else {
                confirm_password.setCustomValidity('');
            }
        }

        password.onchange = validatePassword;
        confirm_password.onkeyup = validatePassword;

    </script>
	
	

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="vendor/select2/select2.min.js"></script>

	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
    </script>

	<script src="js/main.js"></script>


</body>
</html>
