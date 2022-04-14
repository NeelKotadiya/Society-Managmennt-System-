<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="adminprofile.aspx.cs" Inherits="admin_adminprofile" %>

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
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">

        <div class="col-12">
       

        
        <h2 class="heading ; fw-bold" style="text-align:center" ><i class="fas fa-user-alt"></i> My <span style="color:Purple">Profile</span></h2>
    
    <div class="row mt-5 justify-content-center" data-aos="fade-up">
    <div class="col-md-4"></div>
    <div class="col-md-2">
    <td><asp:Image  class="border border-5 ; border border-dark" style="width:200px;height:200px " ID="Image2"  runat="server" /></td>
    </div>
  
  <div class="col-6">
  <ul>
   <table>
    <tr>
    <td>
        <asp:Label ID="lbladname" runat="server" Text="AdminName:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#4169E1"></asp:Label>
        <td><asp:Label ID="lbladname1" runat="server" Text=""></asp:Label></td>    
         
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
     <asp:Label ID="lbldes" runat="server" Text="Profession:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#4169E1"></asp:Label>
       <td><asp:Label ID="lbldes1" runat="server" Text=""></asp:Label></td>         
    </td>
    </tr>   
    
    
    
    <tr>
    <td> 
    <asp:Label ID="lbladdress" runat="server" Text="Address:" Font-Bold="True" 
            Font-Size="Larger" ForeColor="#4169E1"></asp:Label>
    <td><asp:Label ID="lbladdress2" runat="server" Text=""></asp:Label></td>         
    </td>
    </tr>
     
   
   <tr>
   <td>
   <asp:Button class="btn btn-success" ID="btn1" runat="server" Text="Update" onclick="btn1_Click" />
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
                    <label>Admin Name</label>
                       <asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="reqfvaladname" runat="server" 
                        ErrorMessage="Enter Your Name" ControlToValidate="txtname" Display="Dynamic" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>               
                </div>
                 <div class="col-md-6 form-group mt-3 mt-md-0">
               <label>Contactno</label>
                <asp:TextBox ID="txtcontactno" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqfvalcnum" runat="server" 
                        ErrorMessage="Enter Your Contact No" ControlToValidate="txtcontactno" Display="Dynamic" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
              </div>

              <div class="row">
              <div class="col-md-6 form-group mt-3 mt-md-0">
                <label>Emailid</label>
                <asp:TextBox ID="txtemailid" class="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqfvalemailid" runat="server" 
                        ErrorMessage="Enter Your Emailid" ControlToValidate="txtemailid" Display="Dynamic" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                <label>Address</label>
                <asp:TextBox ID="txtaddress" class="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqfvakaddress" runat="server" 
                        ErrorMessage="Enter Your Address" ControlToValidate="txtaddress" Display="Dynamic" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="row">
               <div class="col-md-6 form-group">
                <label>City</label>
                    <asp:DropDownList  class="form-control" ID="ddcity" runat="server">
                    </asp:DropDownList>
             </div>
             
              <div class="col-md-6 form-group mt-3 mt-md-0">
               <label>Image</label>
                <asp:FileUpload ID="fupimg" runat="server" class="form-control" />
              </div>
              </div>
              <div class="col-md-6 form-group" >
                 <label>Profession</label>
                 <asp:TextBox ID="txtdescription" class="form-control" runat="server" 
                      TextMode="MultiLine"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="please Write some Description" ControlToValidate="txtdescription" Display="Dynamic" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </div>
              <div class="row">
              <div class="text-center form-group" style="margin-top:10px" >
                <asp:Button class="btn btn-success" ID="btnupdate" runat="server" Text="Update" 
                      onclick="btnupdate_Click"/>
                <asp:Button class="btn btn-danger" ID="btncancel" runat="server" Text="Cancel" 
                      onclick="btncancel_Click"/>
              </div>
              </div>
          </form>
         </div>
       </div>
     </div>
  </asp:View>
  </asp:MultiView>
</asp:Content>

