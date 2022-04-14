<%@ Page Title="" Language="C#" MasterPageFile="~/committee/CommitteeMaster.master" AutoEventWireup="true" CodeFile="newmaint.aspx.cs" Inherits="committee_newmaint" %>

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
   .style1
    {
        height: 38px;
    }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
<asp:View ID="View1" runat="server">
      
<div class="card  " >
<div style="background-image: url(assets/img/slide/bgimage.jpg);">
<div class="row">
    <h3 class="text-dark" style="text-align:center ; margin-top:50px ; margin-bottom:50px">SELECT MONTH & YEAR</h3>
      <div class="col-md-4"></div> 
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-6 form-group mt-3 mt-md-0"> 
              <table class="w-100" style="margin-bottom:50px">
                     <tr>
                       <td>
                          <asp:Label ID="lblmonth" runat="server" Text="month"></asp:Label>
                        </td>
                        <td colspan="2">
                           <asp:Label ID="lblyear" runat="server" Text="Year"></asp:Label>
                        </td>
                       </tr>
                          <tr>
                              <td>
                                  <asp:DropDownList ID="ddlMonth" runat="server">
                                      <asp:ListItem>January</asp:ListItem>
                                      <asp:ListItem>February</asp:ListItem>
                                      <asp:ListItem>March</asp:ListItem>
                                      <asp:ListItem>April</asp:ListItem>
                                      <asp:ListItem>May</asp:ListItem>
                                      <asp:ListItem>June</asp:ListItem>
                                      <asp:ListItem>July</asp:ListItem>
                                      <asp:ListItem>August</asp:ListItem>
                                      <asp:ListItem>September</asp:ListItem>
                                      <asp:ListItem>October</asp:ListItem>
                                      <asp:ListItem>November</asp:ListItem>
                                      <asp:ListItem>December</asp:ListItem>
                                  </asp:DropDownList>
                              </td>
                              <td>
                                  <asp:DropDownList ID="ddlYear" runat="server" onchange="PopulateDays()">
                                  </asp:DropDownList>
                              </td>
                              <td colspan="2">
                                  <asp:Button ID="btn" runat="server" onclick="btn_Click" Text="create" 
                                      BackColor="Blue" BorderColor="Black" />
                                  <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                              </td>

                              <tr style="text-align:center ; margin-left:10px">
                              <td colspan="2">
                                  <asp:Button ID="btnshow" runat="server"  style="margin-top:50px" Text="Show Your Maintainence" 
                                      onclick="btnshow_Click" BackColor="#66FFFF" BorderColor="Black" />
                                 
                              </td>
                              </tr>
                     </tr>
                        </table>
                        </div>
                    </div>
               </div>
               </div>
               </div>
</div>
</asp:View>
 <asp:View ID="View2" runat="server">
         <div class="card">
         <div style="background-image: url(assets/img/slide/bgimage.jpg);">
          <div class="row">
           <h2 style="margin-top:10px ; text-align:center"> Your Maintainences</h2>
           <div class="col-md-3"></div>
           
          
           
            <div class="col-md-6">
               <table class="table table-bordered">
               <asp:Button ID="btnback" runat="server" 
                       style="margin-left:650px ; margin-top:10px ; margin-bottom:10px ; " BorderColor="#006666"   Font-Bold="True"
                       Text="Go Back"  onclick="btnback_Click"/>
            <tr>
              <th>MAINT ID</th>
              <th>MAINTDATE</th>
              <th>MONTH</th>
              <th>YEAR</th>
              <th>DETAIL</th>
            </tr>
            <asp:Repeater ID="rptmaint" runat="server" onitemcommand="rptmaint_ItemCommand">
            <ItemTemplate>
             <tr>
                <td><%# Eval("maintid")  %></td>
                <td><%# Eval("maintdate" , "{0:dd/MM/yyyy}") %></td>
                <td><%# Eval("month") %></td>
                <td><%# Eval("year") %></td>
                <td><asp:Button class="btn btn-danger" ID="btndetail" runat="server"  
                CommandName="detail" CommandArgument='<%# Eval("maintid") %>' runat="server" Text="Detail" /> </td>
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
            </div>
         </div>
        </div>
        
        </asp:View>

      <asp:View ID="View3" runat="server">
         <div align="center">
          <table>
                 <tr>
                     <td colspan="2" class="style1">
                         <h2 style="margin-top:10px"> Create Maintainence Details</h2></td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="lblheading" runat="server" Text="Heading"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtheading" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="lblamount" runat="server" Text="Amount"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="lbldes" runat="server" Text="Description"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtdes" runat="server" TextMode="MultiLine"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2" style="text-align:center ">
                         <asp:Button ID="btnsave"  runat="server" Text="Save" style="margin-top:30px ; margin-bottom:30px" onclick="btnsave_Click" 
                             BackColor="#009933" BorderColor="Black" />
                         <asp:Button ID="btncancle" runat="server" Text="Cancel" 
                             onclick="btncancle_Click" BackColor="Red" BorderColor="Black" /></td>
                 </tr>
             </table>
         
         </div>
        </asp:View>
    </asp:MultiView>
</div>
</asp:Content>

