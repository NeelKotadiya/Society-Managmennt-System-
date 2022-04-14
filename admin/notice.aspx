<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="admin_notice" %>

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
          <div class="row">
           <div class="col-md-11"> <h2 style="text-align:center ; margin-top:50px ; margin-bottom:50px">NOTICE</h2></div>
           <div class="row">
            <div class="col-md-1">
                <asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" style="margin-left:1150px" onclick="btnnew_Click" /></div>
            </div>
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          
          <table class="table table-bordered">
            <tr>
              <th>NOTICE ID</th>
              <th>NOTICE DATE</th>
              <th>TITLE</th>
             
              <th>NOTICEFOR</th>
              <th>NOTICEBY</th>
              
            </tr>
            <asp:Repeater ID="rptnotice" runat="server">
            <ItemTemplate>
             <tr>
                <td><%# Eval("Noticeid") %></td>              
                <td><%# Eval("Noticedate") %></td>
                <td><%# Eval("Title")  %></td>
                
                <td><%# Eval("Noticefor")  %></td>
                <td><%# Eval("Noticeby") %></td>
               
                
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
           </div>
          
        </div>
        <div class="text-center form-group" style="margin-top:10px">
         <asp:Button ID="btnback" runat="server" class="btn btn-success" 
                style="text-align:center" Text="Back" onclick="btnback_Click" /></div>
        </asp:View>
        
<asp:View ID="View2" runat="server">
<div class="card">
  <div class="row">
    <h2 class="text-dark" style="text-align:center">Make Notice</h2>
      <div class="col-md-3"></div>
         <div class="col-md-6">
          <div class="row">
           <div class="col-md-10 form-group mt-3 mt-md-0">
                 <div class="col-md-12 form-group">
                  <label style="font-weight: bold">Title</label>
                  <asp:TextBox ID="txttitle" class="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqfvaltitle" runat="server" 
                      ErrorMessage="Enter Notice Title" ControlToValidate="txttitle" 
                      Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>

                  <div class="col-md-12 form-group mt-3 mt-md-0">
                  <label style="font-weight: bold">Details</label>
                  <asp:TextBox ID="txtdetails" class="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqfvaldetails" runat="server" 
                      ErrorMessage="Please Enter Some Details" ControlToValidate="txtdetails" 
                      Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>

                 <div class="col-md-12 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Noticefor</label>
                 <asp:TextBox ID="txtnoticefor" class="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqfvalnoticefor" runat="server" 
                      ErrorMessage="Fill This Field" ControlToValidate="txtnoticefor" 
                      Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 </div>
                 
                 <div class="col-md-12 form-group mt-3 mt-md-0"> 
                 <label style="font-weight: bold">Noticeby</label>
                 <asp:TextBox ID="txtnoticeby" class="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqfvalnoticeby" runat="server" 
                      ErrorMessage="This Field Is Required" ControlToValidate="txtnoticeby" 
                      Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 </div>
                  <div class="text-center form-group" style="margin-top:10px" >
                            <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" />
                            <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                                 onclick="btncancel_Click" CausesValidation="False" />
                  </div>  
              </div>
            </div>
       </div>
   </div>
</div>
 
 </asp:View>
</asp:MultiView>
</asp:Content>

