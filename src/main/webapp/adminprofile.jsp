<%@page import="com.klef.jfsd.springboot.model.Admin"%>
    
<%
Admin admin=(Admin)  session.getAttribute("admin");
if(admin==null)
{
	response.sendRedirect("adminsessionexpiry");
	return;
}

%>    
   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>3D Flip Card on Hover | CodingLab</title>
      <link rel="stylesheet" href="style.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <style type="text/css">
      @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

html, body {
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
  background: linear-gradient(375deg, #1cc7d0, #2ede98);
}

::selection {
  color: #fff;
  background: #1cc7d0;
}

.wrapper {
  height: 400px;
  width: 320px;
  position: relative;
  transform-style: preserve-3d;
  perspective: 1000px;
}

.wrapper .card {
  position: absolute;
  height: 100%;
  width: 100%;
  padding: 5px;
  background: #fff;
  border-radius: 10px;
  transform-style: preserve-3d;
  backface-visibility: hidden;
  box-shadow: 0px 10px 15px rgba(0,0,0,0.1);
  transition: transform 0.7s cubic-bezier(0.4,0.2,0.2,1);
}

/* Initially show the back face */
.wrapper .front-face {
  transform: rotateY(-180deg); /* Rotate front-face by 180 degrees to hide */
}

.wrapper .back-face {
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  flex-direction: column;
  transform: rotateY(0deg); /* Keep back-face visible */
}

/* Hover effect to flip the card */
.wrapper:hover > .front-face {
  transform: rotateY(0deg); /* Bring front-face to the front */
}

.wrapper:hover > .back-face {
  transform: rotateY(180deg); /* Rotate back-face to hide */
}

.wrapper .card img {
  height: 100%;
  width: 100%;
  object-fit: cover;
  border-radius: 10px;
}

.wrapper .back-face img {
  height: 150px;
  width: 150px;
  padding: 5px;
  border-radius: 50%;
  background: linear-gradient(375deg, #1cc7d0, #2ede98);
}

.wrapper .back-face .info {
  text-align: center;
}

.back-face .info .title {
  font-size: 30px;
  font-weight: 500;
}

.back-face ul {
  display: flex;
}

.back-face ul a {
  display: block;
  height: 40px;
  width: 40px;
  color: #fff;
  text-align: center;
  margin: 0 5px;
  line-height: 38px;
  border: 2px solid transparent;
  border-radius: 50%;
  background: linear-gradient(375deg, #1cc7d0, #2ede98);
  transition: all 0.5s ease;
}

.back-face ul a:hover {
  color: #1cc7d0;
  border-color: #1cc7d0;
  background: linear-gradient(375deg, transparent, transparent);
}

</style>
   </head>
   <body>
   <jsp:include page="admin home.jsp"></jsp:include>
      <div class="wrapper">
         <div class="card front-face">
                   <img src="https://img-cdn.pixlr.com/image-generator/history/66fb628907245903aa3c8f4b/9152c62d-487d-4f00-848a-10fe113d87d2/preview.webp" alt="">
         </div>
         <div class="card back-face">
            <img src="https://t3.ftcdn.net/jpg/06/32/91/32/360_F_632913287_pyej35IPG2tnAcqVxlD5QGlsJKUAYMhP.jpg">
            <div class="info">
               <div class="title">
                  <%=admin.getUsername() %>
               </div>
               <p>
                 Administrator of Food Connect App
               </p>
            </div>
            <ul>
               <a href="#"><i class="fab fa-facebook-f"></i></a>
               <a href="#"><i class="fab fa-twitter"></i></a>
               <a href="#"><i class="fab fa-instagram"></i></a>
               <a href="#"><i class="fab fa-youtube"></i></a>
            </ul>
         </div>
      </div>
   </body>
</html>