<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
    />

    <link
      href="http://fonts.googleapis.com/css?family=Cookie"
      rel="stylesheet"
      type="text/css"
    />
    <style>
      body {
        margin: 0;
        font-size: 18px;
        font-family: Arial, Helvetica, sans-serif;
      }

      .header {
        color: #ffffff;
        background-color: #f1f1f1;
        padding: 30px;
        text-align: center;
      }

      #navbar {
        overflow: hidden;
        background-color: rgb(12, 9, 9);
      }

      #navbar a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
      }

      #navbar a:hover {
        background-color: rgb(100, 93, 93);
        color: rgb(236, 8, 8);
      }

      #navbar a.active {
        background-color: #4caf50;
        color: white;
      }

      .content {
        padding: 16px;
      }

      .sticky {
        position: fixed;
        top: 0;
        width: 100%;
      }

      .sticky + .content {
        padding-top: 60px;
      }

      header {
        text-align: center;
        padding-top: 100px;
        margin-bottom: 190px;
      }

      header h1 {
        font: normal 32px/1.5 "Open Sans", sans-serif;
        color: #3f71ae;
        padding-bottom: 16px;
      }

      header h2 {
        color: #f05283;
      }

      header span {
        color: #3f71ea;
      }
      
      
      
      
      div.transbox {
  margin: 30px;
  background-color: #3b3939;
  border: 1px solid black;
  opacity: 0.7;
}

div.transbox p {
  margin: 5%;
  font-weight: bold;
  color: white;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}.button2 {
  background-color: rgb(78, 75, 75); 
  color: whie; 
  border: 2px solid #000000;
}

