<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Doctor Signup.aspx.cs" Inherits="Account_Doctor_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Content -->
    <div class="content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-md-10 offset-md-1">

                    <!-- Register Content -->
                    <div class="account-content">
                        <div class="row align-items-center justify-content-center">
                           
                            <div class="col-md-12 col-lg-6 login-left">
                                <div class="login-header">
                                    <h3>Doctor Register <a id="txtError" class="text-danger" runat="server"></a></h3>
                                </div>

                                <!-- Register Form -->
                                    <div class="form-group form-focus">
                                        <asp:TextBox ID="txtName" runat="server" class="form-control floating" />
                                        <label class="focus-label">Name</label>
                                        <asp:RequiredFieldValidator ID="req1" runat="server" Display="Dynamic" ErrorMessage="Please enter name" ControlToValidate="txtName"
                                            CssClass="text-danger" />
                                        <asp:RegularExpressionValidator ID="reg1" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="txtName"
                                            ValidationExpression="[a-zA-Z ]{2,50}" Display="Dynamic" CssClass="text-danger" />
                                    </div>
                                    <div class="form-group form-focus">
                                        <asp:TextBox ID="txtUsername" runat="server" class="form-control floating" />
                                        <label class="focus-label">Username</label>
                                        <asp:RequiredFieldValidator ID="req2" runat="server" Display="Dynamic" ErrorMessage="Please enter user name" ControlToValidate="txtUsername"
                                            CssClass="text-danger" />
                                        <asp:RegularExpressionValidator ID="reg2" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="txtUsername"
                                            ValidationExpression="[a-zA-Z][a-zA-Z0-9]*" Display="Dynamic" CssClass="text-danger" />

                                    </div>
                                    <div class="form-group form-focus">
                                        <asp:TextBox ID="txtEmail" runat="server" class="form-control floating" />
                                        <label class="focus-label">Email Id</label>
                                        <asp:RequiredFieldValidator ID="req5" runat="server" Display="Dynamic" ErrorMessage="Please enter email-id" ControlToValidate="txtEmail"
                                            CssClass="text-danger" />
                                        <asp:RegularExpressionValidator ID="reg5" runat="server" ErrorMessage="Please enter vaild email id" ControlToValidate="txtEmail"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" CssClass="text-danger" />

                                    </div>
                                    <div class="form-group form-focus">
                                        <asp:TextBox ID="txtMoblieNo" runat="server" Class="form-control floating" />
                                        <label class="focus-label">Mobile Number</label>
                                        <asp:RequiredFieldValidator ID="req6" runat="server" ErrorMessage="Please enter moblie no" ControlToValidate="txtMoblieNo"
                                            CssClass="text-danger" />
                                        <asp:RegularExpressionValidator ID="reg6" runat="server" ErrorMessage="Please enter valid moblie no" ControlToValidate="txtMoblieNo"
                                            ValidationExpression="[0-9]{10}" Display="Dynamic" CssClass="text-danger" />

                                    </div>
                                    
                                    <asp:Button ID="btnRegister" runat="server" class="btn btn-primary btn-block btn-lg login-btn" Text="Add Dcotor" OnClick="btnRegister_Click" />
                                    <div class="login-or">
                                        <span class="or-line"></span>
                                    </div>

                                
                                <!-- /Register Form -->

                            </div>

                             <div class="col-md-7 col-lg-6 login-left">
                                <img src="../assets/img/login-banner.png" class="img-fluid" alt="Doccure Register">
                            </div>
                        </div>
                    </div>
                    <!-- /Register Content -->

                </div>
            </div>

        </div>

    </div>
    <!-- /Page Content -->
</asp:Content>

