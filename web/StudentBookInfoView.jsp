<%-- 
    Document   : StudentBookInfoView
    Created on : Oct 26, 2017, 9:19:46 PM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Book Info</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
        </style>
    </head>
    <body class="w3-light-grey">

        <!-- Top container -->
        <div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
            <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i> Menu</button>
            <span class="w3-bar-item w3-right">Book Management</span>
        </div>

        <!-- Sidebar/menu -->
        <nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
            <div class="w3-container w3-row">
                <div class="w3-col s4">
                    <img src=${sessionScope["account"].male eq true ? 
                               "/BookManagement/images/avatar_male.png" : "/BookManagement/images/avatar_female.png"} 
                         class="w3-circle w3-margin-right" style="width:50px" />
                </div>
                <div class="w3-col s8 w3-bar">
                    <span>Welcome,<br><strong>${sessionScope["account"].firstName} ${sessionScope["account"].lastName}</strong></span>
                </div>
            </div>
            <hr>
            <div class="w3-container">
                <h5>Options</h5>
            </div>
            <div class="w3-bar-block">
                <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
                <a href="/BookManagement/student/search" class="w3-bar-item w3-button w3-padding"><i class="fa fa-search fa-fw"></i> Search</a>
                <a href="/BookManagement/student/borrow" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i> View Your Chosen & Borrow</a>
                <a href="/BookManagement/student/news" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bell fa-fw"></i> Notification</a>
                <a href="/BookManagement/student/profile" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bank fa-fw"></i> Profile</a>
                <a href="/BookManagement/student/history" class="w3-bar-item w3-button w3-padding"><i class="fa fa-history fa-fw"></i> History</a>
                <a href="/BookManagement/logout" class="w3-bar-item w3-button w3-padding"><i class="fa fa-sign-out fa-fw"></i> Log out</a><br><br>
            </div>
        </nav>


        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px;margin-top:43px;">
            <div class="w3-container w3-white">
                <h2>Book Info</h2>
                <hr>
            </div>
            <div class="w3-container w3-white">
                <div class="w3-quarter w3-margin">
                    <!--image and button of this book-->
                    <img src="/BookManagement/images/nobookcover.jpg" class="w3-image" style="height: 300px; margin-left: 10%; margin-bottom: 10px">
                    <input class="w3-button w3-dark-grey" type="button" style="margin-left: 25%" value="Add to Borrow" onclick="cart(${book.isbn}, '${book.title}')"/>
                </div>
                <div class="w3-twothird">
                    <!--book info-->
                    <h2><strong>${requestScope.book.title}</strong></h2>
                    <hr>
                    <h3><i class="fa fa-tag"></i> ${requestScope.book.category}</h3>
                    <h3><i class="fa fa-language"></i> ${requestScope.book.language}</h3>
                    <h3><i class="fa fa-bookmark"></i> ${requestScope.book.format}</h3>
                    <h3>Page: ${requestScope.book.page}</h3>
                    <h3>Available books: ${requestScope.book.amount}</h3>
                    <h3 class="w3-text-yellow"><i class="fa fa-star w3-large"></i> Rating: 
                        ${requestScope.book.rating == 0 ? 'Not Rated': requestScope.book.rating}</h3>
                </div>
                <br>
            </div>
            <div class="w3-container w3-white" style="overflow-y: auto">
                ${requestScope.book.description eq null ? 'No Description': requestScope.book.description}
            </div>
            <div class="w3-container w3-white">
                <h2>Author</h2>
                <hr>
            </div>
            <div class="w3-container w3-white">
                <div class="w3-quarter w3-margin">
                    <img src="/BookManagement/images/nobookcover.jpg" class="w3-image" style="height: 300px; margin-left: 10%; margin-bottom: 10px">
                </div>
                <div class="w3-twothird"><br>
                    <h4><i class="fa fa-pencil"></i> ${requestScope.book.author.firstName} ${requestScope.book.author.lastName}</h4>
                    <h4><i class="fa fa-birthday-cake"></i> ${requestScope.book.author.dob}</h4>
                    <h4><i class="fa fa-location-arrow"></i> ${requestScope.book.author.country}</h4>
                    <h4><i class="fa fa-info"></i> ${requestScope.book.author.description}</h4>
                </div>
            </div>
            <div class="w3-container w3-white">
                <h2>Publisher</h2>
                <hr>
            </div>
            <div class="w3-container w3-white">
                <h4><i class="fa fa-group"></i> ${requestScope.book.publisher.name}</h4>
                <h4><i class="fa fa-address-card"></i> ${requestScope.book.publisher.address}</h4>
                <h4><i class="fa fa-phone"></i> ${requestScope.book.publisher.phone}</h4>
            </div>
            <div class="w3-container w3-white">
                <h2>Comments</h2>
                <hr>
            </div>
            <div class="w3-container w3-white">
                <c:forEach items="${requestScope.comments}" var="c">
                    <h4><i class="fa fa-star"></i> ${c.rate} on ${c.ratingDate} by <strong>${c.username}</strong></h4>
                    <p>${c.comment}</p>
                </c:forEach>
            </div>
            <div class="w3-container w3-white">
                <h3>Add a Comment</h3>
            </div>
            <div class="w3-container w3-white">
                <div class="w3-row-padding" style="margin:0 -16px;">
                    <div class="w3-quarter">
                        <label><i class="fa fa-star"></i> Rate</label>
                        <input class="w3-input w3-border" type="number" min="0" max="5" id="rate">
                    </div>
                </div><br>
                <div class="w3-row-padding" style="margin:0 -16px;">
                    <label> Comment</label>
                    <textarea class="w3-input w3-border" rows="10" cols="30" id="comment"></textarea><br>
                </div>
                <input class="w3-button w3-dark-grey" type="button" value="Comment" onclick="comment(${requestScope.book.isbn}, '${sessionScope["account"].username}')"/>
            </div>
            <!-- Footer -->
            <footer class="w3-container w3-padding-16 w3-light-grey">
                <p>Powered  by  <a href="https://github.com/lehoangnam040" target="_blank">Le Hoang Nam</a></p>
            </footer>

            <!-- End page content  --> 
        </div>

        <script>
            // Get the Sidebar
            var mySidebar = document.getElementById("mySidebar");
            // Get the DIV with overlay effect
            var overlayBg = document.getElementById("myOverlay");
            // Toggle between showing and hiding the sidebar, and add overlay effect
            function  w3_open() {
                if (mySidebar.style.display === 'block') {
                    mySidebar.style.display = 'none';
                    overlayBg.style.display = "none";
                } else {
                    mySidebar.style.display = 'block';
                    overlayBg.style.display = "block";
                }
            }

            // Close the sidebar with  the close button
            function  w3_close() {
                mySidebar.style.display = "none";
                overlayBg.style.display = "none";
            }

            function cart(isbn, title) {
                $.ajax({
                    type: "GET",
                    url: "cart",
                    data: ({
                        isbn: isbn,
                        title: title
                    }),
                    success: function (result) {
                        alert(result);
                    }
                });
            }

            function comment(isbn, username) {
                var rate = document.getElementById("rate").value;
                var comment = document.getElementById("comment").value;
                $.ajax({
                    type: "GET",
                    url: "comment",
                    data: ({
                        isbn: isbn,
                        username: username,
                        rate: rate,
                        comment: comment
                    }),
                    success: function (result) {
                        alert(result);
                        document.getElementById("rate").value = "";
                        document.getElementById("comment").value = "";
                    }
                });
            }
        </script>

    </body>
</html>
