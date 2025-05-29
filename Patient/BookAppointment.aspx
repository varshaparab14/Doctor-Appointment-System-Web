<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="BookAppointment.aspx.cs" Inherits="Patient_BookAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container">
    <div class="row" style="padding-top:30px">
        <div class="col-md-6" style="padding-bottom:30px">
            <h4>Select Date</h4>

            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <asp:Label Visible="false" ID="Label1" runat="server" Text=""></asp:Label>
        </div>

        <div class="col-md-6">
            <h4>Select Slot<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnStr %>" SelectCommand="SELECT [TimeSlot] FROM [DoctorSchedule] WHERE (([Username] = @Username) AND ([Day] = @Day))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Username" QueryStringField="username" Type="String" />
                    <asp:ControlParameter ControlID="Label1" Name="Day" PropertyName="Text" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TimeSlot" DataValueField="TimeSlot">
                </asp:DropDownList>
            </h4>

            <asp:Button Text="Book Appoinment" CssClass="btn btn-primary" runat="server" id="btnCheck" OnClick="btnCheck_Click" />
            <br />    
            <asp:Label ID ="lblstatus" runat="server" CssClass="text-danger"/>
            
             </div>
    </div>
    </div>
    
    
</asp:Content>

