<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="Account_forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					
					<div class="row">
						<div class="col-md-8 offset-md-2">
							
							<!-- Account Content -->
							<div class="account-content">
								<div class="row align-items-center justify-content-center">
									<div class="col-md-7 col-lg-6 login-left">
										<img src="../assets/img/login-banner.png" class="img-fluid" alt="Login Banner">	
									</div>
									<div class="col-md-12 col-lg-6 login-right">
										<div class="login-header">
											<h3>Forgot Password?</h3>
											<p class="small text-danger" id="msg" runat="server"></p>
										</div>
										
										<!-- Forgot Password Form -->
                                        <div class="form-group form-focus">
                                        <asp:TextBox ID="txtEmail" runat="server" class="form-control floating" />
                                        <label class="focus-label">Email Id</label>
                                        <asp:RequiredFieldValidator ID="req5" runat="server" Display="Dynamic" ErrorMessage="Please enter email-id" ControlToValidate="txtEmail"
                                            CssClass="text-danger" />
                                        <asp:RegularExpressionValidator ID="reg5" runat="server" ErrorMessage="Please enter vaild email id" ControlToValidate="txtEmail"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" CssClass="text-danger" />

                                        </div>
										
											<div class="text-right">
												<a class="forgot-link" href="Login.aspx">Remember your password?</a>
											</div>
                                        <asp:Button ID="btnforget" runat="server" CssClass="btn btn-primary btn-block btn-lg login-btn" 
                                            Text ="Email Password" OnClick="btnforget_Click" />
										
										<!-- /Forgot Password Form -->
										
									</div>
								</div>
							</div>
							<!-- /Account Content -->
							
						</div>
					</div>

				</div>

			</div>		
			<!-- /Page Content -->

</asp:Content>

