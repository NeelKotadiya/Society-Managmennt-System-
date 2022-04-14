<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/ownermaster.master" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="Owner_notice" %>

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
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px">Notice</h2>
          <div class="col-md-0"></div>
            <div class="col-md-6">
      <table class="table table-bordered" style="margin-left:500px; margin-top:10px; width: 80%">

            <tr>
               <th>NOTICE DATE</th>
              <th>TITLE</th>
              <th>VIEW</th>
            </tr>
           
            <asp:Repeater ID="rptnotice" runat="server" onitemcommand="rptnotice_ItemCommand" >
            <ItemTemplate>
             <tr>
               
                <td><%# Eval("Noticedate" , "{0:dd/MM/yyyy}") %></td>
                 <td><%# Eval("Title") %></td>
                  <td><asp:Button class="btn btn-danger" ID="btnview" runat="server"  
                CommandName="view" CommandArgument='<%# Eval("Noticeid") %>' runat="server" Text="View" /> </td>
                
                 
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
             </div>
            </div>
            <asp:Button class="btn btn-success" ID="Button1" runat="server" 
         Text="Back" style="margin-left:750px" onclick="Button1_Click" 
        />
            </asp:View>

 <asp:View ID="View2" runat="server">
 <div class="row" style="  margin-top:30px; margin-left:50px; margin-bottom:30px;
     border:1px solid Black;
     
          width:1400px;
          height:400px;">
 <div class="row">

 <div class="col-md-5"></div>

 <div class="col-md-5">
  <h1><asp:Label ID="lbltitle" runat="server"   Text="neel"></asp:Label></h1>
            </div>
 </div>

 <div class="row">

 <div class="col-md-5"></div>

 <div class="col-md-5" style="margin-left:1000px ; margin-top:20px ; margin-bottom:20px">
 <asp:Label ID="lbldate" runat="server" Text="Date:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lbldate1" runat="server" Text="neel"></asp:Label>
            </div>
 </div>

 <div class="row">

 <div class="col-md-2"></div>

 <div class="col-md-4" style=" border:1px solid Black; width:1000px; pading:20px; height:150px;">
 <asp:Label ID="lbldetail1" runat="server" Text="Details:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lbldetail" runat="server" Text="neel"></asp:Label>
            </div>
 </div>
  
    
  
 <div class="row" style="margin-top:20px">

 <div class="col-md-2"></div>

 <div class="col-md-5">
 <asp:Label ID="lblfor" runat="server" Text="Notice For:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lblnoticefor" runat="server" Text="neel"></asp:Label>
            </div>
 </div>
 <div class="row" style="margin-top:20px">

 <div class="col-md-2"></div>

 <div class="col-md-5">
 <asp:Label ID="lblby" runat="server" Text="Notice By:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#0"></asp:Label>
  <asp:Label ID="lblnoticeby" runat="server" Text="neel"></asp:Label>
</div>
 </div>
 </div>

 <div class="row">
<div class="form-group text-center">
  <asp:Button  class ="btn btn-success" ID="btnback" runat="server"  style="margin-bottom:15px" Text="Go Back" onclick="btnback_Click" />
 </div>
 </div>

  </asp:View>
    </asp:MultiView>
    </div>
</asp:Content>

