<%-- 
    Document   : Balan
    Created on : Jul 13, 2024, 9:51:38 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jsp-Page</title>
        <style>
            
            body{
                background-color:#003153;
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
            .main-div{
                 width: 700px;
            height: 400px;
           margin-left: 250px;
            background-size: cover;
            background-position: center;
            border-radius: 60px;
            margin-top: 80px;
            box-shadow: 10px 5px 10px 5px black;
                background-image: url('https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3JtNDIyLTA3Ni14LmpwZw.jpg');
            }
            .form-page{
                width:500px;
                height:650px;
                
                margin-bottom: 10px;
                margin-left: 120px;
                margin-right: 30px;
                /*border:2px groove white;*/
                
            }
            .check-head{
                color:white;
                text-align: center;
                /*position:absolute;*/
                padding-top: 40px;
                /*margin-top: 60px;*/
            }
            .form-page p{
                color:white;
                padding:20px;
                font-size:20px;
                font-weight:600;
                margin-left: 80px;
            }
            .input-css{
                margin-left: 80px;
                width:320px;
               box-shadow: 10px 5px 10px 5px black;
                height: 26px;
                border-radius:30px;
                padding-left: 10px;
                
            }
            .submit{
                margin-left: 130px;
                 width:220px;
                height: 26px;
                color:#003153;
                 margin-top: 20px;
                 box-shadow: 10px 5px 10px 5px black;
                 /*padding-top: 20px;*/
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
                margin-left: 40px;
                height:30px;
                padding-bottom:5px;
                font-size: 18px;
               box-shadow: 10px 5px 10px 5px black;
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
                margin-left: 70px;
                height:30px;
                padding-bottom:5px;
                font-size: 18px;
               box-shadow: 10px 5px 10px 5px black;
                color:#003153;
                cursor:pointer;
            }
            .cont:hover{
                
                cursor:pointer;
                 background-color:#003153; 
                color:white;
            }

        </style>
    </head>
    
    <body>
        <div class="nav">
            <div class="bank-logo">
                <img class="logo" src="https://png.pngtree.com/png-vector/20190405/ourmid/pngtree-vector-bank-icon-png-image_912135.jpg"></img>
            </div>
            <div class="nav1">
            <p><a style="text-decoration:none" href="Login.jsp">Login</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p> <a style="text-decoration:none" href="Transfer.jsp">Transfer-Money</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p> <a style="text-decoration:none" href="new_Account.jsp">Create-Account</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
             <p><a style="text-decoration:none" href="Balan.jsp">Check-Balance</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p><a style="text-decoration:none" href="Home.jsp">Home</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <p><a style="text-decoration:none" href="http://localhost:8084/New/NewServlet">History</a><p>
            </div>
        </div> 
        <hr color="white">
        <div class="main-div" >
        <form action="NewServlet1" class="form-page">
            <h1 class="check-head">Check Your Balance...</h1>
            <p>Enter your Acccount-Number</p>
            
            <input class="input-css" type="text" name="acount_num" placeholder="Enter Your Account Number">
            <br><br>
            <input class="submit" type="submit" value="Show your balance">
            <br><br><br>
            <button class="back"><a href="Home.jsp" style="text-decoration:none; color:#003153">Back</a></button>
            <button class="cont" href="new_Account.jsp" style="text-decoration:none; color:#003153">Continue</button>
            
        </form>
        </div>
    </body>
</html>
