<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="PatientDetails.aspx.cs" Inherits="Patient_PatientDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                                    <h3>Doctor Details</h3>
                                    <asp:FormView ID="FormView1" runat="server" Width="100%" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                                        <EditItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                            <br />
                                            Username:
                                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            <br />
                                            Name:
                                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                            <br />
                                            PatientId:
                                            <asp:TextBox ID="PatientIdTextBox" runat="server" Text='<%# Bind("PatientId") %>' />
                                            <br />
                                            Gender:
                                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                                            <br />
                                            ImagePath:
                                            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
                                            <br />
                                            Address:
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                            <br />
                                            BloodGroup:
                                            <asp:TextBox ID="BloodGroupTextBox" runat="server" Text='<%# Bind("BloodGroup") %>' />
                                            <br />
                                            Age:
                                            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                                            <br />
                                            PhoneNumber:
                                            <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <div style="display: none;">
                                                Username:
                                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            </div>
                                            <div class="form-group form-focus">

                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' class="form-control floating" />
                                                <label class="focus-label">Name</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="PatientIdTextBox" runat="server" Text='<%# Bind("PatientId") %>' class="form-control floating" />
                                                <label class="focus-label">PatientId</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' class="form-control floating" />
                                                <label class="focus-label">Gender</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' class="form-control floating" />
                                                <label class="focus-label">ImagePath</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' class="form-control floating" />
                                                <label class="focus-label">Address</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="BloodGroupTextBox" runat="server" Text='<%# Bind("BloodGroup") %>' class="form-control floating" />
                                                <label class="focus-label">
                                                BloodGroup/label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' class="form-control floating" />
                                                <label class="focus-label">Age</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' class="form-control floating" />
                                                <label class="focus-label">PhoneNumber</label>
                                            </div>

                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                            <br />
                                            Username:
                                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                            <br />
                                            Name:
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                            <br />
                                            PatientId:
                                            <asp:Label ID="PatientIdLabel" runat="server" Text='<%# Bind("PatientId") %>' />
                                            <br />
                                            Gender:
                                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                                            <br />

                                            ImagePath:
                                            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Bind("ImagePath") %>' />
                                            <br />
                                            Address:
                                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                                            <br />
                                            BloodGroup:
                                            <asp:Label ID="BloodGroupLabel" runat="server" Text='<%# Bind("BloodGroup") %>' />
                                            <br />

                                            Age:
                                            <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                                            <br />
                                            PhoneNumber:
                                            <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                                            <br />

                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:FormView ID="FormView2" OnItemUpdated="FormView2_ItemUpdated" runat="server" Width="100%" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Edit">
                                        <EditItemTemplate>
                                            <div style="display: none;">
                                                Id:
                                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                            </div>
                                            <div style="display: none;">
                                                Username:
                                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            </div>

                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' class="form-control floating" />
                                                <label class="focus-label">Name</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="PatientIdTextBox" runat="server" Text='<%# Bind("PatientId") %>' class="form-control floating" />
                                                <label class="focus-label">PatientId</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Gender") %>' class="form-control floating" />
                                                <label class="focus-label">Gender</label>
                                            </div>
                                            <div class="form-group form-focus">

                                                <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' class="form-control floating" />
                                                <label class="focus-label">ImagePath</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' class="form-control floating" />
                                                <label class="focus-label">Address</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="BloodGroupTextBox" runat="server" Text='<%# Bind("BloodGroup") %>' class="form-control floating" />
                                                <label class="focus-label">BloodGroup</label>
                                            </div>
                                            <div class="form-group form-focus">

                                                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' class="form-control floating" />
                                                <label class="focus-label">Age</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' class="form-control floating" />
                                                <label class="focus-label">PhoneNumber</label>
                                            </div>
                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            Username:
                                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            <br />
                                            Name:
                                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                            <br />
                                            PatientId:
                                            <asp:TextBox ID="PatientIdTextBox" runat="server" Text='<%# Bind("PatientId") %>' />
                                            <br />
                                            Gender:
                                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                                            <br />
                                            ImagePath:
                                            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
                                            <br />
                                            Address:
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                            <br />
                                            BloodGroup:
                                            <asp:TextBox ID="BloodGroupTextBox" runat="server" Text='<%# Bind("BloodGroup") %>' />
                                            <br />
                                            Age:
                                            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                                            <br />
                                            PhoneNumber:
                                            <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                                            <br />

                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                            <br />
                                            Username:
                                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                            <br />

                                            Name:
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                            <br />
                                            PatientId:
                                            <asp:Label ID="PatientIdLabel" runat="server" Text='<%# Bind("PatientId") %>' />
                                            <br />
                                            Gender:
                                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                                            <br />

                                            ImagePath:
                                            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Bind("ImagePath") %>' />
                                            <br />
                                            Address:
                                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                                            <br />
                                            BloodGroup:
                                            <asp:Label ID="BloodGroupLabel" runat="server" Text='<%# Bind("BloodGroup") %>' />
                                            <br />

                                            Age:
                                            <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                                            <br />
                                            PhoneNumber:
                                            <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                                            <br />

                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                        </ItemTemplate>
                                    </asp:FormView>

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [PatientDetails] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PatientDetails] ([Username], [Name], [PatientId], [Gender], [ImagePath], [Address], [BloodGroup], [Age], [PhoneNumber]) VALUES (@Username, @Name, @PatientId, @Gender, @ImagePath, @Address, @BloodGroup, @Age, @PhoneNumber)" SelectCommand="SELECT * FROM [PatientDetails] ORDER BY [Id] DESC" UpdateCommand="UPDATE [PatientDetails] SET [Username] = @Username, [Name] = @Name, [PatientId] = @PatientId, [Gender] = @Gender, [ImagePath] = @ImagePath, [Address] = @Address, [BloodGroup] = @BloodGroup, [Age] = @Age, [PhoneNumber] = @PhoneNumber WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="PatientId" Type="String" />
                                            <asp:Parameter Name="Gender" Type="String" />
                                            <asp:Parameter Name="ImagePath" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="BloodGroup" Type="String" />
                                            <asp:Parameter Name="Age" Type="Int32" />
                                            <asp:Parameter Name="PhoneNumber" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="PatientId" Type="String" />
                                            <asp:Parameter Name="Gender" Type="String" />
                                            <asp:Parameter Name="ImagePath" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="BloodGroup" Type="String" />
                                            <asp:Parameter Name="Age" Type="Int32" />
                                            <asp:Parameter Name="PhoneNumber" Type="String" />
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>

                                <!-- Register Form -->


                                <!-- /Register Form -->

                            </div>

                            <div class="col-md-7 col-lg-6 login-left">

                                <asp:Panel ID="p1" runat="server">
                                    <asp:Repeater ID="detailsrep" runat="server">
                                        <ItemTemplate>

                                            <!-- Profile Widget -->
                                            <div class="card widget-profile pat-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-doc-img">
                                                                <img src='<%# Eval("ImagePath") %>' alt="User Image">
                                                            </a>
                                                            &nbsp;&nbsp;<div class="profile-det-info">
                                                                <h3><%# Eval("Name") %></h3>

                                                                <div class="patient-details">
                                                                    <h5><b>Patient ID :</b><%# Eval("PatientId") %></h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i><%# Eval("Address") %></h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="patient-info">
                                                        <ul>
                                                            <li>Phone <span></span></li>
                                                            <li>Age <span><%# Eval("Age") %> Years</span></li>
                                                            <li>Gender <span><%# Eval("Gender") %></span></li>
                                                            <li>Blood Group <span><%# Eval("BloodGroup") %></</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /Profile Widget -->

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </asp:Panel>

                            </div>
                        </div>
                    </div>
                    <!-- /Register Content -->

                </div>
            </div>
        </div>
    </div>
</asp:Content>

