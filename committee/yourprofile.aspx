<%@ Page Title="" Language="C#" MasterPageFile="~/committee/CommitteeMaster.master" AutoEventWireup="true" CodeFile="yourprofile.aspx.cs" Inherits="committee_yourprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image: url(assets/img/slide/bgimage.jpg);">

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
<asp:View ID="View1" runat="server">
   <div class="col-12" >
       <h2 class="heading ; fw-bold" style="text-align:center " ><i class="fas fa-user-alt"></i> My <span style="color:Purple">Profile</span></h2>
    
    <div class="row mt-5  justify-content-center"  data-aos="fade-up">
    <div class="col-md-4"></div>
    <div class="col-md-2">
    <td><asp:Image  class="border border-5 ; border border-dark" style="width:200px;height:200px " ID="Image3"  runat="server" /></td>
    </div>
  
  <div class="col-6">
  <ul>
   <table>
    <tr>
    <td>
        <asp:Label ID="lblcomname" runat="server" Text="YourName:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#4169E1"></asp:Label>
        <td><asp:Label ID="lblcomname1" runat="server" Text=""></asp:Label></td>        
    </td>
    </tr>

    <tr>
    <td>
     <asp:Label ID="lbldesig" runat="server" Text="Designation:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#4169E1"></asp:Label>
       <td><asp:Label ID="lbldesig1" runat="server" Text=""></asp:Label></td>         
    </td>
    </tr>  

    <tr>
    <td> 
    <asp:Label ID="lblresp" runat="server" Text="Responsibility:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#4169E1"></asp:Label>
    <td><asp:Label ID="lblresp1" runat="server" Text=""></asp:Label></td>         
    </td>
    </tr>

     <tr>
    <td>
     <asp:Label ID="lblcontactno" runat="server" Text="Contactno:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#4169E1"></asp:Label>
       <td> <asp:Label ID="lblcontactno1" runat="server" Text=""></asp:Label> </td>       
    </td>
    </tr>
    
   
   <tr>
   <td>
     <asp:Label ID="lblemailid" runat="server" Text="EmailId:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#4169E1"></asp:Label>
      <td><asp:Label ID="lblemailid1" runat="server" Text=""></asp:Label></td>          
    </td>
    </tr>
     
   <tr>
   <td>
   <asp:Button class="btn btn-success" ID="btnup" runat="server" Text="Update" onclick="btnup_Click"/>
   </td>
   </tr>
                
   
   </table>
   </ul>
   </div>
  </div>
  </div>
 </asp:View>
 <asp:View ID="View2" runat="server">
 <div class="row">
    <div class="col-md-12">
     <div class="row mt-5 justify-content-center" data-aos="fade-up">
     
    
          <div class="col-lg-10">
            <form  method="post" role="form" class="php-email-form">
              <div class="row">
               <h1 class="text-dark" style="text-align:center">UPDATE YOUR PROFILE</h1>
                <div class="col-md-6 form-group">
                    <label>Your Name</label>
                       <asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>              
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                <label>Designation</label>
                <asp:TextBox ID="txtdesig" class="form-control" runat="server"></asp:TextBox>
                </div>
              </div>
              <div class="row">
              <div class="col-md-6 form-group" >
                 <label>Responsibility</label>
                 <asp:TextBox ID="txtresp" class="form-control" runat="server" 
                      TextMode="MultiLine"></asp:TextBox>
              </div>
                 
             <div class="col-md-6 form-group mt-3 mt-md-0">
               <label>Contactno</label>
                <asp:TextBox ID="txtcontactno" class="form-control" runat="server"></asp:TextBox>
              </div>
              </div>
              
              <div class="row">
              <div class="col-md-6 form-group mt-3 mt-md-0">
                <label>Emailid</label>
                <asp:TextBox ID="txtemailid" class="form-control" runat="server"></asp:TextBox>
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
               <label>Image</label>
                <asp:FileUpload ID="fupimg" runat="server" class="form-control" />
              </div>
              </div>
              
              <div class="row">
              <div class="text-center form-group" style="margin-top:10px" >
                <asp:Button class="btn btn-success" ID="btnupdate" runat="server" Text="Update"  onclick="btnupdate_Click" />
                <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" onclick="btncancel_Click"/>
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

