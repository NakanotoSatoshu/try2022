<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@  page import="model.Pttt"%>
<!DOCTYPE html>
<html>
<head>
<!-- <style>
body{
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: 300;
  	animation: Chaos1 270s linear infinite;
		transition: all 892.5s;
		}

		@keyframes Chaos1{
    0%{
    }
    20%{
        background: #00e34b;
        transform: scale(1.2) rotate(15deg);
        width: 180%;
        height: 162%;
    }

    25%{
        width: 10%;
    }
    50%{
        width: 225%;
    }
    75%{
        height: 10%;
    }
    100%{
        width: 300%;
    }
    40%{
        background: #e2ea00;
        transform: scale(0.8) rotate(-45deg);
    }
    60%{
        background: #ea8400;
        transform: scale(1) rotate(90deg);
    }
    80%{
        background: #ea0000;
        transform: scale(1.2) rotate(-90deg);
    }
    100%{
        background: #00b3e3;
        transform: scale(1) rotate(0deg);
    }
}

</style> -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body　>
<div class="tile is-ancestor">
  <div class="tile is-vertical is-8">
    <div class="tile">
      <div class="tile is-parent is-vertical box animated fadeInUp">
        <article class="tile is-child notification is-primary animated bounce ">
          <p class="title animated pulse ">名前</p>
          <p class="subtitle animated pulse ">${yamizokusei.name}</p>
        </article>
        <article class="tile is-child notification is-warning box animated fadeInLeft">
          <p class="title animated pulse infinite">性別</p>
          <p class="subtitle animated pulse ">${yamizokusei.gender}</p>
        </article>
      </div>
      <div class="tile is-parent box animated fadeInDown">
        <article class="tile is-child notification is-info animated bounce ">
          <p class="title animated pulse infinite">誕生日</p>
          <p class="subtitle animated pulse "><fmt:formatDate value="${yamizokusei.date}" pattern="yyyy-MM-dd" var="formattedDate" />
								<c:out value="${formattedDate}"/></p>
								<p class="title animated pulse infinite">学習内容</p>
								  <p class="subtitle animated pulse ">${yamizokusei.study}</p>
     <figure class="image is-4by3 animated shakeX ">
            <img src="https://mrmrs.github.io/photos/u/043.jpg">
          </figure>
        </article>
      </div>
    </div>
    <div class="tile is-parent box animated fadeInRight" >
      <article class="tile is-child notification is-danger animated bounce ">
        <p class="title animated pulse infinite"> 血液型</p>
        <p class="subtitle animated pulse ">${yamizokusei.blood}</p>
        <div class="content">
          <!-- Content -->
        </div>
      </article>
    </div>
  </div>
  <div class="tile is-parent box animated zoomIn">
    <article class="tile is-child notification is-success animated bounce ">
      <div class="content">
        <p class="title  animated pulse infinite">備考</p>
        <p class="subtitle animated pulse "><c:out value="${yamizokusei.text}"/></pre></p>
        <div class="content">
          <!-- Content -->
        </div>
      </div>
    </article>
  </div>
</div>


</body>
</html>