.button2:hover {
  background-color: #080808;
  color: white;
}

      /* The footer is fixed to the bottom of the page */

      footer {
        bottom: 0;
        opacity: 0.9;
      }

      @media (max-height: 800px) {
        footer {
          position: static;
        }
        header {
          padding-top: 40px;
        }
      }

      .footer-distributed {
        background-color: rgb(8, 8, 8);
        box-sizing: border-box;
        width: 100%;
        text-align: left;
        font: bold 16px sans-serif;
        padding: 50px 50px 60px 50px;
      }

      .footer-distributed .footer-left,
      .footer-distributed .footer-center,
      .footer-distributed .footer-right {
        display: inline-block;
        vertical-align: top;
      }

      /* Footer left */

      .footer-distributed .footer-left {
        width: 30%;
      }

      .footer-distributed h3 {
        color: #ffffff;
        font: normal 36px "Cookie", cursive;
        margin: 0;
      }

      /* The company logo */

      .footer-distributed .footer-left img {
        width: 30%;
      }

      .footer-distributed h3 span {
        color: #e0ac1c;
      }

      /* Footer links */

      .footer-distributed .footer-links {
        color: #ffffff;
        margin: 20px 0 12px;
      }

      .footer-distributed .footer-links a {
        display: inline-block;
        line-height: 1.8;
        text-decoration: none;
        color: inherit;
      }

      .footer-distributed .footer-company-name {
        color: #8f9296;
        font-size: 14px;
        font-weight: normal;
        margin: 0;
      }

      /* Footer Center */

      .footer-distributed .footer-center {
        width: 35%;
      }

      .footer-distributed .footer-center i {
        background-color: #33383b;
        color: #ffffff;
        font-size: 25px;
        width: 38px;
        height: 38px;
        border-radius: 50%;
        text-align: center;
        line-height: 42px;
        margin: 10px 15px;
        vertical-align: middle;
      }

      .footer-distributed .footer-center i.fa-envelope {
        font-size: 17px;
        line-height: 38px;
      }

      .footer-distributed .footer-center p {
        display: inline-block;
        color: #ffffff;
        vertical-align: middle;
        margin: 0;
      }

      .footer-distributed .footer-center p span {
        display: block;
        font-weight: normal;
        font-size: 14px;
        line-height: 2;
      }

      .footer-distributed .footer-center p a {
        color: #e0ac1c;
        text-decoration: none;
      }

      /* Footer Right */

      .footer-distributed .footer-right {
        width: 30%;
      }

      .footer-distributed .footer-company-about {
        line-height: 20px;
        color: #92999f;
        font-size: 13px;
        font-weight: normal;
        margin: 0;
      }

      .footer-distributed .footer-company-about span {
        display: block;
        color: #ffffff;
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 20px;
      }

      .footer-distributed .footer-icons {
        margin-top: 25px;
      }

      .footer-distributed .footer-icons a {
        display: inline-block;
        width: 35px;
        height: 35px;
        cursor: pointer;
        background-color: #33383b;
        border-radius: 2px;

        font-size: 20px;
        color: #ffffff;
        text-align: center;
        line-height: 35px;

        margin-right: 3px;
        margin-bottom: 5px;
      }

      /* Here is the code for Responsive Footer */
      /* You can remove below code if you don't want Footer to be responsive */

      @media (max-width: 880px) {
        .footer-distributed .footer-left,
        .footer-distributed .footer-center,
        .footer-distributed .footer-right {
          display: block;
          width: 100%;
          margin-bottom: 40px;
          text-align: center;
        }

        .footer-distributed .footer-center i {
          margin-left: 0;
        }
      }
    </style>
  </head>
  <body>
    <div
      class="header"
      style="background-image: url('header.jpeg'); background-size: cover"
    >
      <img src="logo.png" alt="IICMR_LOGO" />
      <h3>Audyogik Tantra Shikshan Sanstha's ( A.T.S.S. )</h3>
      <h1>Institute of Industrial and Computer Management and Research</h1>
      <h1>TECHNOCASE</h1>
    </div>

    <div id="navbar">
      <a href="homepage.html" style="color: white">Home</a>

      <a href="contactus.html" style="color: white">Contact Us</a>
      <a href="aboutus.html" style="color: white">About Us</a>
      <a href="profile.html" style="color: white">Profile</a>
      <a href="homepage.html" style="color: white">Log Out</a>
      <div style="text-align: right; color: white;" align="right"> 
          <label><h3><%=request.getParameter("name")%></h3></label>
        
    </div>
    </div>

    <div
      class="content"
      style="background-image: url('header.jpeg'); background-size: cover">
      
      <div class="background">
      <div class="transbox">
        <p>Code-Battle<br>
        
        <button class="button button2" onclick="document.location='Register_codebattle.html'">Register</button></p>
        <button class="button button2" onclick="document.location='Quiz.jsp'">Take a Quiz</button>
      </div>
    </div>
      
    
    <div class="background">
      <div class="transbox">
        <p>Poster<br>
        <button class="button button2" onclick="document.location='Register_poster.html'">Register</button></p>
        <button class="button button2" onclick="document.location='poster_test.html'">Upload a Poster</button>
      </div>
    </div>
  </div>
 
    <!-- The content of your page would go here. -->

    <footer class="footer-distributed">
      <div class="footer-left">
        <h3>TECHNO<span>CASE</span></h3>

        <p class="footer-links">
          <a href="homepage.html">Homepage</a>
          |
          <a href="contactus.html">Contact Us</a>
          |
          <a href="aboutus.html">About Us</a>
        </p>

        <p class="footer-company-name"></p>
      </div>

      <div class="footer-center">
        <div>
          <i class="fa fa-map-marker"></i>
          <p>
            <span
              >HS-2, Pradhikaran campus, behind Tukaram Garden, Sector 27A,
              Pradhikaran,</span
            >
            Pune, Maharashtra 411044
          </p>
        </div>

        <div>
          <i class="fa fa-phone"></i>
          <p>020 2765 7648</p>
        </div>
        <div>
          <i class="fa fa-envelope"></i>
          <p><a href="mailto:info@iicmr.org">info@iicmr.org</a></p>
        </div>
      </div>
      <div class="footer-right">
        <p class="footer-company-about"></p>

        <div class="footer-icons">
          <a href="#"><i class="fa fa-facebook"></i></a>
          <a href="#"><i class="fa fa-twitter"></i></a>
          <a href="#"><i class="fa fa-instagram"></i></a>
          <a href="#"><i class="fa fa-linkedin"></i></a>
          <a href="#"><i class="fa fa-youtube"></i></a>
        </div>
      </div>
    </footer>

    <script>
      window.onscroll = function () {
        myFunction();
      };

      var navbar = document.getElementById("navbar");
      var sticky = navbar.offsetTop;

      function myFunction() {
        if (window.pageYOffset >= sticky) {
          navbar.classList.add("sticky");
        } else {
          navbar.classList.remove("sticky");
        }
      }
    </script>
  </body>
</html>
