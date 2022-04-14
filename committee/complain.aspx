<%@ Page Title="" Language="C#" MasterPageFile="~/committee/CommitteeMaster.master" AutoEventWireup="true" CodeFile="complain.aspx.cs" Inherits="committee_complain" %>

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
 <div style="background-image: url(assets/img/slide/bgimage.jpg);">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
      <asp:View ID="View1" runat="server">
   
      <div class="card">
      <div style="background-image: url(assets/img/slide/bgimage.jpg);">
        <div class="row">
           <div class="col-md-3"></div>
            <div class="col-md-6">
            <div class="row">
            <div style="text-align:center ; color:#e00a27 ; font-family:Times New Roman"> <h2>COMPLAIN DETAILS</h2></div>
           </div>
               <table class="table table-bordered">
            <tr>
              
              <th>COMPLAIN DATE</th>
              <th>COMPLAIN FOR</th>
              <th>DETAILS</th>
              <th>STATUS</th>
              <th>SOLUTION</th>
              <th>UPDATE</th>
            </tr>
            <asp:Repeater ID="rptcomplain" runat="server" onitemcommand="rptcomplain_ItemCommand">
            <ItemTemplate>
             <tr>
              
                <td><%# Eval("complaindate", "{0: dd/MM/yyy}") %></td>
                <td><%# Eval("complainfor") %></td>
                <td><%# Eval("details") %></td>
                <td><%# Eval("status") %></td>
                 <td><%# Eval("solution") %></td>
                <td><asp:Button class="btn btn-danger" ID="btnupdate" runat="server" CommandName="update" CommandArgument='<%# Eval("complainid") %>' runat="server" Text="Update" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
         </div>
         <asp:Button class="btn btn-success" ID="Button1" runat="server" 
         Text="Back" style="margin-left:750px" onclick="Button1_Click"  
        />
         </div>
         </div>
</asp:View>
<asp:View ID="View2" runat="server">
<div class="row">
  <div class="col-md-12">
     <div class="row mt-4 justify-content-center" data-aos="fade-up">
       <div class="col-lg-6">
            <form  method="post" role="form" class="php-email-form">
              <div class="row">
                <div style="text-align:center ; color:#e00a27 ; font-family:Times New Roman"> <h3>ENTER YOUR COMPLAIN</h3></div>
                    <div class="col-md-6 form-group mt-3 mt-md-0">
                    <label>Complain For</label>
                    <asp:TextBox ID="txtcomplainfor" class="form-control" runat="server"></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="reqfvalcomplainfor" runat="server" 
                        ErrorMessage="Enter Your Complain" ControlToValidate="txtcomplainfor" 
                        Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator> 
                     </div>  
                     
                    <div class="col-md-6 form-group mt-3 mt-md-0">           
                    <label>Details</label>
                    <asp:TextBox ID="txtdetails" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqfvaldetails" runat="server" 
                        ErrorMessage="Enter Your Complain Details" ControlToValidate="txtdetails" 
                        Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>

                   <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label>Solution</label>
                   <asp:TextBox ID="txtsolution" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalsolution" runat="server" 
                        ErrorMessage="Enter Your Solutions" ControlToValidate="txtsolution" 
                        Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>
              </div>
           <div class="row">
              <div class="text-center form-group" style="margin-top:10px" >
                <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" 
                      onclick="btnsave_Click"/>
                <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                      onclick="btncancel_Click" />

              </div>
            </div>
          </form>
         </div>
       </div>
     </div>
     </div>
        </asp:View>
        
    </asp:MultiView>
</div>
</asp:Content>

