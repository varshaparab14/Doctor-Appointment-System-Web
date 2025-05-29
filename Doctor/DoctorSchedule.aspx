<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="DoctorSchedule.aspx.cs" Inherits="Doctor_DoctorSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%
        if(Request.QueryString["day"] != null)
        {     
    %>
    <script>
        $(function () {
            $(".tab-pane").removeClass("show active")
            $("#<%=Request.QueryString["day"]%>").addClass("show active")

            $(".schedule-nav ul li a").removeClass("active")
            $(".schedule-nav ul li:eq(<%=Request.QueryString["tab"]%>) a").addClass("active")
        })
    </script>

    <%}
      
       %>>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
						 
							<div class="row">
								<div class="col-sm-12">
									<div class="card">
										<div class="card-body">
											<h4 class="card-title">Schedule Timings</h4>
											<div class="profile-box">
												    
												<div class="row">
													<div class="col-md-12">
														<div class="card schedule-widget mb-0">
														
															<!-- Schedule Header -->
															<div class="schedule-header">
															
																<!-- Schedule Nav -->
																<div class="schedule-nav">
																	<ul class="nav nav-tabs nav-justified">
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_sunday">Sunday</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link active" data-toggle="tab" href="#slot_monday">Monday</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_tuesday">Tuesday</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_wednesday">Wednesday</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_thursday">Thursday</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_friday">Friday</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_saturday">Saturday</a>
																		</li>
																	</ul>
																</div>
																<!-- /Schedule Nav -->
																
															</div>
															<!-- /Schedule Header -->
															
															<!-- Schedule Content -->
															<div class="tab-content schedule-cont">
															
																<!-- Sunday Slot -->
																<div id="slot_sunday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span> 
                                                                            <asp:FormView ID="FormView1"  OnItemInserted="FormView1_ItemInserted" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                                                                                <EditItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    <div style="display:none;">
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    </div>

                                                                                    <div class="form-group">
                                                                                    <label>TimeSlot:</label>
                                                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue='<%# Bind("TimeSlot") %>'>
                                                                                            <asp:ListItem>7:00 am - 8:00 am</asp:ListItem>
                                                                                            <asp:ListItem>8:00 am - 9:00 am</asp:ListItem>
                                                                                            <asp:ListItem>9:00 am - 10:00 am</asp:ListItem>
                                                                                            <asp:ListItem>10:00 am - 11:00 am</asp:ListItem>
                                                                                            <asp:ListItem>11:00 am - 12:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>12:00 pm - 1:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>1:00 pm - 2:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>2:00 pm - 3:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>3:00 pm - 4:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>4:00 pm - 5:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>5:00 pm - 6:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>6:00 pm - 7:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>7:00 pm - 8:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>8:00 pm - 9:00 pm</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                    <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:Label ID="DayLabel" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                                                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                                                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                                                                </ItemTemplate>
                                                                        </asp:FormView></span>
                                                                        
                                                                        <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" EmptyDataText="Not Available" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                                                            <Columns>
                                                                                <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                                                                                <asp:CommandField ShowDeleteButton="True">
                                                                                <ControlStyle CssClass="btn-sm bg-danger-light" />
                                                                                </asp:CommandField>
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                            
                                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorSchedule] WHERE [Id] = @Id" 
                                                                            InsertCommand="INSERT INTO [DoctorSchedule] ([Username], [Day], [TimeSlot]) VALUES (@Username, @Day, @TimeSlot)" SelectCommand="SELECT * FROM [DoctorSchedule] WHERE ([Day] = @Day)" UpdateCommand="UPDATE [DoctorSchedule] SET [Username] = @Username, [Day] = @Day, [TimeSlot] = @TimeSlot WHERE [Id] = @Id">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                            </InsertParameters>
                                                                            <SelectParameters>
                                                                                <asp:Parameter DefaultValue="Sunday" Name="Day" Type="String" />
                                                                            </SelectParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </UpdateParameters>
                                                                        </asp:SqlDataSource>												    
                                                                    </h4>
																</div>
																<!-- /Sunday Slot -->

																<!-- Monday Slot -->
																<div id="slot_monday" class="tab-pane fade   show active">
																	<h4 class="card-title d-flex justify-content-between">
																		
                                                                    <span> 
                                                                            <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" DefaultMode="Insert" OnItemInserted="FormView2_ItemInserted">
                                                                                <EditItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    <div style="display:none;">
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    </div>

                                                                                    <div class="form-group">
                                                                                    <label>TimeSlot:</label>
                                                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue='<%# Bind("TimeSlot") %>'>
                                                                                            <asp:ListItem>7:00 am - 8:00 am</asp:ListItem>
                                                                                            <asp:ListItem>8:00 am - 9:00 am</asp:ListItem>
                                                                                            <asp:ListItem>9:00 am - 10:00 am</asp:ListItem>
                                                                                            <asp:ListItem>10:00 am - 11:00 am</asp:ListItem>
                                                                                            <asp:ListItem>11:00 am - 12:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>12:00 pm - 1:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>1:00 pm - 2:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>2:00 pm - 3:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>3:00 pm - 4:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>4:00 pm - 5:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>5:00 pm - 6:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>6:00 pm - 7:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>7:00 pm - 8:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>8:00 pm - 9:00 pm</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                    <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:Label ID="DayLabel" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                                                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                                                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                                                                </ItemTemplate>
                                                                        </asp:FormView></span>
                                                                        
                                                                        <asp:GridView ID="GridView2" CssClass="table table-bordered" runat="server" EmptyDataText="Not Available" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                                                                            <Columns>
                                                                                <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                                                                                <asp:CommandField ShowDeleteButton="True">
                                                                                <ControlStyle CssClass="btn-sm bg-danger-light" />
                                                                                </asp:CommandField>
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                            
                                                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorSchedule] WHERE [Id] = @Id" 
                                                                            InsertCommand="INSERT INTO [DoctorSchedule] ([Username], [Day], [TimeSlot]) VALUES (@Username, @Day, @TimeSlot)" SelectCommand="SELECT * FROM [DoctorSchedule] WHERE ([Day] = @Day)" UpdateCommand="UPDATE [DoctorSchedule] SET [Username] = @Username, [Day] = @Day, [TimeSlot] = @TimeSlot WHERE [Id] = @Id">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                            </InsertParameters>
                                                                            <SelectParameters>
                                                                                <asp:Parameter DefaultValue="Monday" Name="Day" Type="String" />
                                                                            </SelectParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </UpdateParameters>
                                                                        </asp:SqlDataSource>												    
                                                                    </h4>
																	
																	
																	
																</div>
																<!-- /Monday Slot -->

																<!-- Tuesday Slot -->
																<div id="slot_tuesday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span> 
                                                                            <asp:FormView ID="FormView3"  OnItemInserted="FormView3_ItemInserted" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3" DefaultMode="Insert">
                                                                                <EditItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    <div style="display:none;">
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    </div>

                                                                                    <div class="form-group">
                                                                                    <label>TimeSlot:</label>
                                                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue='<%# Bind("TimeSlot") %>'>
                                                                                            <asp:ListItem>7:00 am - 8:00 am</asp:ListItem>
                                                                                            <asp:ListItem>8:00 am - 9:00 am</asp:ListItem>
                                                                                            <asp:ListItem>9:00 am - 10:00 am</asp:ListItem>
                                                                                            <asp:ListItem>10:00 am - 11:00 am</asp:ListItem>
                                                                                            <asp:ListItem>11:00 am - 12:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>12:00 pm - 1:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>1:00 pm - 2:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>2:00 pm - 3:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>3:00 pm - 4:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>4:00 pm - 5:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>5:00 pm - 6:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>6:00 pm - 7:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>7:00 pm - 8:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>8:00 pm - 9:00 pm</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                    <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:Label ID="DayLabel" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                                                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                                                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                                                                </ItemTemplate>
                                                                        </asp:FormView></span>
                                                                        
                                                                        <asp:GridView ID="GridView3" CssClass="table table-bordered" runat="server" EmptyDataText="Not Available" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                                                                            <Columns>
                                                                                <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                                                                                <asp:CommandField ShowDeleteButton="True">
                                                                                <ControlStyle CssClass="btn-sm bg-danger-light" />
                                                                                </asp:CommandField>
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                            
                                                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorSchedule] WHERE [Id] = @Id" 
                                                                            InsertCommand="INSERT INTO [DoctorSchedule] ([Username], [Day], [TimeSlot]) VALUES (@Username, @Day, @TimeSlot)" SelectCommand="SELECT * FROM [DoctorSchedule] WHERE ([Day] = @Day)" UpdateCommand="UPDATE [DoctorSchedule] SET [Username] = @Username, [Day] = @Day, [TimeSlot] = @TimeSlot WHERE [Id] = @Id">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                            </InsertParameters>
                                                                            <SelectParameters>
                                                                                <asp:Parameter DefaultValue="Tuesday" Name="Day" Type="String" />
                                                                            </SelectParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </UpdateParameters>
                                                                        </asp:SqlDataSource>												    
                                                                    </h4>
																	<p class="text-muted mb-0">Not Available</p>
																</div>
																<!-- /Tuesday Slot -->

																<!-- Wednesday Slot -->
																<div id="slot_wednesday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span> 
                                                                            <asp:FormView ID="FormView4"  OnItemInserted="FormView4_ItemInserted" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource4" DefaultMode="Insert">
                                                                                <EditItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    <div style="display:none;">
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    </div>

                                                                                    <div class="form-group">
                                                                                    <label>TimeSlot:</label>
                                                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue='<%# Bind("TimeSlot") %>'>
                                                                                            <asp:ListItem>7:00 am - 8:00 am</asp:ListItem>
                                                                                            <asp:ListItem>8:00 am - 9:00 am</asp:ListItem>
                                                                                            <asp:ListItem>9:00 am - 10:00 am</asp:ListItem>
                                                                                            <asp:ListItem>10:00 am - 11:00 am</asp:ListItem>
                                                                                            <asp:ListItem>11:00 am - 12:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>12:00 pm - 1:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>1:00 pm - 2:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>2:00 pm - 3:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>3:00 pm - 4:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>4:00 pm - 5:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>5:00 pm - 6:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>6:00 pm - 7:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>7:00 pm - 8:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>8:00 pm - 9:00 pm</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                    <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:Label ID="DayLabel" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                                                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                                                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                                                                </ItemTemplate>
                                                                        </asp:FormView></span>
                                                                        
                                                                        <asp:GridView ID="GridView4" CssClass="table table-bordered" runat="server" EmptyDataText="Not Available" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4">
                                                                            <Columns>
                                                                                <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                                                                                <asp:CommandField ShowDeleteButton="True">
                                                                                <ControlStyle CssClass="btn-sm bg-danger-light" />
                                                                                </asp:CommandField>
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                            
                                                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorSchedule] WHERE [Id] = @Id" 
                                                                            InsertCommand="INSERT INTO [DoctorSchedule] ([Username], [Day], [TimeSlot]) VALUES (@Username, @Day, @TimeSlot)" SelectCommand="SELECT * FROM [DoctorSchedule] WHERE ([Day] = @Day)" UpdateCommand="UPDATE [DoctorSchedule] SET [Username] = @Username, [Day] = @Day, [TimeSlot] = @TimeSlot WHERE [Id] = @Id">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                            </InsertParameters>
                                                                            <SelectParameters>
                                                                                <asp:Parameter DefaultValue="Wednesday" Name="Day" Type="String" />
                                                                            </SelectParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </UpdateParameters>
                                                                        </asp:SqlDataSource>												    
                                                                    </h4>
																	<p class="text-muted mb-0">Not Available</p>
																</div>
																<!-- /Wednesday Slot -->

																<!-- Thursday Slot -->
																<div id="slot_thursday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span> 
                                                                            <asp:FormView ID="FormView5"  OnItemInserted="FormView5_ItemInserted" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource5" DefaultMode="Insert">
                                                                                <EditItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    <div style="display:none;">
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    </div>

                                                                                    <div class="form-group">
                                                                                    <label>TimeSlot:</label>
                                                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue='<%# Bind("TimeSlot") %>'>
                                                                                            <asp:ListItem>7:00 am - 8:00 am</asp:ListItem>
                                                                                            <asp:ListItem>8:00 am - 9:00 am</asp:ListItem>
                                                                                            <asp:ListItem>9:00 am - 10:00 am</asp:ListItem>
                                                                                            <asp:ListItem>10:00 am - 11:00 am</asp:ListItem>
                                                                                            <asp:ListItem>11:00 am - 12:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>12:00 pm - 1:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>1:00 pm - 2:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>2:00 pm - 3:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>3:00 pm - 4:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>4:00 pm - 5:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>5:00 pm - 6:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>6:00 pm - 7:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>7:00 pm - 8:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>8:00 pm - 9:00 pm</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                    <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:Label ID="DayLabel" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                                                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                                                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                                                                </ItemTemplate>
                                                                        </asp:FormView></span>
                                                                        
                                                                        <asp:GridView ID="GridView5" CssClass="table table-bordered" runat="server" EmptyDataText="Not Available" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource5">
                                                                            <Columns>
                                                                                <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                                                                                <asp:CommandField ShowDeleteButton="True">
                                                                                <ControlStyle CssClass="btn-sm bg-danger-light" />
                                                                                </asp:CommandField>
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                            
                                                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorSchedule] WHERE [Id] = @Id" 
                                                                            InsertCommand="INSERT INTO [DoctorSchedule] ([Username], [Day], [TimeSlot]) VALUES (@Username, @Day, @TimeSlot)" SelectCommand="SELECT * FROM [DoctorSchedule] WHERE ([Day] = @Day)" UpdateCommand="UPDATE [DoctorSchedule] SET [Username] = @Username, [Day] = @Day, [TimeSlot] = @TimeSlot WHERE [Id] = @Id">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                            </InsertParameters>
                                                                            <SelectParameters>
                                                                                <asp:Parameter DefaultValue="Thursday" Name="Day" Type="String" />
                                                                            </SelectParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </UpdateParameters>
                                                                        </asp:SqlDataSource>												    
                                                                    </h4>
																	<p class="text-muted mb-0">Not Available</p>
																</div>
																<!-- /Thursday Slot -->

																<!-- Friday Slot -->
																<div id="slot_friday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span> 
                                                                            <asp:FormView ID="FormView6"  OnItemInserted="FormView6_ItemInserted" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource6" DefaultMode="Insert">
                                                                                <EditItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    <div style="display:none;">
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    </div>

                                                                                    <div class="form-group">
                                                                                    <label>TimeSlot:</label>
                                                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue='<%# Bind("TimeSlot") %>'>
                                                                                            <asp:ListItem>7:00 am - 8:00 am</asp:ListItem>
                                                                                            <asp:ListItem>8:00 am - 9:00 am</asp:ListItem>
                                                                                            <asp:ListItem>9:00 am - 10:00 am</asp:ListItem>
                                                                                            <asp:ListItem>10:00 am - 11:00 am</asp:ListItem>
                                                                                            <asp:ListItem>11:00 am - 12:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>12:00 pm - 1:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>1:00 pm - 2:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>2:00 pm - 3:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>3:00 pm - 4:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>4:00 pm - 5:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>5:00 pm - 6:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>6:00 pm - 7:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>7:00 pm - 8:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>8:00 pm - 9:00 pm</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                    <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:Label ID="DayLabel" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                                                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                                                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                                                                </ItemTemplate>
                                                                        </asp:FormView></span>
                                                                        
                                                                        <asp:GridView ID="GridView6" CssClass="table table-bordered" runat="server" EmptyDataText="Not Available" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource6">
                                                                            <Columns>
                                                                                <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                                                                                <asp:CommandField ShowDeleteButton="True">
                                                                                <ControlStyle CssClass="btn-sm bg-danger-light" />
                                                                                </asp:CommandField>
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                            
                                                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorSchedule] WHERE [Id] = @Id" 
                                                                            InsertCommand="INSERT INTO [DoctorSchedule] ([Username], [Day], [TimeSlot]) VALUES (@Username, @Day, @TimeSlot)" SelectCommand="SELECT * FROM [DoctorSchedule] WHERE ([Day] = @Day)" UpdateCommand="UPDATE [DoctorSchedule] SET [Username] = @Username, [Day] = @Day, [TimeSlot] = @TimeSlot WHERE [Id] = @Id">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                            </InsertParameters>
                                                                            <SelectParameters>
                                                                                <asp:Parameter DefaultValue="Friday" Name="Day" Type="String" />
                                                                            </SelectParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </UpdateParameters>
                                                                        </asp:SqlDataSource>												    
                                                                    </h4>
																	<p class="text-muted mb-0">Not Available</p>
																</div>
																<!-- /Friday Slot -->

																<!-- Saturday Slot -->
																<div id="slot_saturday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span> 
                                                                            <asp:FormView ID="FormView7"  OnItemInserted="FormView7_ItemInserted" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource7" DefaultMode="Insert">
                                                                                <EditItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    <div style="display:none;">
                                                                                    Username:
                                                                                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    </div>

                                                                                    <div class="form-group">
                                                                                    <label>TimeSlot:</label>
                                                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue='<%# Bind("TimeSlot") %>'>
                                                                                            <asp:ListItem>7:00 am - 8:00 am</asp:ListItem>
                                                                                            <asp:ListItem>8:00 am - 9:00 am</asp:ListItem>
                                                                                            <asp:ListItem>9:00 am - 10:00 am</asp:ListItem>
                                                                                            <asp:ListItem>10:00 am - 11:00 am</asp:ListItem>
                                                                                            <asp:ListItem>11:00 am - 12:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>12:00 pm - 1:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>1:00 pm - 2:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>2:00 pm - 3:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>3:00 pm - 4:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>4:00 pm - 5:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>5:00 pm - 6:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>6:00 pm - 7:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>7:00 pm - 8:00 pm</asp:ListItem>
                                                                                            <asp:ListItem>8:00 pm - 9:00 pm</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                    <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    Id:
                                                                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                                                                    <br />
                                                                                    Username:
                                                                                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                                                                    <br />
                                                                                    Day:
                                                                                    <asp:Label ID="DayLabel" runat="server" Text='<%# Bind("Day") %>' />
                                                                                    <br />
                                                                                    TimeSlot:
                                                                                    <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Bind("TimeSlot") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                                                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                                                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                                                                </ItemTemplate>
                                                                        </asp:FormView></span>
                                                                        
                                                                        <asp:GridView ID="GridView7" CssClass="table table-bordered" runat="server" EmptyDataText="Not Available" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource7">
                                                                            <Columns>
                                                                                <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                                                                                <asp:CommandField ShowDeleteButton="True">
                                                                                <ControlStyle CssClass="btn-sm bg-danger-light" />
                                                                                </asp:CommandField>
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                            
                                                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" DeleteCommand="DELETE FROM [DoctorSchedule] WHERE [Id] = @Id" 
                                                                            InsertCommand="INSERT INTO [DoctorSchedule] ([Username], [Day], [TimeSlot]) VALUES (@Username, @Day, @TimeSlot)" SelectCommand="SELECT * FROM [DoctorSchedule] WHERE ([Day] = @Day)" UpdateCommand="UPDATE [DoctorSchedule] SET [Username] = @Username, [Day] = @Day, [TimeSlot] = @TimeSlot WHERE [Id] = @Id">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                            </InsertParameters>
                                                                            <SelectParameters>
                                                                                <asp:Parameter DefaultValue="Saturday" Name="Day" Type="String" />
                                                                            </SelectParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="Username" Type="String" />
                                                                                <asp:Parameter Name="Day" Type="String" />
                                                                                <asp:Parameter Name="TimeSlot" Type="String" />
                                                                                <asp:Parameter Name="Id" Type="Int32" />
                                                                            </UpdateParameters>
                                                                        </asp:SqlDataSource>												    
                                                                    </h4>
																	<p class="text-muted mb-0">Not Available</p>
																</div>
																<!-- /Saturday Slot -->

															</div>
															<!-- /Schedule Content -->
															
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
								
						</div>
</asp:Content>

