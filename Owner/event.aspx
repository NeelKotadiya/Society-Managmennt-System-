<%@ Page Title="" Language="C#" MasterPageFile="~/owner/ownermaster.master" AutoEventWireup="true" CodeFile="event.aspx.cs" Inherits="owner_event" %>

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
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px">Your Events</h2>
          <div class="col-md-0"></div>
            <div class="col-md-6">
      <table class="table table-bordered" style="margin-left:500px; margin-top:10px; width: 80%">

            <tr>
               <th>EVENT DATE</th>
              <th>EVENTNAME</th>
              <th>EVENTTIME</th>
              <th>DETAILS</th>
            </tr>
           
            <asp:Repeater ID="rptevent" runat="server" onitemcommand="rptevent_ItemCommand" >
            <ItemTemplate>
             <tr>
               
                <td><%# Eval("Eventdate", "{0: dd/MM/yyyy}")%></td>
                 <td><%# Eval("Eventname") %></td>
                 <td><%# Eval("Eventtime") %></td>
                  <td><asp:Button class="btn btn-success" ID="btnview" runat="server"  
                CommandName="view" CommandArgument='<%# Eval("Eventid") %>' runat="server" Text="Details" /> </td>
                
                 
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
             </div>
            </div>
            <asp:Button class="btn btn-success" ID="Button1" runat="server" 
         Text="Back" style="margin-left:750px" onclick="Button1_Click1"  
        />
            </asp:View>

 <asp:View ID="View2" runat="server">
 <div class="row" style="  margin-top:30px; margin-left:50px; margin-bottom:30px;
     border:1px solid Black;
     
          width:1400px;
          height:400px;">
<div class="row">

 <div class="col-md-5"></div>

 <div class="col-md-5" style="margin-left:1000px ; margin-top:20px ; margin-bottom:20px">
 <asp:Label ID="lbleventdate" runat="server" Text="Date:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lbldate1" runat="server" Text=""></asp:Label>
 </div>
 </div>

 <div class="row">
 <div class="col-md-2"></div>
 <div class="col-md-4" style=" border:1px solid Black; width:1000px; pading:20px; height:50px;">
 <asp:Label ID="lbleventname" runat="server" Text="Eventname:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lblename" runat="server" Text=""></asp:Label>
 </div>
 </div>

 <div class="row">
 <div class="col-md-2"></div>
 <div class="col-md-4" style=" border:1px solid Black; width:1000px; pading:20px; height:50px;">
 <asp:Label ID="lbleventtime" runat="server" Text="Eventtime:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lbletime" runat="server" Text=""></asp:Label>
 </div>
 </div>
 
 <div class="row">
 <div class="col-md-2"></div>
 <div class="col-md-4" style=" border:1px solid Black; width:1000px; pading:20px; height:50px;">
 <asp:Label ID="lbleventby" runat="server" Text="Eventby:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lbleby" runat="server" Text=""></asp:Label>
 </div>
 </div>

 <div class="row">

 <div class="col-md-2"></div>

 <div class="col-md-4" style=" border:1px solid Black; width:1000px; pading:20px; height:150px;">
 <asp:Label ID="lbleventdetails" runat="server" Text="Details:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lbledetails" runat="server" Text=""></asp:Label>
 </div>
 </div>
  
    

  <div class="row">
 <div class="form-group text-center">
  <asp:Button  class ="btn btn-success" ID="btnback" runat="server"  style="margin-bottom:15px"
                       Text="Go Back" onclick="btnback_Click" />
 </div>
 </div>

  </asp:View>
    </asp:MultiView>
    </div>
</asp:Content>

