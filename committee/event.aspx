<%@ Page Title="" Language="C#" MasterPageFile="~/committee/CommitteeMaster.master" AutoEventWireup="true" CodeFile="event.aspx.cs" Inherits="committee_event" %>

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
           <div style="text-align:center ; color:#e00a27 ; font-family:Times New Roman"> <h2> EVENT DETAILS</h2></div>
            <div class="row">
             <div class="col-md-2"></div>
             <div class ="col-md-8">
            <div class="row-md-1" style="margin-left:850px ; margin-bottom:10px">
            
           
             <asp:Button class="btn btn-success" ID="btnnew" runat="server" Text="New" onclick="btnnew_Click" />
              
             </div>
           
          <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
          
          <table class="table table-bordered">
            <tr>
             <th>EVENTDATE</th>
              <th>EVENTNAME</th>
              <th>EVENTTIME</th>
              <th>EVENTBY</th>
              <th>DETAILS</th>
              
            </tr>
            <asp:Repeater ID="rptevent" runat="server" onitemcommand="rptevent_ItemCommand">
            <ItemTemplate>
             <tr>
               
                <td><%# Eval("Eventdate" , "{0:dd/MM/yyyy}")  %></td>
                <td><%# Eval("Eventname") %></td>
                <td><%# Eval("Eventtime") %></td>
                <td><%# Eval("Eventby")  %></td>
                <td><%# Eval("Details") %></td>
                
              </tr>
            </ItemTemplate>
            </asp:Repeater>
            </table>
            </div>
            </div>
            </div>
            </div>
             <asp:Button ID="btnback" runat="server" class="btn btn-success" style="margin-left:750px" onclick="btnback_Click" Text="Back" />
        </div>
        </div>
        </asp:View>
        
<asp:View ID="View2" runat="server">
  <div class="card">
  <div style="background-image: url(assets/img/slide/bgimage.jpg);">

    <div class="row">
      <div class="col-md-12">
         <div class="row mt-6 justify-content-center" data-aos="fade-up">
           <div class="col-md-3">
             <div class="row">
              <div style="text-align:center ; color:#e00a27 ; font-family:Times New Roman"> <h3>ADD EVENTS</h3></div>
              </div>
               <div class="col-md-6 form-group mt-3 mt-md-0">
               <label style="font-weight: bold">EventDate</label>
               <asp:TextBox ID="txtcal" class="form-control" runat="server"  type="date"
                      Width="388px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalcal" runat="server" 
                       ErrorMessage="Please Select Date" ControlToValidate="txtcal" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Eventname</label>
                 <asp:TextBox ID="txteventname" class="form-control" runat="server" 
                      Width="388px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqfvaleventname" runat="server" 
                       ErrorMessage="Enter Event Name" ControlToValidate="txteventname" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Eventtime</label>
                 <asp:TextBox ID="txteventtime" class="form-control" runat="server" Width="389px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqfvaleventtime" runat="server" 
                       ErrorMessage="Enter Event Time" ControlToValidate="txteventtime" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Eventby</label>
                 <asp:TextBox ID="txteventby" class="form-control" runat="server" Width="389px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvaleventby" runat="server" 
                       ErrorMessage="Enter Event By" ControlToValidate="txteventby" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                 <label style="font-weight: bold">Details</label>
                 <asp:TextBox ID="txtdetails" class="form-control" runat="server" Width="389px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqfvaldetails" runat="server" 
                       ErrorMessage="Write Some Event Details" ControlToValidate="txtdetails" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
              </div>
               <div class="row">
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
      </div>
    
 
 </asp:View>
</asp:MultiView>

</asp:Content>

