<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login form</title>
        <style>
            body{
                background-color: #003153;
            }
            .login-img{
               width:90%;
               hieght:500px;
               
            }
            .img1{
                width:1000px;
                margin-top:-8px;
                border:2px groove black;
                boarder-radius:20px;
                
            }
            .form-page{
                width:500px;
                height:650px;
                
                margin-bottom: 10px;
                margin-left: 120px;
                margin-right: 30px;
                /*border:2px groove white;*/
            }
            
            .uname{
                 width:350px;
                height:30px;
                border-radius:30px;
                 margin-left: 30px;
                padding:6px;
            }
            .password{
                 width:350px;
                height:30px;
                margin-left: 30px;
                border-radius:30px;
                padding:6px;
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
            .thnk{
                color:white;
                text-align: center;
                margin-left: -50px;
            }
            .login-text{
                color:white;
                text-align: center;
                margin-right: 200px;
            }
            .p-user{
                color:white;
                font-size:20px;
                font-weight:600;
                margin-left: 30px;
            }
            .p-pass{
                color:white;
                font-size:20px;
                font-weight:600;
                margin-left: 30px;
            }
            .sub{
                 width:200px;
                height:40px;
                padding:10px;
                font-size:18px;
                font-weight:600;
                color:#003153; 
                border-radius: 30px;
                margin-left:90px;
            }
            .back{
               width:120px;
                height:40px;
                padding:10px;
                font-size:18px;
                font-weight:600;
                color:#003153; 
                border-radius: 30px;
                margin-left: 30px;
            }
            .cont{
                width:120px;
                height:40px;
                padding:10px;
                font-size:18px;
                font-weight:600;
                color:#003153; 
                border-radius: 30px;
                margin-left:70px;
            }  
             .main-div{
             width: 550px;
            height: 590px;
           margin-left: 350px;
           box-shadow: 10px 5px 10px 5px black;
            background-size: cover;
            border: 2px solid white;
            border-radius: 60px;
            background-position: center;
                background-image: url('https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3JtNDIyLTA3Ni14LmpwZw.jpg');
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
        
        <div class="main-div">
        <form class="form-page" action="LoginController" method="post">
            <h1 class="login-text">Login Form</h1> 
            <br>
            <p class="p-user">User-Name:<p>
                <input class="uname" type=" text" name="un" placeholder="Enter User Name">
                <br>
            <p class="p-pass">Password:</p>
                 <input class="password" type=" text" name="pass" placeholder="Enter Your Password">
                 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br><br><br>                    <input class="sub" type="submit" value="Login Here"><br><br><br>
                 <button class="back"><a href="Home.jsp" style="text-decoration:none">Back</a></button>
                 <button class="cont"><a href="Transfer.jsp" style="text-decoration: none;color:white">Continue</a></button>
                    <br>
                    <h1 class="thnk">Thank-You...</h1>
            
        </form>
        </div>
    </body>
</html>
