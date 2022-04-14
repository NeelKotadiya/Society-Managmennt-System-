<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="parking.aspx.cs" Inherits="admin_parking" %>

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
           <div class="col-md-11"> <h2 style="text-align:center ; margin-top:50px ; margin-bottom:50px"><i class="fa fa-car" aria-hidden="true"></i>PARKING DETAILS</h2></div></div>
           <div class= "row">
            <div class="col-md-1">
                <asp:Button class="btn btn-success" ID="btnnew" 
                    runat="server" Text="New" style="margin-left:1050px" onclick="btnnew_Click"  /></div>
            </div>
            </div>
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          
          <table class="table table-bordered">
            <tr>
              <th>PARK ID</th>
              <th>LOCATION</th>
              <th>SLOT</th>
              <th>PARKING SIZE</th>
              <th>PRICE</th>
              
              <th>PARKING TYPE</th>
              <th>STATUS</th>
              <th>UPDATE</th>
             
            </tr>
            <asp:Repeater ID="rptpark" runat="server" onitemcommand="rptpark_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("parkid")  %></td>
                <td><%# Eval("location") %></td>
                <td><%# Eval("slot")  %></td>
                <td><%# Eval("parksize") %></td>
                <td><%# Eval("price")  %></td>
                <td><%# Eval("parktype") %></td>
                <td><%# Eval("status") %></td>
             <td><asp:Button class="btn btn-primary" ID="btnupdate" runat="server"  CommandName="update" CommandArgument='<%# Eval("parkid") %>' runat="server" Text="Update" /> </td>
               
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
        <div class="text-center form-group" style="margin-top:10px">
         <asp:Button ID="btnback" runat="server" class="btn btn-success" 
                style="text-align:center" Text="Back" onclick="btnback_Click" /></div>
        </asp:View>
        
<asp:View ID="View2" runat="server">
  <div class="card">
    <div class="row">
      <div class="col-md-12">
         <div class="row mt-5 justify-content-center" data-aos="fade-up">
           <div class="col-lg-10">
             <div class="row">
               <h2 class="text-dark" style="text-align:center"><i class="fa fa-car" aria-hidden="true"></i>ADD PARKING DETAILS</h2>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">WING</label>
                 <asp:DropDownList  class="form-control" ID="ddloc" runat="server">
                     <asp:ListItem>A</asp:ListItem>
                     <asp:ListItem>B</asp:ListItem>
                     <asp:ListItem>C</asp:ListItem>
                     <asp:ListItem>D</asp:ListItem>
                     <asp:ListItem>E</asp:ListItem>
                     <asp:ListItem>F</asp:ListItem>
                 </asp:DropDownList>
              </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <label style="font-weight: bold">Slot</label>
                  <asp:TextBox ID="txtslot" class="form-control" runat="server"></asp:TextBox>
                 
               </div>
             </div>

             <div class="row">
               
              <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Parking Size</label>
                 <asp:TextBox ID="txtsize" class="form-control" runat="server"></asp:TextBox>
                 
              </div>

              <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Price</label>
                   <asp:TextBox ID="txtprice" class="form-control" runat="server"></asp:TextBox>
                   
               </div>
            </div>

            <div class="row">
               <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Parking Type</label>
                  <asp:DropDownList  class="form-control" ID="ddtype" runat="server">
                     <asp:ListItem>Owner</asp:ListItem>
                     <asp:ListItem>Visitor</asp:ListItem>
                     
                 </asp:DropDownList>
               </div>
               <div class="col-md-6 form-group mt-3 mt-md-0">
                   <label style="font-weight: bold">Status</label>
                   <asp:TextBox ID="txtstatus" class="form-control" runat="server"></asp:TextBox>
                  
              </div>
              </div>
               <div class="row">
                         <div class="text-center form-group" style="margin-top:10px" >
                            <asp:Button class="btn btn-success" ID="btnsave" runat="server" Text="Save" 
                                 onclick="btnsave_Click" />
                            <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" onclick="btncancel_Click"/>
                       </div>
                     </div>
               </div>
          </div>
        </div>
      </div>
    </div>
</asp:View>
</asp:MultiView>
</asp:Content>

