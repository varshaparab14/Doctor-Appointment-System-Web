<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="SearchDoctor.aspx.cs" Inherits="Patient_SearchDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
            <asp:Repeater ID="detailsrep" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
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
                                            <p class="doc-location">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <%# Eval("Address") %>
                                            </p>

                                        </div>

                                        <!-- Fees Details -->
                                        <p class="doc-department">Fees:
                                            <%# Eval("Fees") %>
                                        </p>
                                        <!-- /Fees Details -->

                                        </div>

                                    
                                </div>
                                 
                            </div>
                             <a class="btn btn-primary btn-lg login-btn" href="ViewProfile.aspx?id=<%# Eval("Id") %>">View Profile</a> 
                                 
                        </div>
                    </div>
                    </div>

                
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>
</asp:Content>

