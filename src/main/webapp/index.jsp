<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pragati | Website</title>
    <link rel="stylesheet" href="Pages\CSS\style.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>

<body>
<header>
<nav class="navbar">
    <div class="logo">
        <img src="Pages/ASSETS/Images/main-website/PragatiHeaderLogo.svg" alt="Pragati Logo">
    </div>
    <ul class="nav-list" id="nav-list">
        <li class="nav-item"><a href="#" class="nav-link">ABOUT</a></li>
        <li class="nav-item"><a href="#" class="nav-link">SERVICES</a></li>
        <li class="nav-item"><a href="#" class="nav-link">CONTACT</a></li>
        <li class="nav-item"><button class="nav-btn"><a href="Pages/User/userLogin.jsp">Login</a></button></li>
    </ul>

    <div class="ham-icons" onclick="navhide()">
        <div class="ham-bar" id="hambar1"></div>
        <div class="ham-bar" id="hambar2"></div>
        <div class="ham-bar" id="hambar3"></div>
    </div>
</nav>
</header>

<main>
    <div class="main-container">
        <div class="child-container">
            <h1 class="heading-one">
                Welcome to Pragati!
            </h1>
            <p class="paragraph">
                Welcome to Pragati, the ultimate learning application for children of all ages! Our app provides an
                interactive platform
                for children to learn and explore new topics through audio, video, PDFs, picture books, texts and
                games.
                <br>
                <br>
                With Pragati,
                children can have fun while learning and can easily access educational content from anywhere,
                anytime. Our app has been designed with children's learning and development in mind.
            </p>
            <button class="button" ><a href="Pages/User/userRegister.jsp">GET STARTED</a></button>
        </div>


        <div class="child-container hero-image">
            <div class="icon-box" id="icon-box1"></div>
            <div class="icon-box" id="icon-box2"></div>
            <div class="icon-box" id="icon-box3"></div>
            <div class="icon-box" id="icon-box4"></div>
            <div class="icon-box" id="icon-box5"></div>
            <div class="icon-box" id="icon-box6"></div>
            <div class="icon-box" id="icon-box7"></div>
        </div>
    </div>

    <div class="game-container">
        <h1>Our Games</h1>
        <p>We have included engaging games that help children learn and retain the information
            they have
            learned. Our content is carefully curated by educational experts to ensure that it is age-appropriate
            and relevant to
            the child's level of understanding.</p>

        <div class="icon-boxes">
            <div class="icon-text-pair">
                <div class="game-icon" id="game-icon1"></div>
                <p>Numbers</p>
            </div>

            <div class="icon-text-pair">
                <div class="game-icon" id="game-icon2"></div>
                <p>Alphabets</p>
            </div>

            <div class="icon-text-pair">
                <div class="game-icon" id="game-icon3"></div>
                <p>Reading</p>
            </div>

            <div class="icon-text-pair">
                <div class="game-icon" id="game-icon4"></div>
                <p>Coloring</p>
            </div>

            <div class="icon-text-pair">
                <div class="game-icon" id="game-icon5"></div>
                <p>Music</p>
            </div>

            <div class="icon-text-pair">
                <div class="game-icon" id="game-icon6"></div>
                <p>Videos</p>
            </div>

            <div class="icon-text-pair">
                <div class="game-icon" id="game-icon7"></div>
                <p>Puzzle</p>
            </div>

            <div class="icon-text-pair">
                <div class="game-icon" id="game-icon8"></div>
                <p>Science</p>
            </div>
        </div>
    </div>x

    <div class="main-container">
        <div class="child-container">
            <h1 class="heading-one">
                Master new skills with indepth learning!
            </h1>
            <p class="paragraph">
                Welcome to Pragati, the ultimate learning application for children of all ages! Our app provides an
                interactive platform
                for children to learn and explore new topics through audio, video, PDFs, picture books, texts and
                games.
                <br>
                <br>
                With Pragati,
                children can have fun while learning and can easily access educational content from anywhere,
                anytime.
            </p>
        </div>


        <div class="master-container">
            <img src="Pages/ASSETS/Images/main-website/Master.svg" alt="" srcset="">
        </div>
    </div>

    <!-- ********************* FOURTH PART STARTS ********************* -->
    <h1 class="activitiesH1">Our Reviews</h1>

    <div class="reviewFlex">

        <div class="reviewBox" id="reviewBox1">
            <div class="star"></div>
            <p class="reviewContent">
                I have a son and a daughter and both of them got their primary knowledge of alphabets and numbers
                through
                Pragati. This application has helped them to understand alphabets, numbers and colors. Also, the app
                keeps
                them busy and entertained throughout the day.</p>
            <div class="parent">
                <div class="image" style="background-image:url('Pages/ASSETS/Images/main-website/Parent.png') ;">

                </div>
                <div class="text">
                    <h3 class="ParentName">Mr. Suman Rai</h3>
                    <p class="ParentLabel">Parent</p>
                </div>
            </div>
        </div>

        <div class="reviewmomma">
            <div class="reviewBox" id="reviewBox2">
                <div class="star"></div>
                <p class="reviewContent">Roles of teachers cannot be replaced but Pragati gives a helping hand.</p>
                <div class="parent">
                    <div class="image" style="background-image:url('Pages/ASSETS/Images/main-website/Teacher.png') ;">


                    </div>
                    <div class="text">
                        <h3 class="ParentName">Ms. Anjali Gurung</h3>
                        <p class="ParentLabel">Teacher</p>
                    </div>
                </div>
            </div>

            <div class="reviewBox" id="reviewBox3">
                <div class="star"></div>
                <p class="reviewContent">This application is excellent for teaching kids.</p>
                <div class="parent">
                    <div class="image" style="background-image:url('Pages/ASSETS/Images/main-website/Guardian.png') ;">


                    </div>
                    <div class="text">
                        <h3 class="ParentName">Mr. Santosh Rimal</h3>
                        <p class="ParentLabel">Guardian</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ********************* FOURTH PART ENDS ********************* -->
