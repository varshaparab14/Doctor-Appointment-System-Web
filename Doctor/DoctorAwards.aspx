<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="DoctorAwards.aspx.cs" Inherits="Doctor_DoctorAwards" %>

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
                                    <h3>Awards</h3>
                                    <asp:FormView ID="FormView1" runat="server" Width="100%" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                                        <EditItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                            <br />
                                            Name:
                                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                            <br />
                                            Years:
                                            <asp:TextBox ID="YearsTextBox" runat="server" Text='<%# Bind("Years") %>' />
                                            <br />
                                            Username:
                                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            <br />
                                            Description:
                                            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' class="form-control floating" />
                                                <label class="focus-label">Name</label>
                                                <asp:RequiredFieldValidator ID="req1" runat="server" Display="Dynamic" ErrorMessage="Please enter name" ControlToValidate="NameTextBox"
                                                    CssClass="text-danger" />
                                                <asp:RegularExpressionValidator ID="reg1" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="NameTextBox"
                                                    ValidationExpression="[a-zA-Z ]{2,50}" Display="Dynamic" CssClass="text-danger" />
                                            </div>
                                            <div class="form-group form-focus">

                                                <asp:TextBox ID="YearsTextBox" runat="server" Text='<%# Bind("Years") %>' class="form-control floating" />
                                                <label class="focus-label">Years</label>
                                            </div>
                                            <div style="display: none;">
                                                Username:
                                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            </div>
                                            <div class="form-group form-focus">
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' class="form-control floating" />
                                                <label class="focus-label">Description</label>
                                            </div>

                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                            <br />
                                            Name:
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                            <br />
                                            Years:
                                            <asp:Label ID="YearsLabel" runat="server" Text='<%# Bind("Years") %>' />
                                            <br />
                                            Username:
                                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                            <br />
                                            Description:
                                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                                            <br />

                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorAwards] WHERE [Id] = @Id" InsertCommand="INSERT INTO [DoctorAwards] ([Name], [Years], [Username], [Description]) VALUES (@Name, @Years, @Username, @Description)" SelectCommand="SELECT * FROM [DoctorAwards] ORDER BY [Id] DESC" UpdateCommand="UPDATE [DoctorAwards] SET [Name] = @Name, [Years] = @Years, [Username] = @Username, [Description] = @Description WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Years" Type="String" />
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="Description" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Years" Type="String" />
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="Description" Type="String" />
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>

                                <!-- Register Form -->


                                <!-- /Register Form -->

                            </div>

                            <div class="col-md-7 col-lg-6 login-left">
                                <asp:GridView CssClass="table table-bordered table-striped" PageSize="4" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="Years" HeaderText="Years" SortExpression="Years" />
                                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                        <asp:CommandField ShowDeleteButton="True">
                                        <ControlStyle CssClass=" btn-sm bg-danger-light" />
                                        </asp:CommandField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                    <!-- /Register Content -->

                </div>
            </div>
        </div>
    </div>
</asp:Content>

