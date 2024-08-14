
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page of jsp</title>
        <style>
            body{
/*               background-image: url('https://img.freepik.com/premium-vector/interbank-currency-exchange_387612-259.jpg');
               background-size: cover;
               background-repeat: no-repeat;
               background-position: center center;
               margin-top: 300px;*/
             
               background-color: #003153;
            }
            .nav{
                width:100%;
                hieght:400px;
                background-color: #003153;
                /*background-color: yellow;*/
                display:flex;
                
            }
            .maindiv{
                width:100%;
                height:620px;
                margin-top: -30px;
               background-image: url('https://wp-asset.groww.in/wp-content/uploads/2016/06/18124020/icici-bank.jpg');
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
            .main-div1-img{
                width:650px;
                hieght:500px;
                margin-left: 30px;
                margin-top: 30px;
                border-radius: 50px;
                /*background-color: red;*/
            }
            .img1{
                width:280px;
                /*hieght:700px;*/
                 border-radius: 30px;
                 /*box-shadow: 10px 0px 5px 7px skyblue;*/
                 margin-top:10px;
                 margin-left: 960px;
                 border:2px groove grey;
                  
                    box-shadow: 10px 5px 10px 5px #003153;
            }
            .img1:hover{
                  box-shadow: 10px 5px 10px 5px black;
                 cursor:pointer;
/*                 border:2px groove grey;*/
                 /*width:550px;*/
               
            }
            .tf-btn{
                width:260px;
                hieght:60px;
                background-color: #101D6B;
                border-radius: 40px;
                /*position:absolute;*/
                padding:10px;
                margin-left: 1010px;
                color:white;
                font-size:20px;
                font-wieght:500;
                margin-top: 10px;
            }
            .tf-btn:hover{
                cursor:pointer;
                color:black;
                border:1px solid white;
                background-color:#000080;
            }
            .para-div{
                position:absolute;
                padding:10px;
                margin:10px;
                margin-left: 900px;
                margin-top: -350px;
                width:200px;
                hieght:400px;
                background-color: #003153;
                border:4px groove lightslategray;
                border-radius:10px 40px 10px 40px;
                font-size:20px;
                color:white;
                box-shadow:10px 0px 5px 7px rich-blue; 
            }
            .para-div h2{
                color:white;
                margin:10px;
            }
            .main-div-img2{
              width:400px;
                hieght:500px;
                 position:absolute;
                 margin-top:-200px;
                 margin-left: 300px;
                background-color: red;
            }
            .img2{
              width:280px;
                hieght:50px;
                 position:absolute;
                 margin-top:220px;
                 margin-left: 690px;
                 border-radius: 30px;
                 border:2px groove grey;
                  
                   box-shadow: 10px 5px 10px 5px #003153;
            }
            .img2:hover{
                 box-shadow: 10px 0px 5px 7px navyblue;
                box-shadow: 10px 5px 10px 5px black;
                 cursor:pointer;
/*                 border:2px groove grey;*/
                 /*width:550px;*/
                
            }
            .tf-btn2{
                width:260px;
                hieght:60px;
                background-color: #101D6B;
                border-radius: 40px;
                /*position:absolute;*/
                padding:10px;
                margin-left: 1000px;
                color:white;
                font-size:20px;
                font-wieght:500;
                margin-top: 200px;
            }
            .tf-btn2:hover{
                cursor:pointer;
                color:black;
                border:1px solid white;
                background-color:#000080;
            }
            .img3{
                width:90%;
            }
        </style>
    </head>
    <body>
        <div class="nav">
            <div class="bank-logo">
                <img class="logo" src="https://png.pngtree.com/png-vector/20190405/ourmid/pngtree-vector-bank-icon-png-image_912135.jpg"></img>
            </div>
            
            <div class="nav1">
               
                <p><a style="text-decoration:none" href="Home.jsp">Home</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p><a style="text-decoration:none" href="Login.jsp">Login</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p> <a style="text-decoration:none" href="Transfer.jsp">Transfer-Money</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p> <a style="text-decoration:none" href="new_Account.jsp">Create-Account</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
             <p><a style="text-decoration:none" href="Balan.jsp">Check-Balance</a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <!--<p><a style="text-decoration:none" href="">Services</a><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                <p><a style="text-decoration:none" href="http://localhost:8084/New/NewServlet">History</a><p>
            </div>
        </div> 
        <hr color="white">
        <section class="maindiv">
            <div class="main-div1-img">
                <img class="img1" src="https://png.pngtree.com/background/20230330/original/pngtree-the-businessman-in-money-transfer-concept-businessman-in-money-transfer-concept-picture-image_2216582.jpg"></img> 
                  </div>
                <button class="tf-btn"><a href="Transfer.jsp" style="text-decoration: none;color:white">Transfer-Money</a></button>
                <!--=======================================-->
<!--                <div class="para-div">
                    <h2>WELCOME</h2>
                    <p>"Easy and Secure Money Transfer."<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Transfer money with confidence and ease".
                    </p>
                </div>-->

          
            <div class="main-div-img2">
         <img class="img2" src="https://www.shutterstock.com/image-vector/futuristic-hud-banner-that-have-260nw-2309849335.jpg"></img>
                
            </div>
<button class="tf-btn2"><a href="new_Account.jsp" style="text-decoration:none;color:white">Open-Account</a><button>
            <div class="">
                
            </div>
        </section>
    </body>
</html>
