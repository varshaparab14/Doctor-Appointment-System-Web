<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Patient_ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Page Content -->
    <div class="content">
        <div class="container">

            <!-- Doctor Widget -->
            <asp:Repeater ID="DoctorDetailsRepeater" runat="server">
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
                                            <p class="doc-location">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <%# Eval("Address") %>
                                            </p>

                                        </div>
                                    </div>

                                </div>
                                <div class="doc-info-right">
                                    <div class="clini-infos">
                                        <ul>

                                            <li><i class="far fa-money-bill-alt"></i>Rs.<%# Eval("Fees") %> </li>
                                        </ul>
                                    </div>

                                    <div class="clinic-booking">
                                        <a class="apt-btn" href="BookAppointment.aspx?id=<%# Eval("Id") %>&username=<%# Eval("username") %>">Book Appointment</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <!-- /Doctor Widget -->

            <!-- Doctor Details Tab -->
            <div class="card">
                <div class="card-body pt-0">

                    <!-- Tab Menu -->
                    <nav class="user-tabs mb-4">
                        <ul class="nav nav-tabs nav-tabs-bottom nav-justified">
                            <li class="nav-item">
                                <a class="nav-link active" href="#doc_overview" data-toggle="tab">Overview</a>
                            </li>
                        </ul>
                    </nav>
                    <!-- /Tab Menu -->

                    <!-- Tab Content -->
                    <div class="tab-content pt-0">

                        <!-- Overview Content -->
                        <div role="tabpanel" id="doc_overview" class="tab-pane fade show active">
                            <div class="row">
                                <div class="col-md-12 col-lg-9">

                                    <!-- About Details -->
                                    <div class="widget about-widget">
                                        <h4 class="widget-title">About Me</h4>
                                        <asp:Repeater ID="AboutRepeater" runat="server">
                                            <ItemTemplate>
                                                <p><%# Eval("AboutMe") %></p>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                    <!-- /About Details -->

                                    <!-- Education Details -->
                                    <div class="widget education-widget">
                                        <h4 class="widget-title">Education</h4>
                                        <div class="experience-box">
                                            <ul class="experience-list">

                                                <asp:Repeater ID="EducationRepeater" runat="server">
                                                    <ItemTemplate>
                                                        <li>
                                                            <div class="experience-user">
                                                                <div class="before-circle"></div>
                                                            </div>
                                                            <div class="experience-content">
                                                                <div class="timeline-content">
                                                                    <a href="#/" class="name"><%# Eval("University") %></a>
                                                                    <div><%# Eval("Degree") %></div>
                                                                    <span class="time"><%# Eval("PassingYear") %></span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /Education Details -->

                                    <!-- Experience Details -->
                                    <div class="widget experience-widget">
                                        <h4 class="widget-title">Work & Experience</h4>
                                        <div class="experience-box">
                                            <ul class="experience-list">

                                                <asp:Repeater ID="ExperianceRepeater" runat="server">
                                                    <ItemTemplate>
                                                        <li>
                                                            <div class="experience-user">
                                                                <div class="before-circle"></div>
                                                            </div>
                                                            <div class="experience-content">
                                                                <div class="timeline-content">
                                                                    <a href="#/" class="name"><%# Eval("Clinic") %></a>
                                                                    <div><%# Eval("FromTo") %></div>
                                                                    <span class="time"><%# Eval("Years") %></span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /Experience Details -->

                                    <!-- Awards Details -->
                                    <div class="widget awards-widget">
                                        <h4 class="widget-title">Awards</h4>
                                        <div class="experience-box">
                                            <ul class="experience-list">

                                                <asp:Repeater ID="AwardsRepeater" runat="server">
                                                    <ItemTemplate>
                                                        <li>
                                                            <div class="experience-user">
                                                                <div class="before-circle"></div>
                                                            </div>
                                                            <div class="experience-content">
                                                                <div class="timeline-content">
                                                                    <p class="exp-year"><%# Eval("Name") %></p>
                                                                    <h4 class="exp-title"><%# Eval("Years") %></h4>
                                                                    <p><%# Eval("Description") %></p>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /Awards Details -->

                                    <!-- Services List -->
                                    <div class="service-list">
                                        <asp:Repeater ID="ServiceRepetaer" runat="server">
                                            <ItemTemplate>
                                                <h4>Services</h4>
                                                <ul class="clearfix">
                                                    <li><%# Eval("Service") %></li>
                                                    
                                                </ul>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                    <!-- /Services List -->

                                    <!-- Specializations List -->
                                    <div class="service-list">
                                        <asp:Repeater ID="SpecializationRepetar" runat="server">
                                            <ItemTemplate>
                                                <h4>Specializations</h4>
                                                <ul class="clearfix">
                                                    <li><%# Eval("Specialization") %>

                                                    </li>

                                                </ul>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                    <!-- /Specializations List -->

                                </div>
                            </div>
                        </div>
                        <!-- /Overview Content -->


                    </div>
                </div>
            </div>
            <!-- /Doctor Details Tab -->

        </div>
    </div>
    <!-- /Page Content -->
</asp:Content>

