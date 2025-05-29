<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="DoctorDetails.aspx.cs" Inherits="Doctor_DoctorDetails" %>

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
                                    <asp:FormView ID="FormView1" runat="server" Width="100%" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted">
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
                                            Qualification:
                                            <asp:TextBox ID="QualificationTextBox" runat="server" Text='<%# Bind("Qualification") %>' />
                                            <br />
                                            Type:
                                            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                                            <br />
                                            ImagePath:
                                            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
                                            <br />
                                            Address:
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                            <br />
                                            AboutMe:
                                            <asp:TextBox ID="AboutMeTextBox" runat="server" Text='<%# Bind("AboutMe") %>' />
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
                                                <asp:TextBox ID="QualificationTextBox" runat="server" Text='<%# Bind("Qualification") %>' class="form-control floating" />
                                                <label class="focus-label">Qualification</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' class="form-control floating" />
                                                <label class="focus-label">Type</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Fees") %>' class="form-control floating" />
                                                <label class="focus-label">Fees</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control floating"  /> 
                                                <label class="focus-label">ImagePath</label>
                                            </div>

                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("Address") %>' class="form-control floating" />
                                                <label class="focus-label">Address</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="AboutMeTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("AboutMe") %>' class="form-control floating" />
                                                <label class="focus-label">AboutMe</label>
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
                                            Qualification:
                                            <asp:Label ID="QualificationLabel" runat="server" Text='<%# Bind("Qualification") %>' />
                                            <br />
                                            Type:
                                            <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
                                            <br />

                                            ImagePath:
                                            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Bind("ImagePath") %>' />
                                            <br />
                                            Address:
                                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                                            <br />
                                            AboutMe:
                                            <asp:Label ID="AboutMeLabel" runat="server" Text='<%# Bind("AboutMe") %>' />
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
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>' />
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
                                            <asp:TextBox ID="QualificationTextBox" runat="server" Text='<%# Bind("Qualification") %>' class="form-control floating" />
                                            <label class="focus-label">Qualification</label>
                                            </div>
                                            <div class="form-group form-focus">
                                            
                                            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' class="form-control floating"/>
                                            <label class="focus-label">Type</label>
                                            </div>
                                            <div class="form-group form-focus">
                                            
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Fees") %>' class="form-control floating"/>
                                            <label class="focus-label">Fees</label>
                                            </div>

                                            <div class="form-group form-focus">
                                            
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control floating"  />
                                            <label class="focus-label">ImagePath</label>
                                            </div>
                                            <div class="form-group form-focus">
                                           
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' class="form-control floating"/>
                                            <label class="focus-label">Address</label>
                                            </div>
                                            <div class="form-group form-focus">
                                            
                                            <asp:TextBox ID="AboutMeTextBox" runat="server" Text='<%# Bind("AboutMe") %>' class="form-control floating"/>
                                            <label class="focus-label">Address</label>
                                            </div>
                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                                                <asp:TextBox ID="QualificationTextBox" runat="server" Text='<%# Bind("Qualification") %>' class="form-control floating" />
                                                <label class="focus-label">Qualification</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' class="form-control floating" />
                                                <label class="focus-label">Type</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' class="form-control floating" />
                                                <label class="focus-label">ImagePath</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("Address") %>' class="form-control floating" />
                                                <label class="focus-label">Address</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="AboutMeTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("AboutMe") %>' class="form-control floating" />
                                                <label class="focus-label">AboutMe</label>
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
                                            Qualification:
                                            <asp:Label ID="QualificationLabel" runat="server" Text='<%# Bind("Qualification") %>' />
                                            <br />
                                            Type:
                                            <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
                                            <br />

                                            ImagePath:
                                            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Bind("ImagePath") %>' />
                                            <br />
                                            Address:
                                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                                            <br />
                                            AboutMe:
                                            <asp:Label ID="AboutMeLabel" runat="server" Text='<%# Bind("AboutMe") %>' />
                                            <br />

                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                    
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorDetails] WHERE [Id] = @Id" InsertCommand="INSERT INTO [DoctorDetails] ([Username], [Name], [Qualification], [Type], [ImagePath], [Address], [AboutMe], Fees) VALUES (@Username, @Name, @Qualification, @Type, @ImagePath, @Address, @AboutMe, @fees)" SelectCommand="SELECT * FROM [DoctorDetails] ORDER BY [Id] DESC" UpdateCommand="UPDATE [DoctorDetails] SET [Username] = @Username, [Name] = @Name, [Qualification] = @Qualification, [Type] = @Type, [ImagePath] = @ImagePath, [Address] = @Address, [AboutMe] = @AboutMe, Fees = @fees WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Qualification" Type="String" />
                                            <asp:Parameter Name="Type" Type="String" />
                                            <asp:Parameter Name="ImagePath" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="AboutMe" Type="String" />
                                             <asp:Parameter Name="fees" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Qualification" Type="String" />
                                            <asp:Parameter Name="Type" Type="String" />
                                            <asp:Parameter Name="ImagePath" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="AboutMe" Type="String" />
                                            <asp:Parameter Name="fees" Type="Int32" />
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


                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="doctor-widget">
                                                        <div class="doc-info-left">
                                                            <div class="doctor-img">
                                                                <img src="<%# Eval("ImagePath") %>" class="img-fluid" alt="User Image">
                                                            </div>
                                                            <div class="doc-info-cont">
                                                                <h4 class="doc-name"><%# Eval("Name") %></h4>
                                                                <p class="doc-speciality"><%# Eval("Qualification") %></p>

                                                                <p class="doc-department">           
                                                                     <%# Eval("Type") %>
                                                                </p>
                                                               
                                                                <div class="clinic-details">
                                                                    <p class="doc-location"><i class="fas fa-map-marker-alt"></i>
                                                                        <%# Eval("Address") %> </p>
                                                                    
                                                                </div>

                                                                <div class="clinic-details">
                                                                    <p class="doc-location">Rs. 
                                                                        <%# Eval("Fees") %> </p>
                                                                    
                                                                </div>

                                                                <!-- About Details -->
											<div class="widget about-widget">
												<h4 class="widget-title">About Me</h4>
												<p><%# Eval("AboutMe") %></p>
											</div>
											<!-- /About Details -->
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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

