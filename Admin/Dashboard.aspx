<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Favicons -->
		<link type="image/x-icon" href="assets/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="assets/css/style.css">
		
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Page Wrapper -->
            <div class="container page-wrapper">
			
                <div class="content">
					
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								
								<ul class="breadcrumb">
									<li class="breadcrumb-item active"><h3 class="page-title">Dashboard: Welcome Admin!</h3></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->

					<div class="row">
						<div class="col-md-4">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-primary border-primary">
											<i class="fa fa-user-md"></i>
										</span>
										<div class="dash-count">
											<h3><asp:Label ID="lblDoctor" runat="server" /> </h3>
										</div>
									</div>
									<div class="dash-widget-info">
										<h6 class="text-muted">Doctors</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-primary w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-success">
											<i class="fa fa-heartbeat"></i>
										</span>
										<div class="dash-count">
											<h3><asp:Label ID="lblPatient" runat="server" /></h3>
										</div>
									</div>
									<div class="dash-widget-info">
										
										<h6 class="text-muted">Patients</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-success w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-danger border-danger">
											<i class="far fa-calendar-alt"></i>
										</span>
										<div class="dash-count">
											<h3><asp:Label ID="lblAppointment" runat="server" /></h3>
										</div>
									</div>
									<div class="dash-widget-info">
										
										<h6 class="text-muted">Appointment</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-danger w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>						
                    </div>
					
					<div class="row">
						<div class="col-md-6 d-flex">
						
							<!-- Recent Orders -->
							<div class="card card-table flex-fill">
								<div class="card-header">
									<h4 class="card-title">Doctors List</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										
											<asp:GridView ID="GridView1" PageSize="7" AllowPaging="True" class="table table-bordered table-striped table-hover table-center mb-0" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
            <asp:HyperLinkField DataNavigateUrlFields="id, isactive" DataNavigateUrlFormatString="change.aspx?id={0}&amp;isactive={1}" HeaderText="Change Status" Text="change">
            <ControlStyle CssClass="btn btn-sm bg-info-light" />
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
									</div>
								</div>
							</div>
							<!-- /Recent Orders -->
							
						</div>
						<div class="col-md-6 d-flex">
						
							<!-- Feed Activity -->
							<div class="card  card-table flex-fill">
								<div class="card-header">
									<h4 class="card-title">Patients List</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										
                                    <asp:GridView ID="GridView2" PageSize="7" AllowPaging="True" class="table table-bordered table-striped table-hover table-center mb-0" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
            <asp:HyperLinkField DataNavigateUrlFields="id, isactive" DataNavigateUrlFormatString="change.aspx?id={0}&amp;isactive={1}" HeaderText="Change Status" Text="change">
            <ControlStyle CssClass="btn btn-sm bg-info-light" />
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    
                                    
                                    
                                    </div>
								</div>
							</div>
							<!-- /Feed Activity -->
							
						</div>
					</div>
					
					
				</div>			
			</div>
			<!-- /Page Wrapper -->

  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" SelectCommand="SELECT [Id], [Username], [IsActive] FROM [tblUser] WHERE ([Role] = @Role)">
        <SelectParameters>
            <asp:Parameter DefaultValue="d" Name="Role" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" SelectCommand="SELECT [Id], [Username], [IsActive] FROM [tblUser] WHERE ([Role] = @Role)">
        <SelectParameters>
            <asp:Parameter DefaultValue="p" Name="Role" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

