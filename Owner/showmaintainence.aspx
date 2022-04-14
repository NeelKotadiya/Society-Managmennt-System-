<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/ownermaster.master" AutoEventWireup="true" CodeFile="showmaintainence.aspx.cs" Inherits="Owner_showmaintainence" %>

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
        <h2 class="text-dark" style="text-align:center ; margin-top:10px ; margin-bottom:10px">Your Maintainence</h2>
          <div class="col-md-4"></div>
            <div class="col-md-4">
               <table class="table table-bordered">
            <tr>
             
              <th>MAINTDATE</th>
              <th>MONTH</th>
              <th>YEAR</th>
              <th>AMOUNT</th>
               <th>PAYMENT</th>
              <th>DETAIL</th>
            </tr>
            <asp:Repeater ID="rptmaint" runat="server" onitemcommand="rptmaint_ItemCommand">
            <ItemTemplate>
             <tr>
                
                <td><%# Eval("maintdate" , "{0:dd/MM/yyyy}") %></td>
                <td><%# Eval("month") %></td>
                <td><%# Eval("year") %></td>
                 <td><%# Eval("amount") %></td>
                  <td><asp:Button class="btn btn-danger" ID="btnpayment" runat="server"  
                CommandName="payment" CommandArgument='<%# Eval("maintid") %>' runat="server" Text="Payment" /> </td>

                <td><asp:Button class="btn btn-danger" ID="btndetail" runat="server"  
                CommandName="detail" CommandArgument='<%# Eval("maintid") %>' runat="server" Text="Detail" /> </td>
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
           <div class="col-md-3"></div>
            <div class="col-md-6">
               <table class="table table-bordered">
            <tr>
              <th>Heading</th>
              <th>Amount</th>
             </tr>
            <asp:Repeater ID="rptmaintdetails" runat="server">
            <ItemTemplate>
             <tr>
                <td><%# Eval("heading")  %></td>
                <td><%# Eval("amount") %></td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
             <tr>
                    <td>
                        <asp:Label ID="lbltotal" runat="server" Text="Total:"></asp:Label>
                     </td>

                    <td>
                   <asp:Label ID="lblsum" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
             </table>
             </div>
             </div>
            <div>
               
                  
                   <asp:Button ID="btnback" runat="server" Text="Back" style="margin-left:1050px; margin-bottom:20px" onclick="btnback_Click"  />
               </div>
        </asp:View>
    </asp:MultiView>
</div>
</asp:Content>

