<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lol Club - Детские группы</title>
    <link rel="shortcut icon" href="<c:url value="/assets/img/sign-in.png"/>" type="image/png">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Raleway:wght@600&display=swap"
          rel="stylesheet">
</head>
<body>
<header>
    <div class="logo">
        <p><img src="<c:url value="/assets/img/logo.png"/>" width="192px" height="36px" alt="Lol Club"></p>
    </div>
    <nav>
        <div class="menu" id="menu">
            <a href="<c:url value="/main"/>">Главная</a>
            <a href="<c:url value="/courses"/>">Курсы</a>
            <a href="<c:url value="/about"/>">О школе</a>
            <a href="<c:url value="/test"/>">Тест</a>
            <a href="<c:url value="/blog"/>">Блог</a>
            <a href="<c:url value="/contacts"/>">Контакты</a>
        </div>
    </nav>
    <a href="<c:url value="/sign-in"/>">
        <div class="sign__in">
            <div class="sign__in__logo">
                <p><img src="<c:url value="/assets/img/sign-in.png"/>" width="24px" height="24px" alt="Logo"></p>
            </div>
            <div class="sign__in__text">Выйти</div>
        </div>
    </a>
</header>
<ul>
    <div class="group__under__card">
        <c:forEach var="group" items="${requestScope.groups}">
            <li>
                <div class="group__card">
                    <p>${group.designation.designation} (${group.level})</p><br>
                    <p><img src="<c:url value="/assets/img/clock.png"/>" style="transform: translate(0, 6px)"
                            width="24px" height="24px" alt="Time:"> ${group.time}</p>
                    <p><img src="<c:url value="/assets/img/calendar.png"/>" style="transform: translate(0, 6px)"
                            width="24px" height="24px" alt="Days:"> ${group.days}</p>
                </div>
            </li>
        </c:forEach>
    </div>
</ul>
<ul>
    <div class="page__style__under">
        <c:forEach begin="1" end="${requestScope.pagesNumber}" var="i">
            <li>
                <a href="<c:url value="/office/groups/kids/${i}"/>">
                    <button class="page__each" type="button">${i}</button>
                </a>
            </li>
        </c:forEach>
    </div>
</ul>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>