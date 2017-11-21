<%-- 
    Document   : LoginView
    Created on : Oct 18, 2017, 9:25:54 AM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Book Management</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <!--Navbar (sit on top)--> 
        <div class="w3-top">
            <div class="w3-bar w3-white w3-wide w3-padding w3-card-2">
                <a href="" class="w3-bar-item w3-button"><b>Book management</b></a>
                <!--Float links to the right. Hide them on small screens--> 
                <div class="w3-right w3-hide-small">
                    <!--Login form-->
                    <form action="login" method="POST">
                        <input type="text" placeholder="username" required name="username">
                        <input type="password" placeholder="password" required name="password">
                        <input type="submit" value="Login" class="w3-button w3-black"/>
                    </form>
                </div>
            </div>
        </div>

        <!--Header--> 
        <header class="w3-display-container w3-content w3-wide" style="max-width:1500px;">
            <img class="w3-image" src="images/wallpaper.jpg" alt="Wall paper" >
            <div class="w3-display-middle w3-margin-top w3-center">
                <h1 class="w3-xxlarge w3-text-white">
                    <span class="w3-padding w3-black w3-opacity-min">
                        <b>FPT Library</b>
                    </span></h1>
            </div>
        </header>

        <!--Page content--> 
        <div class="w3-content w3-padding" style="max-width:1564px">

            <!--About Section--> 
            <div class="w3-container">
                <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">About</h3>
                <p>
                    Book management website provide tools for librarians to manage books easily, and for students
                    to get start with the latest titles and greatest books 
                </p>
            </div>

            <!--Function Session--> 
            <div class="w3-container">
                <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Function</h3>
            </div>

            <div class="w3-row-padding w3-grayscale">
                <div class="w3-col l3 m6 w3-margin-bottom">
                    <img src="images/search.png" alt="Search" style="width:30%">
                    <h3>Find any book</h3>
                    <p class="w3-opacity">With data larger than 10000 books with titles, authors and publishers,....
                        <br>We help you to search any books you want with keyword</p>
                </div>
                <div class="w3-col l3 m6 w3-margin-bottom">
                    <img src="images/ebook.png" alt="Ebook" style="width:30%">
                    <h3>Read online</h3>
                    <p class="w3-opacity">We help you to read books everywhere you want, with computer and internet.
                        <br>Remember we don't have permission with some books to public it online</p>
                </div>
                <div class="w3-col l3 m6 w3-margin-bottom">
                    <img src="images/borrow.png" alt="Borrow" style="width:30%">
                    <h3>Borrow</h3>
                    <p class="w3-opacity">You can make a schedule to borrow books that you like.
                        <br>And go to library to take them.</p>
                </div>
                <div class="w3-col l3 m6 w3-margin-bottom">
                    <img src="images/tools.png" alt="Tool" style="width:30%">
                    <h3>Manage easily</h3>
                    <p class="w3-opacity">You can view your history, edit your profile, add to favorite, 
                        and extends book return date. It'll take some minutes, we promise you.</p>
                </div>
            </div>

            <!--Contact Section--> 
            <div class="w3-container w3-padding-32">
                <h3 class="w3-border-bottom w3-border-light-grey">Contact</h3>
                <p>You can contact us in some way below.</p>
                <div class="w3-col s4 w3-justify">
                    <p><i class="fa fa-fw fa-map-marker"></i> FPT library</p>
                    <p><i class="fa fa-fw fa-phone"></i> 012345678</p>
                    <p><i class="fa fa-fw fa-envelope"></i> example@fpt.edu.vn</p>
                    <br>
                    <i class="fa fa-facebook-official w3-hover-opacity w3-large"></i>
                    <i class="fa fa-instagram w3-hover-opacity w3-large"></i>
                    <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
                    <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>
                    <i class="fa fa-twitter w3-hover-opacity w3-large"></i>
                    <i class="fa fa-linkedin w3-hover-opacity w3-large"></i>
                </div>
            </div>

        </div>

        <!--Footer--> 
        <footer class="w3-center w3-black w3-padding-16">
            <p>Powered by <a href="https://github.com/lehoangnam040" title="W3.CSS" target="_blank" class="w3-hover-text-green">Le Hoang Nam</a></p>
        </footer>

        <script>

        </script>

    </body>
</html>