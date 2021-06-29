<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <title>SHOETUDIO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="/css/slick-theme.css">

    <!--font awesome-->
    <script src="https://kit.fontawesome.com/9f355325f4.js" crossorigin="anonymous"></script>

    <title>SHOETUDIO</title>
</head>

<body>

<div class="container">
<%--    <tiles:insertAttribute name="header"/>--%>

    <tiles:insertAttribute name="main"/>

<%--    <tiles:insertAttribute name="footer"/>--%>
</div>

<!--  jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<script src="/js/slick.min.js"></script>
<script src="/js/templatemo.js"></script>
<script src="/js/artist.js"></script>
<script src="/js/slider.js"></script>
<script src="/js/image.js"></script>
<script src="/js/image2.js"></script>
<script src="/js/custom.js"></script>
<script src="/js/loginmodal.js"></script>

</body>
</html>
