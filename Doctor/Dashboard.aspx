<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Doctor_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Page Content -->
    <div class="content container">
        
            <h2>Doctor Dashboard</h2>
        <div class="col-md-12 col-lg-12 col-xl-12 theiaStickySidebar">
            <div class="row">
                <div class="col-md-12">
                    <div class="card dash-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12 col-lg-4">
                                    <div class="dash-widget dct-border-rht row">
                                        <div class="circle-bar circle-bar1 col-md-4">
                                            <div class="circle-graph1" data-percent="75">
                                                <img src="../assets/img/patient.jpg" alt="patient">
                                            </div>
                                        </div>
                                        <div class="dash-widget-info">
                                            <h6>Total Patient</h6>
                                            <h3><asp:Label ID="lblPatient" runat="server" /></h3>
                                            <p class="text-muted">Till Today</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12 col-lg-4">
                                    <div class="dash-widget dct-border-rht row">
                                        <div class="circle-bar circle-bar2 col-md-4">
                                            <div class="circle-graph2" data-percent="65">
                                                <img src="../assets/img/appintments.jpg"  alt="Patient">
                                            </div>
                                        </div>
                                        <div class="dash-widget-info">
                                            <h6>Total Appointments</h6>
                                            <h3><asp:Label ID="lblappointment" runat="server" /> </h3>
                                            <p class="text-muted">Till Today</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12 col-lg-4">
                                    <div class="dash-widget row">
                                        <div class="circle-bar circle-bar3 col-md-4">
                                            <div class="circle-graph3" data-percent="50">
                                                <img src="../assets/img/today.jpg" alt="Patient">
                                            </div>
                                        </div>
                                        <div class="dash-widget-info">
                                            <h6>Today's Pending <br /> Appoinments</h6>
                                            <h3><asp:Label ID="lblToday" runat="server" /> </h3>
                                            <p class="text-muted"><%=System.DateTime.Now.ToShortDateString() %></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <h2>Today's Appointment</h2>
            					<div class="row">
						<div class="col-md-12 d-flex">
						
							<!-- Recent Orders -->
							<div class="card card-table flex-fill">
								<div class="card-header">
									<h4 class="card-title">
                                        Date : <asp:Label ID="txtdate" runat="server" ReadOnly="true"/>
                     Slot : <asp:DropDownList OnSelectedIndexChanged="ddlSlots_SelectedIndexChanged" AutoPostBack="true" ID="ddlSlots" runat="server" DataSourceID="SqlDataSource2" DataTextField="TimeSlot" DataValueField="TimeSlot" />

									</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">


                    

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" SelectCommand="SELECT TimeSlot FROM [DoctorSchedule] WHERE (([Day] = @Day) AND ([Username] = @Username))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblDay" Name="Day" PropertyName="Text" Type="String" />
                                <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Label Visible="false" ID="lblDay" runat="server" ><%=DateTime.Now.DayOfWeek %></asp:Label>
                        

                            <asp:GridView CssClass="table table-bordered table-striped table-hover table-center mb-0" ID="GridView1" runat="server"
                                EmptyDataText="No appointment in this slot" AutoGenerateColumns="false" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Appointment Id" SortExpression="Id" />
                                    <asp:BoundField DataField="Patient" HeaderText="Patient" SortExpression="PUSername" />
                                    <asp:BoundField DataField="Booking date" HeaderText="Booking Date" SortExpression="Booking date" />
                                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Cancel.aspx?id={0}" HeaderText="Cancel" Text="<i class='fas fa-times'></i> Cancel" ControlStyle-CssClass="btn btn-sm bg-danger-light" />
                                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Done.aspx?id={0}" HeaderText="Done" Text="<i class='fas fa-check'></i> Accept " ControlStyle-CssClass="btn btn-sm bg-success-light" />
                                    
                                </Columns>
                             </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" SelectCommand="SELECT Id, PUsername AS Patient, BookingDate AS [Booking Date] FROM [DocSchedule] WHERE (([Date] = @Date) AND ([Slot] = @Slot) AND ([Status] = @Status)) and did in (select id from DoctorDetails where username =@username) ORDER BY [Id]">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtdate" Name="Date" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="ddlSlots" Name="Slot" PropertyName="SelectedValue" Type="String" />
                                    <asp:SessionParameter Name="username" SessionField="username"   Type="String" />
                                    <asp:Parameter DefaultValue="booked" Name="Status" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
</div>
                        </div>
                    </div>
                </div>
            </div>



            <h2>Past Appointments</h2>
            <asp:GridView AllowPaging="true" PageSize="5" ID="GridView2" CssClass="table table-bordered table-striped table-hover table-center mb-0"  runat="server" DataSourceID="SqlDataSource3"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" SelectCommand="SELECT Id, PUsername AS Patient, BookingDate AS [Booking Date] FROM [DocSchedule] WHERE (([Status] = @Status)) and did in (select id from DoctorDetails where username =@username) ORDER BY [Id]">
                                <SelectParameters>
                                    <asp:SessionParameter Name="username" SessionField="username"   Type="String" />
                                    <asp:Parameter DefaultValue="Done" Name="Status" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>    
        </div>
       

    </div>
    <!-- /Page Content -->
</asp:Content>