</main>

<!-- ********************* FOOTER BEGINS ********************* -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col">
                <h4>company</h4>
                <ul>
                    <li><a href="#">about us</a></li>
                    <li><a href="#">our services</a></li>
                    <li><a href="#">privacy policy</a></li>
                    <li><a href="#">affiliate program</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>get help</h4>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">shipping</a></li>
                    <li><a href="#">returns</a></li>
                    <li><a href="#">order status</a></li>
                    <li><a href="#">payment options</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>online shop</h4>
                <ul>
                    <li><a href="#">watch</a></li>
                    <li><a href="#">bag</a></li>
                    <li><a href="#">shoes</a></li>
                    <li><a href="#">dress</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>follow us</h4>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- ********************* FOOTER ENDS ********************* -->
<script>
    function navhide() {
        document.querySelectorAll('.nav-list')[0].classList.toggle('nav-list-animated');
        document.querySelectorAll('.ham-icons')[0].classList.toggle('ham-icons-animated');
    }
</script>
</body>

</html>



<!-- <main>
    <div class="my-container">

    </div>
</main>

<footer>
    <div class="my-container">

    </div>

</footer> -->



<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport"--%>
<%--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
<%--    <title>Document</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<form action="user?page=reg" method="POST">--%>
<%--    <input type="text" name="username">--%>
<%--    <input type="text" name="password">--%>
<%--    <input type="submit" value="submit">--%>
<%--</form>--%>

<%--<a href="/PragatiA_war_exploded/Pages/User/userRegister.jsp">Register</a>--%>
<%--<a href="/PragatiA_war_exploded/Pages/User/userLogin.jsp">login</a>--%>
<%--</body>--%>
<%--</html>--%>