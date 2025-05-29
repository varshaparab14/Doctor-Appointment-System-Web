<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="DoctorSpecialization.aspx.cs" Inherits="Doctor_DoctorSpecialization" %>

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
                                    <h3>Specialization</h3>
                                    <asp:FormView ID="FormView1" runat="server" Width="100%" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                                        <EditItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                            <br />
                                            Specialization:
                                            <asp:TextBox ID="SpecializationTextBox" runat="server" Text='<%# Bind("Specialization") %>' />
                                            <br />
                                            Username:
                                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <div class="form-group form-focus">
                                            <asp:TextBox ID="SpecializationTextBox" runat="server" Text='<%# Bind("Specialization") %>' class="form-control floating" />
                                                <label class="focus-label">Specialization</label>
                                                <asp:RequiredFieldValidator ID="req1" runat="server" Display="Dynamic" ErrorMessage="Please enter name" ControlToValidate="SpecializationTextBox"
                                                    CssClass="text-danger" />
                                                <asp:RegularExpressionValidator ID="reg1" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="SpecializationTextBox"
                                                    ValidationExpression="[a-zA-Z ]{2,50}" Display="Dynamic" CssClass="text-danger" />
                                            </div>
                                            
                                            <div style="display: none;">
                                                Username:
                                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            </div>

                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton class="btn btn-primary btn-lg login-btn" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                            <br />
                                            Specialization:
                                            <asp:Label ID="SpecializationLabel" runat="server" Text='<%# Bind("Specialization") %>' />
                                            <br />
                                            Username:
                                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                            <br />
                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" SelectCommand="SELECT * FROM [DoctorSpecialization] ORDER BY [Id] DESC" DeleteCommand="DELETE FROM [DoctorSpecialization] WHERE [Id] = @Id" InsertCommand="INSERT INTO [DoctorSpecialization] ([Specialization], [Username]) VALUES (@Specialization, @Username)" UpdateCommand="UPDATE [DoctorSpecialization] SET [Specialization] = @Specialization, [Username] = @Username WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Specialization" Type="String" />
                                            <asp:Parameter Name="Username" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Specialization" Type="String" />
                                            <asp:Parameter Name="Username" Type="String" />
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
                                        <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                                        <asp:CommandField ShowDeleteButton="True">
                                        <ControlStyle CssClass="btn-sm bg-danger-light" />
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

