<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PayuTransaction.aspx.cs" Inherits="payu_bolt.PayuTransaction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <!-- this meta viewport is required for BOLT //-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" >
    <!-- BOLT Sandbox/test //-->
    <script id="bolt" src="https://sboxcheckout-static.citruspay.com/bolt/run/bolt.min.js" bolt-color="e34524" bolt-logo="http://boltiswatching.com/wp-content/uploads/2015/09/Bolt-Logo-e14421724859591.png"></script>
    <!-- BOLT Production/Live //-->
    <!--// script id="bolt" src="https://checkout-static.citruspay.com/bolt/run/bolt.min.js" bolt-color="e34524" bolt-logo="http://boltiswatching.com/wp-content/uploads/2015/09/Bolt-Logo-e14421724859591.png"></script //-->

<style type="text/css">
    
  td{padding:10px;font-family:Calibri;font-size:18px}
  input{padding:5px;};
</style>

</head>
<body>
  <div style="background-image: url(images/bgimage.jpg);">
    <form id="payment_form" name="payment_form" runat="server">
 <style>
span.text 
{
	float:left;
	width:180px;
}

div.dv
{
	margin-bottom:5px;
}

</style>

  <div>
    
    <input type="hidden" id="udf5" name="udf5" value="BOLT_KIT_ASP.NET" />
    <input type="hidden" id="surl" name="surl" value="<%= Session["surl"]%>" />
    <input type="hidden" id="mkey" name="mkey" value="7SrztrGB" />
    <input type="hidden" id="msalt" name="msalt" value="erBkQqsbuU" />
    <input type="hidden" id="tranid" name="tranid" value="<%=Session["txnid"] %>" />
    <input type="hidden" id="hashval" name="hashval" value="" />
   
    <div class="dv">
    <%--<span class="text"><label>Merchant Key:</label></span>
    <span><input type="text" id="key" name="key" placeholder="Merchant Key" value="" /></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Merchant Salt:</label></span>
    <span><input type="text" id="salt" name="salt" placeholder="Merchant Salt" value="" /></span>
    </div>--%>
    
    <%--<div class="dv">
    <span class="text"><label>Transaction/Order ID:</label></span>
    <span><input type="text" id="txnid" name="txnid" placeholder="Transaction ID" value="<%=Session["txnid"] %>" /></span>
    </div>--%>
 <center>

 <div class="card">
         
          <div class="row">
           <h2 style="margin-top:10px ; text-align:center"> Payment Details</h2>
          
   <table>
     
     <tr>
     <td>First Name:</td>
       <td>
         <%-- <input type="text" id="fname" name="fname" placeholder="First Name" value="" /> --%>
           <asp:TextBox ID="fname" runat="server"></asp:TextBox>
       </td>
     </tr>
     <tr>
     <td>Email Id:</td>
       <td>
         <asp:TextBox ID="email" runat="server"></asp:TextBox>
         </td>
     </tr>
     <tr>
     <td>Month:</td>
       <td>
         <asp:TextBox ID="pinfo" runat="server"></asp:TextBox>
        </td>
     </tr>
     <tr>
     <td>Amount:</td>
       <td>
         <asp:TextBox ID="amount" runat="server"></asp:TextBox>
       </td>
     </tr>
     <tr>
     <td>Mobile No :</td>
       <td>
         <asp:TextBox ID="mobile" runat="server" TabIndex="0"></asp:TextBox>
       </td>
     </tr>
     <tr style="text-align:center">
        <td colspan="2">
        <input type="submit"  value="Pay" onclick="launchBOLT(); return false;" />
       </td>
     </tr>

    
      
       
   </table>
   </div>
   </div>
 
   

 </center>   
    
   <%-- <div class="dv">
    <span class="text"><label>Hash:</label></span>
    <span><input type="text" id="hash" name="hash" placeholder="Hash" value="" /></span>
    </div>--%>
    
    
    
	
</div>

<script type="text/javascript"><!--
    $(document).ready(function () {
        $('#payment_form').keyup(function () {
            $.ajax({
                url: 'Hash.aspx',
                type: 'post',
                data: JSON.stringify({
                    key: $('#mkey').val() ,
                    salt: $('#msalt').val(),
                    txnid: $('#tranid').val(),
                    amount: $('#amount').val(),
                    pinfo: $('#pinfo').val(),
                    fname: $('#fname').val(),
                    email: $('#email').val(),
                    mobile: $('#mobile').val(),
                    udf5: $('#udf5').val()
                }),
                contentType: "application/json",
                dataType: 'json',
                success: function (json) {
                    if (json['error']) {
                        $('#alertinfo').html('<i class="fa fa-info-circle"></i>' + json['error']);
                    }
                    else if (json['success']) {
                        $('#hashval').val(json['success']);
                    }
                }
            });
        });
    });
//-->
</script>
<script type="text/javascript"><!--
    function launchBOLT() {
        bolt.launch({
            key: $('#mkey').val(),
            txnid: $('#tranid').val(),
            hash: $('#hashval').val(),
            amount: $('#amount').val(),
            firstname: $('#fname').val(),
            email: $('#email').val(),
            phone: $('#mobile').val(),
            productinfo: $('#pinfo').val(),
            udf5: $('#udf5').val(),
            surl: $('#surl').val(),
            furl: $('#surl').val()
        }, { responseHandler: function (BOLT) {
            console.log(BOLT.response.txnStatus);
            if (BOLT.response.txnStatus != 'CANCEL') {
                //Salt is passd here for demo purpose only. For practical use keep salt at server side only.
                var fr = '<form action=\"' + $('#surl').val() + '\" method=\"post\">' +
		'<input type=\"hidden\" name=\"key\" value=\"' + BOLT.response.key + '\" />' +
		'<input type=\"hidden\" name=\"salt\" value=\"' + $('#msalt').val() + '\" />' +
		'<input type=\"hidden\" name=\"txnid\" value=\"' + BOLT.response.txnid + '\" />' +
		'<input type=\"hidden\" name=\"amount\" value=\"' + BOLT.response.amount + '\" />' +
		'<input type=\"hidden\" name=\"productinfo\" value=\"' + BOLT.response.productinfo + '\" />' +
		'<input type=\"hidden\" name=\"firstname\" value=\"' + BOLT.response.firstname + '\" />' +
		'<input type=\"hidden\" name=\"email\" value=\"' + BOLT.response.email + '\" />' +
		'<input type=\"hidden\" name=\"udf5\" value=\"' + BOLT.response.udf5 + '\" />' +
		'<input type=\"hidden\" name=\"mihpayid\" value=\"' + BOLT.response.mihpayid + '\" />' +
		'<input type=\"hidden\" name=\"status\" value=\"' + BOLT.response.status + '\" />' +
		'<input type=\"hidden\" name=\"hash\" value=\"' + BOLT.response.hash + '\" />' +
		'</form>';
                var form = jQuery(fr);
                jQuery('body').append(form);
                form.submit();
            }
        },
            catchException: function (BOLT) {
                alert(BOLT.message);
            }
        });
    }
    //--
</script>	


    </form>
    </div>
</body>
</html>
