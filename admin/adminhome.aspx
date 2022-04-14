<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="admin_adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="container-fluid py-4">
      <div class="row">
        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">person</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize"><a href="owner.aspx"><h6>OWNERS</h6></a></p>
                  <asp:Label ID="lblowner" runat="server" Text=""></asp:Label>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
            </div>
          </div>
        </div>
       
        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">person</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize"><a href="committee.aspx"><h6>COMMITTEE</h6></a></p>
                  <asp:Label ID="lblcommittee" runat="server" Text=""></asp:Label>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
            </div>
          </div>
        </div>
        <div class="col-xl-4 col-sm-6">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">person</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize"><a href="visitor.aspx"><h6>VISITORS</h6></a></p>
                <asp:Label ID="lblvisitor" runat="server" Text=""></asp:Label>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-lg-4 col-md-6 mt-4 mb-4">
          <div class="card z-index-2 ">
             <div class="card-body">
              <h6 class="mb-0"><i class="fa fa-car" aria-hidden="true"></i>PARKING</h6>
              <hr class="dark horizontal">
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize"><a href="parking.aspx"><h6><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>PARKING</h6></a></p>
                <asp:Label ID="lblpark" runat="server" Text=""></asp:Label>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mt-4 mb-4">
          <div class="card z-index-2  ">
            <div class="card-body">
              <h6 class="mb-0  "><i class="fa fa-check-circle" aria-hidden="true"></i>PARKING ALLOCATION</h6>
              <hr class="dark horizontal">
               <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize"><a href="parkallocation.aspx"><h6><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>ALLOCATION</h6></a></p>
                <asp:Label ID="lblpark1" runat="server" Text=""></asp:Label>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mt-4 mb-3">
          <div class="card z-index-2 ">
            <div class="card-body">
              <h6 class="mb-0  "><i class="fa fa-file-text" aria-hidden="true"></i>NOTICE</h6>
              <hr class="dark horizontal">
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize"><a href="Notice.aspx"><h6><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>NOTICE</h6></a></p>
                <asp:Label ID="lblnotice" runat="server" Text=""></asp:Label>
              </div>
           </div>
        </div>
      </div>
 </div>   
 </div>
    
  
</asp:Content>

