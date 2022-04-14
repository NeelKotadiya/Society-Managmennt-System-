<%@ Page Title="" Language="C#" MasterPageFile="~/owner/ownermaster.master" AutoEventWireup="true" CodeFile="meeting.aspx.cs" Inherits="owner_meeting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style>
   .form-control
   {
      border:1px solid black;
      padding-left:10px;
     }
   
   .form-control:focus
   {
        border:1px solid black;
      
   }
   
   td,th
   {
      border:1px solid grey!important; 
   }
   
   .btn
   {
       margin-bottom:10px;
   }
   
   
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
<asp:View ID="View1" runat="server">
<div class="card">
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
     <div class="row">
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px">Your Meet</h2>
          <div class="col-md-2"></div>
            <div class="col-md-8">
      <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          <table class="table table-bordered">
            <tr>
              <th>MEETINGDATE</th>
              <th>SUBJECT</th>
              <th>TOPIC</th>
               <th>VIEW</th>
            </tr>
            <asp:Repeater ID="rptmeeting" runat="server" 
                  onitemcommand="rptmeeting_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("meetdate", "{0: dd/MM/yyy}")%></td>
                <td><%# Eval("subject") %></td>
                <td><%# Eval("topic")  %></td>
                <td><asp:Button class="btn btn-danger" ID="btnview" runat="server" CommandName="view" CommandArgument='<%# Eval("meetid") %>' runat="server" Text="View" /> </td>
            </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            
   </div>
</div>
</div>
<asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Back" style="margin-left:750px" onclick="Button1_Click" 
        />
</asp:View>
<asp:View ID="View2" runat="server">
<div class="row" style="  margin-top:30px; margin-right:30px;  margin-left:50px; margin-bottom:20px;border:1px solid Black;width:1400px;height:500px;">
<div class="row">
   <div class="col-md-5"></div>
       <div class="col-md-5">
           <h1><asp:Label ID="lbltopic" runat="server"   Text=""></asp:Label></h1>
        </div>
</div>
<div class="row">
   <div class="col-md-5"></div>
     <div class="col-md-7" style="margin-left:1000px ; margin-top:20px ; margin-bottom:20px">
          <asp:Label ID="lblmeetdate" runat="server" Text="Meeting Date:" Font-Bold="True" ForeColor="#0"></asp:Label>
          <asp:Label ID="lblmeetdate1" runat="server" Text=""></asp:Label>
     </div>
</div>
<div class="row" style="margin-top:20px">
     <div class="col-md-2"></div>
        <div class="col-md-5">
             <asp:Label ID="lblsubject" runat="server" Text="Topic:" Font-Bold="True"  Font-Size="Larger" ForeColor="#0"></asp:Label>
             <asp:Label ID="lblsubject1" runat="server" Text=""></asp:Label>
         </div>
    </div>
 
<div class="row">
    <div class="col-md-2"></div>
        <div class="col-md-4" style=" border:1px solid Black; width:1000px;pading:20px;height:150px;">
      <asp:Label ID="lbldescription" runat="server" Text="Description:" Font-Bold="True" Font-Size="Larger" ForeColor="#0"></asp:Label>
      <asp:Label ID="lbldescription1" runat="server" Text=""></asp:Label>
  </div>
 </div>
 <div class="row" style="margin-top:20px">
   <div class="col-md-2"></div>
     <div class="col-md-5">
         <asp:Label ID="lblpresent" runat="server" Text="Present:" Font-Bold="True"  Font-Size="Larger" ForeColor="#0"></asp:Label>
          <asp:Label ID="lblpresent1" runat="server" Text=""></asp:Label>
       </div>
   </div>
 <div class="row" style="margin-top:20px">
     <div class="col-md-2"></div>
        <div class="col-md-5">
             <asp:Label ID="lblheadby" runat="server" Text="Head By:" Font-Bold="True"  Font-Size="Larger" ForeColor="#0"></asp:Label>
             <asp:Label ID="lblheadby1" runat="server" Text=""></asp:Label>
         </div>
    </div>
 
  <div class="row">
 <div class="form-group text-center" style="margin-top:10px">
 <asp:Button class="btn btn-success" ID="btnback" runat="server" Text="Back" 
         onclick="btnback_Click"/>
 </div>
 </div>
</asp:View>
</asp:MultiView>
</div>
</asp:Content>

