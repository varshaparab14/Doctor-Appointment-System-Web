<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					
					<div class="row">
						<div class="col-md-8 offset-md-2">
							
							<!-- Login Tab Content -->
							<div class="account-content">
								<div class="row align-items-center justify-content-center">
									<div class="col-md-7 col-lg-6 login-left">
										<img src="../assets/img/login-banner.png" class="img-fluid" alt="Doccure Login">	
									</div>
									<div class="col-md-12 col-lg-6 login-right">
										<div class="login-header">
											<h3>Login <span>Doccure</span> <a id="txtError" class="text-danger" runat="server"></a></h3>
										</div>
										
											<div class="form-group form-focus">
												
                                                <asp:TextBox ID="txtUsername" runat="server" class="form-control floating" />
                                                <label class="focus-label">User Name</label>
                                                <asp:RequiredFieldValidator ID="req2" runat="server" Display="Dynamic" ErrorMessage="Please enter user name" ControlToValidate="txtUsername"
                                            CssClass="text-danger" />
                                        <asp:RegularExpressionValidator ID="reg2" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="txtUsername"
                                            ValidationExpression="[a-zA-Z][a-zA-Z0-9]*" Display="Dynamic" CssClass="text-danger" />
											</div>
											<div class="form-group form-focus">
                                                <asp:TextBox ID="txtPassword" runat="server" class="form-control floating"  TextMode="Password"/>
												<label class="focus-label">Password</label>
                                                <asp:RequiredFieldValidator ID="req3" runat="server" Display="Dynamic" ErrorMessage="Please enter password" ControlToValidate="txtPassword"
                                            CssClass="text-danger" />
                                        <asp:RegularExpressionValidator ID="reg3" runat="server" ErrorMessage="Password length must be between 8 to 12 characters" 
                                            ControlToValidate="txtPassword"
                                            ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,12}$" Display="Dynamic" CssClass="text-danger"/>
											</div>
											<div class="text-right">
												<a class="forgot-link" href="forget.aspx">Forgot Password ?</a>
											</div>
                                            <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary btn-block btn-lg login-btn" OnClick="btnLogin_Click" />
											<div class="login-or">
												<span class="or-line"></span>
												<span class="span-or">or</span>
											</div>
											<div class="row form-row social-login">
												
											</div>
											<div class="text-center dont-have">Don’t have an account? <a href="Patient Signup.aspx">Register</a></div>
										
									</div>
								</div>
							</div>
							<!-- /Login Tab Content -->
								
						</div>
					</div>

				</div>

			</div>		
			<!-- /Page Content -->
</asp:Content>

