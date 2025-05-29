<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Patient_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Appointment Tab -->
<div  class="container" style="margin: 20px auto">
<div id="pat_appointments" class="tab-pane fade show active">
	<div class="card card-table mb-0">
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-hover table-center mb-0">
					<thead>
						<tr>
							<th>Doctor</th>
							<th>Appt Date</th>
							<th>Booking Date</th>
							<th>Status</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
                        <asp:Repeater ID="dashboardrepeater" runat="server">
                            <ItemTemplate>
						        <tr>
							<td>
								<h2 class="table-avatar">
									<a href="doctor-profile.html" class="avatar avatar-sm mr-2">
										<img class="avatar-img rounded-circle" src="<%# Eval("ImagePath") %>">
									</a>
									<a href="doctor-profile.html">Dr. <%# Eval("Name") %> <span><%#Eval("Type") %></span></a>
								</h2>
							</td>
							<td><%# Eval("Date") %> <span class="d-block text-info"><%#Eval("slot") %></span></td>
							<td><%# Eval("bookingdate") %></td>
							<td><span class="badge badge-pill bg-success-light"><%# Eval("status") %></span></td>
							<td class="text-right">
								<div class="table-action">
									<a href="cancel.aspx?id=<%#Eval("id") %>" class="btn btn-sm bg-info-light">
										<i class="fas fa-times"></i> Cancel
									</a>
								</div>
							</td>
						</tr>
                            </ItemTemplate>
                        </asp:Repeater>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</div>
</asp:Content>

