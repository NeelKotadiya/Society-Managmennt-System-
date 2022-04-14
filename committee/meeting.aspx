<%@ Page Title="" Language="C#" MasterPageFile="~/committee/CommitteeMaster.master" AutoEventWireup="true" CodeFile="meeting.aspx.cs" Inherits="committee_meeting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="card">
    <div style="background-image: url(assets/img/slide/bgimage.jpg);">
     <div class="row">
        <div class="col-md-12">
         <div class="row mt-5 justify-content-center" data-aos="fade-up">
              <div class="col-md-4">
              <div class="row">
               <div style="text-align:center ; color:#e00a27 ; font-family:Times New Roman"> <h2>ADD MEETING</h2></div>
              </div>
                
               <div class="col-md-12 form-group mt-3 mt-md-0">
                 <label>Meeting Date</label>
                 <asp:TextBox ID="txtcal" class="form-control" runat="server" type="date"></asp:TextBox>
              </div>

               <div class="col-md-12 form-group mt-3 mt-md-0">
               <label>Subject</label>
               <asp:TextBox ID="txtsubject" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqfvalsubject" runat="server" 
                       ErrorMessage="Enter Subject" ControlToValidate="txtsubject" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
               
               <div class="col-md-12 form-group mt-3 mt-md-0">
               <label>Topic</label>
               <asp:TextBox ID="txttopic" class="form-control" runat="server"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="reqfvaltopic" runat="server" 
                       ErrorMessage="Enter Topic" ControlToValidate="txttopic" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>      
               </div>

               <div class="col-md-12 form-group mt-3 mt-md-0">
               <label>present</label>
               <asp:TextBox ID="txtpresent" class="form-control" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqfvalpresent" runat="server" 
                       ErrorMessage="Enter Present" ControlToValidate="txtpresent" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>          
               </div>

               <div class="col-md-12 form-group mt-3 mt-md-0">
               <label>Head by</label>
               <asp:TextBox ID="txtheadby" class="form-control" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqfvalheadby" runat="server" 
                       ErrorMessage="Please This Field" ControlToValidate="txtheadby" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>

                <div class="col-md-12 form-group mt-3 mt-md-0">
                <label>description</label>
                <asp:TextBox ID="txtdes" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqfvaldes" runat="server" 
                       ErrorMessage="Enter Some Description" ControlToValidate="txtdes" Display="Dynamic" 
                       ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 </div>    
                   <div class="text-center form-group" style="margin-top:10px">
                     <asp:Button class="btn btn-success" ID="btnsubmit" runat="server" Text="Submit" onclick="btnsubmit_Click"/>
                     <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                           onclick="btncancel_Click" CausesValidation="False"/>
                      <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>
               </div>
         </div>
         </div>
      </div>
   </div>
   </div>
</asp:Content>

