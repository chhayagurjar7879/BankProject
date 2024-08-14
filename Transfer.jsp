

<%@page import="com.ram.bean.AccountBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a href="Login.jsp"></a>
        <title>Transfer Page</title>
        <style>
            body{
                background-color: #003153;
            }
            .nav{
                width:100%;
                hieght:400px;
                background-color: #003153;
                /*background-color: yellow;*/
                display:flex;
                
            }
            .logo{
               width:80px;
                hieght:40px;
                border-radius: 300px;
                margin: 10px;
                
            }
            .bank-logo{
                width:100px;
                hieght:80px;
                margin-left: 40px;
                /*margin-bottom: 10px;*/
                text-decoration: none;
            }
            .nav1{
                margin-left: 450px;
                display:flex;
                margin-top: 20px;
            }
            .nav p a{
                font-size: 18px;
                color:white;
            }
            .form-page{
                width:500px;
                height:300px;
                /*border:2px groove white;*/
            }
            .main-div{
              width: 700px;
            height: 620px;
           margin-left: 250px;
            background-size: cover;
            background-position: center;
            border: 2px solid white;
             box-shadow: 10px 5px 10px 5px black;
            border-radius: 80px;
           background-image: url('https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3JtNDIyLTA3Ni14LmpwZw.jpg');
            }
            .form-page{
                 width:500px;
                height:650px;
                margin-bottom: 10px;
                margin-left: 120px;
                margin-right: 30px;
            }
            .trans-text{
                color:white;
              text-align: center;
            }
            .form-page p{
                color:white;
                font-size:20px;
                font-weight:600;
                margin-left: 80px;
            }
            .input-css{
                margin-left: 80px;
                width:320px;
                height: 26px;
                border-radius:30px;
                padding-left: 10px;
                
            }
            .submit{
                margin-left: 130px;
                 width:220px;
                height: 26px;
                color:#003153;
                border-radius:30px;
                padding-left: 10px;
                font-size: 18px;
            }
            .submit:hover{
                cursor:pointer;
                background-color: #003153;
                color:white;  
            }
            .back{
                width:150px;
                border-radius:30px;
                margin-left: 50px;
                height:30px;
                padding-bottom:5px;
                font-size: 18px;
               
                color:#003153;
                cursor:pointer;
            }
            .back:hover{
                
                cursor:pointer;
                 background-color:#003153; 
                color:white;
            }
            .cont{
                width:150px;
                border-radius:30px;
                margin-left: 60px;
                height:30px;
                padding-bottom:5px;
                font-size: 18px;
               
                color:#003153;
                cursor:pointer;
            }
            .cont:hover{
                cursor:pointer;
                 background-color:#003153; 
                color:white;
            }
            .username{
                align:left;
                color:white;
                /*font-size: 18px;*/
                font-family: bold;
                width:300px;
            }
            .thnk{
                color:white;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="nav">
            <div class="bank-logo">
                <img class="logo" src="https://png.pngtree.com/png-vector/20190405/ourmid/pngtree-vector-bank-icon-png-image_912135.jpg"></img>
            </div>
            <div class="nav1">
            <p><a style="text-decoration:none" href="">Login</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p> <a style="text-decoration:none" href="">Transfer-Money</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p> <a style="text-decoration:none" href="">Create-Account</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
             <p><a style="text-decoration:none" href="">Check-Balance</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <p><a style="text-decoration:none" href="Home.jsp">Home</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <p><a style="text-decoration:none" href="">All-Details</a><p>
            </div>
        </div> 
        <hr color="white">
        
        <%
        AccountBean ab = (AccountBean) session.getAttribute("username");
        if(ab==null){
            out.println("<h1>please go to login page</h1>");
        }
        else{
        %>
       
<!--            <hr color="green">-->
            <h2 class="username"> Welcome : <%=ab.getCustomer_name()%> </h2>
<!--            <hr color="red">-->
<div class="main-div">
            <form class="form-page" action="abc" method="post">
                <h1 class="trans-text">Transfer Form...</h1>  <br> 
           <p>Account Number:</p>
          <input class="input-css" type="text" name="accountNumber" readonly="true" value="<%=ab.getAcount_num()%>">       
          <p>To Account Number:</p>
          <input class="input-css" type="text" name="toaccountNumber" placeholder="Enter Account Number">
           <p>Transaction Date:</p>
           <input class="input-css" type="date" name="transactiondate" placeholder="Enter Transaction Date">
            <p>Transaction Amount:</p>
            <input class="input-css" type="text" name="transactionamount" placeholder="Enter Transaction Ammount">
             <br><br><br>
              <input class="submit" type="submit" value="Transfer">
              <br><br><br>
              <button class="back"><a href="Home.jsp" style="text-decoration:none">Back</a></button>
              <button class="cont"><a href="Transfer.jsp" style="text-decoration:none">Continue</a></button>
              <h1 class="thnk">Thank-You...</h1>
            </form>
</div>
        <%
        }
        %>
    </body>
</html>
