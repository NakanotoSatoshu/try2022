<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@  page import="model.Pttt"%>

<!DOCTYPE html>
<html>
<head>
<style>
.Chaos{
  	animation: Chaos1 390s linear infinite;
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

</style>
<link rel="stylesheet" href="https://unpkg.com/tachyons@4.12.0/css/tachyons.min.css" />
<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css" />
<meta charset="UTF-8">
<title>入力内容</title>
</head>
<body>
<header class="bg-black-90 fixed w-100 ph3 pv3 pv4-ns ph4-m ph5-l Chaos" style="background-image: url(http://kentakunsh.html.xdomain.jp/img21/pic.yawaraka.jpg )" >
  <nav class="f6 fw6 ttu tracked">
    <a class="link dim white dib mr3" href="#" title="Home">Home</a>
    <a class="link dim white dib mr3" href="#" title="About"></a>
    <a class="link dim white dib mr3" href="#" title="Store"></a>
    <a class="link dim white dib" href="abe.html" title="Contact">阿部寛のホームページ2022</a>
    <a class="link dim white dib" href="#" title="Contact"></a>
    <a class="link dim white dib" href="#" title="Contact"></a>
    <a class="link dim white dib" href="#" title="Contact"></a>
    <a class="link dim white dib" href="https://miraino-katachi.co.jp/" title="">就労移行支援事業所 未来のかたち</a>
  </nav>
</header>

<article class="pa3 pa5-ns" data-name="slab-stat" >
  <dl class="dib mr5">
    <dd class="f6 f5-ns b ml0 Chaos">名前</dd>
    <dd class="f3 f2-ns b ml0 animated fadeInUp">${yamizokusei.name}</dd>
  </dl>
  <dl class="dib mr5">
    <dd class="f6 f5-ns b ml0 Chaos">性別</dd>
    <dd class="f3 f2-ns b ml0 animated fadeInUp">${yamizokusei.gender}</dd>
  </dl>
  <dl class="dib mr5">
    <dd class="f6 f5-ns b ml0 Chaos">誕生日</dd>
    <dd class="f3 f2-ns b ml0 animated fadeInUp">
    <fmt:formatDate value="${yamizokusei.date}" pattern="yyyy/MM/dd" var="formattedDate" />
    <c:out value="${formattedDate}"/></dd>
  </dl>
  <dl class="dib mr5">
    <dd class="f6 f5-ns b ml0 Chaos">学習内容</dd>
    <dd class="f3 f2-ns b ml0 animated fadeInUp">
    <c:forEach var="subject" items="${yamizokusei.study}">
					<c:out value="${subject}"/>
				</c:forEach>
    </dd>
  </dl>
  <dl class="dib mr5">
    <dd class="f6 f5-ns b ml0 Chaos">血液型</dd>
    <dd class="f3 f2-ns b ml0 animated fadeInUp">${yamizokusei.blood}</dd>
  </dl>
  <dl class="dib animated fadeInLeft">
     <dd class="f2 f-subheadline-l fw6 ml0 Chaos">入力内容</dd>
    <dd class="f3 f2-ns b ml0"></dd>
  </dl>
  <dl class="dib mr5">
    <dd class="f6 f5-ns b ml0 Chaos">備考</dd>
    <p class="f6 f5-ns lh-copy measure mv0 animated fadeInUp">
	<c:out value="${yamizokusei.text}"/>
    </p>
  </dl>
   </dl>
  <dl class="dib mr5 Chaos">
    <dd class="f6 f5-ns b ml0">
　  <a class="no-underline near-white bg-animate bg-near-black hover-bg-gray inline-flex items-center ma2 tc br2 pa2" href="http://codepen.io" title="CodePen">
    <svg class="dib h2 w2" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M15.988 5.443c-.004-.02-.007-.04-.012-.058l-.01-.033c-.006-.017-.012-.034-.02-.05-.003-.012-.01-.023-.014-.034l-.023-.045-.02-.032-.03-.04-.024-.03c-.01-.013-.022-.026-.034-.038l-.027-.027-.04-.032-.03-.024-.012-.01L8.38.117c-.23-.155-.53-.155-.76 0L.305 4.99.296 5c-.012.007-.022.015-.032.023-.014.01-.027.02-.04.032l-.027.027-.034.037-.024.03-.03.04c-.006.012-.013.022-.02.033l-.023.045-.015.034c-.007.016-.012.033-.018.05l-.01.032c-.005.02-.01.038-.012.058l-.006.03C.002 5.5 0 5.53 0 5.56v4.875c0 .03.002.06.006.09l.007.03c.003.02.006.04.013.058l.01.033c.006.018.01.035.018.05l.015.033c.006.016.014.03.023.047l.02.03c.008.016.018.03.03.042.007.01.014.02.023.03.01.012.02.025.034.036.01.01.018.02.028.026l.04.033.03.023.01.01 7.31 4.876c.116.078.248.117.382.116.134 0 .266-.04.38-.116l7.314-4.875.01-.01c.012-.007.022-.015.032-.023.014-.01.027-.02.04-.032l.027-.027.034-.037.024-.03.03-.04.02-.032.023-.046.015-.033.018-.052.01-.033c.005-.02.01-.038.013-.058 0-.01.003-.02.004-.03.004-.03.006-.06.006-.09V5.564c0-.03-.002-.06-.006-.09l-.007-.03zM8 9.626L5.568 8 8 6.374 10.432 8 8 9.626zM7.312 5.18l-2.98 1.993-2.406-1.61 5.386-3.59v3.206zM3.095 8l-1.72 1.15v-2.3L3.095 8zm1.237.828l2.98 1.993v3.208l-5.386-3.59 2.406-1.61zm4.355 1.993l2.98-1.993 2.407 1.61-5.387 3.59v-3.206zM12.905 8l1.72-1.15v2.3L12.905 8zm-1.237-.827L8.688 5.18V1.97l5.386 3.59-2.406 1.61z" fill-rule="nonzero"/></svg>
    <span class="f6 ml3 pr2">Code Pen</span>
    <a class="no-underline near-white bg-animate bg-near-black hover-bg-gray inline-flex items-center ma2 tc br2 pa2" href="https://linkedin.com title="LinkedIn">
    <svg class="dib h2 w2" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M13.632 13.635h-2.37V9.922c0-.886-.018-2.025-1.234-2.025-1.235 0-1.424.964-1.424 1.96v3.778h-2.37V6H8.51V7.04h.03c.318-.6 1.092-1.233 2.247-1.233 2.4 0 2.845 1.58 2.845 3.637v4.188zM3.558 4.955c-.762 0-1.376-.617-1.376-1.377 0-.758.614-1.375 1.376-1.375.76 0 1.376.617 1.376 1.375 0 .76-.617 1.377-1.376 1.377zm1.188 8.68H2.37V6h2.376v7.635zM14.816 0H1.18C.528 0 0 .516 0 1.153v13.694C0 15.484.528 16 1.18 16h13.635c.652 0 1.185-.516 1.185-1.153V1.153C16 .516 15.467 0 14.815 0z" fill-rule="nonzero"/></svg>
    <span class="f6 ml3 pr2">LinkedIn</span>
  </a>
  </a>
     </dd>
  </dl>
    <dl class="dib mr5 Chaos">
    <dd class="f6 f5-ns b ml0">
     広告
   </dd>
  </dl>
</article>
<div class="flex items-center justify-center pa4 bg-lightest-blue navy">
  <svg class="w1" data-icon="info" viewBox="0 0 32 32" style="fill:currentcolor">
    <path d="M16 0 A16 16 0 0 1 16 32 A16 16 0 0 1 16 0 M19 15 L13 15 L13 26 L19 26 z M16 6 A3 3 0 0 0 16 12 A3 3 0 0 0 16 6"></path>
  </svg>
  <span class="lh-title ml3 animated zoomIn ">こちらの入力内容でお間違いないでしょうか。  <div class="ph3 mb4">
  <a class="f6 grow no-underline br-pill ba bw2 ph3 pv2 mb2 dib navy" href="#0">はい</a>
  <a class="f6 grow no-underline br-pill ba bw2 ph3 pv2 mb2 dib dark-blue" href="#0">いいえ</a>
</div></span>

</div>
<br><br>
<!--  -
<article data-name="article-full-bleed-background">
  <div class="cf" style="background: url(http://mrmrs.github.io/photos/12.jpg) no-repeat center center fixed; background-size: cover;">
    <div class="fl pa3 pa4-ns bg-white black-70 measure-narrow f3 times">
      <header class="bb b--black-70 pv4">
        <h3 class="f2 fw7 ttu tracked lh-title mt0 mb3 avenir"></h3>
        <h4 class="f3 fw4 i lh-title mt0"></h4>
      </header>
      <section class="pt5 pb4 animated fadeInUp">
        <p class="times lh-copy measure f4 mt0">
        ${yamizokusei.name}
        ${yamizokusei.gender}
        <fmt:formatDate value="${yamizokusei.date}" pattern="yyyy-MM-dd" var="formattedDate" />
								<c:out value="${formattedDate}"/>
        ${yamizokusei.study}
      		  ${yamizokusei.blood}
			<c:out value="${yamizokusei.text}"/>
        </p>-->

<div class="flex items-center justify-center pa4">
  <a href="#0" class="f5 no-underline black bg-animate hover-bg-black hover-white inline-flex items-center pa3 ba border-box mr4">
      <svg class="w1" data-icon="chevronLeft" viewBox="0 0 32 32" style="fill:currentcolor">
        <title>chevronLeft icon</title>
        <path d="M20 1 L24 5 L14 16 L24 27 L20 31 L6 16 z"></path>
      </svg>
    <span class="pl1">Previous</span>
  </a>
  <a href="#0" class="f5 no-underline black bg-animate hover-bg-black hover-white inline-flex items-center pa3 ba border-box">
    <span class="pr1">Next</span>
    <svg class="w1" data-icon="chevronRight" viewBox="0 0 32 32" style="fill:currentcolor">
      <title>chevronRight icon</title>
      <path d="M12 1 L26 16 L12 31 L8 27 L18 16 L8 5 z"></path>
    </svg>
  </a>
</div>

<div class="cf" style="background-image: url(https://mrmrs.github.io/photos/u/043.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">
${yamizokusei.name}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">
${yamizokusei.gender}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
</div>
<div class="cf" style="background-image: url(https://mrmrs.github.io/photos/u/043.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">
${yamizokusei.name}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">
${yamizokusei.gender}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
</div>
<div class="cf" style="background-image: url(https://mrmrs.github.io/photos/u/043.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">
${yamizokusei.name}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">
${yamizokusei.gender}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
</div>
<div class="cf" style="background-image: url(https://mrmrs.github.io/photos/u/043.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">
${yamizokusei.name}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">
    ${yamizokusei.gender}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
</div>
<div class="cf" style="background-image: url(https://mrmrs.github.io/photos/u/043.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">
   ${yamizokusei.gender}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
</div>
<div class="cf" style="background-image: url(https://mrmrs.github.io/photos/u/043.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">
   ${yamizokusei.gender}
  </div>
</div>
<div class="cf" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">
${yamizokusei.gender}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
</div>
<div class="cf" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">
    ${yamizokusei.gender}
  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
</div>
<div class="cf" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05">

  </div>
</div>
<div class="cf" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05"  style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
</div>
<div class="cf" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05 "  style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">

  </div>
</div>
<div class="cf" style="background-image: url( )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05"  >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05" ">

  </div>
</div>
<div class="cf animated flash bounce pulse  " style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05"  >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05" ">

  </div>
</div>
<div class="cf animated flash bounce pulse  " style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05"  >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05" ">

  </div>
</div>
<div class="cf" style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05"  style="background-image: url(https://joint.itembox.design/item/product/takogen2/10/10-m03.jpg )">

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-20" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-10" style="background-image: url(https://joint.itembox.design/item/product/takogen2/10/10-m03.jpg )" style="opacity: 0.2;" >

  </div>
  <div class="fl w-100 w-20-ns tc pv5 bg-black-05" ">

  </div>
</div>
<section class="flex-ns vh-100 items-center">
  <div class="mw6 ph5">
    <img src="http://tachyons.io/img/iPhone7Vertical.jpg">
  </div>
  <div class="tc tl-ns ph3">
    <h1 class="f3 f1-l fw2 mb3 mt4 mt0-ns">Connect in a whole new way.</h1>
    <h2 class="f5 f3-l fw1 mb4 mb5-l lh-title">Rated the #1 app for communicating with customers.</h2>
    <a href="https://www.amazon.com/Apple-iPhone-Warranty-Unlocked-Cellphone/dp/B015E8UTIU/ref=sr_1_2?ie=UTF8&qid=1481330742&sr=8-2&keywords=iphone+6s" class="dib grow">
      <svg version="1.1" id="US_UK_Download_on_the" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
        x="0px" y="0px" width="135px" height="40px" viewBox="0 0 135 40" enable-background="new 0 0 135 40" xml:space="preserve">
        <g>
          <path fill="#A6A6A6" d="M130.197,40H4.729C2.122,40,0,37.872,0,35.267V4.726C0,2.12,2.122,0,4.729,0h125.468
          C132.803,0,135,2.12,135,4.726v30.541C135,37.872,132.803,40,130.197,40L130.197,40z"/>
          <path d="M134.032,35.268c0,2.116-1.714,3.83-3.834,3.83H4.729c-2.119,0-3.839-1.714-3.839-3.83V4.725
          c0-2.115,1.72-3.835,3.839-3.835h125.468c2.121,0,3.834,1.72,3.834,3.835L134.032,35.268L134.032,35.268z"/>
          <g>
            <g>
              <path fill="#FFFFFF" d="M30.128,19.784c-0.029-3.223,2.639-4.791,2.761-4.864c-1.511-2.203-3.853-2.504-4.676-2.528
              c-1.967-0.207-3.875,1.177-4.877,1.177c-1.022,0-2.565-1.157-4.228-1.123c-2.14,0.033-4.142,1.272-5.24,3.196
              c-2.266,3.923-0.576,9.688,1.595,12.859c1.086,1.553,2.355,3.287,4.016,3.226c1.625-0.067,2.232-1.036,4.193-1.036
              c1.943,0,2.513,1.036,4.207,0.997c1.744-0.028,2.842-1.56,3.89-3.127c1.255-1.78,1.759-3.533,1.779-3.623
              C33.507,24.924,30.161,23.647,30.128,19.784z"/>
              <path fill="#FFFFFF" d="M26.928,10.306c0.874-1.093,1.472-2.58,1.306-4.089c-1.265,0.056-2.847,0.875-3.758,1.944
              c-0.806,0.942-1.526,2.486-1.34,3.938C24.557,12.205,26.016,11.382,26.928,10.306z"/>
            </g>
          </g>
          <g>
            <path fill="#FFFFFF" d="M53.645,31.504h-2.271l-1.244-3.909h-4.324l-1.185,3.909h-2.211l4.284-13.308h2.646L53.645,31.504z
            M49.755,25.955L48.63,22.48c-0.119-0.355-0.342-1.191-0.671-2.507h-0.04c-0.131,0.566-0.342,1.402-0.632,2.507l-1.105,3.475
            H49.755z"/>
            <path fill="#FFFFFF" d="M64.662,26.588c0,1.632-0.441,2.922-1.323,3.869c-0.79,0.843-1.771,1.264-2.942,1.264
            c-1.264,0-2.172-0.454-2.725-1.362h-0.04v5.055h-2.132V25.067c0-1.026-0.027-2.079-0.079-3.159h1.875l0.119,1.521h0.04
            c0.711-1.146,1.79-1.718,3.238-1.718c1.132,0,2.077,0.447,2.833,1.342C64.284,23.949,64.662,25.127,64.662,26.588z M62.49,26.666
            c0-0.934-0.21-1.704-0.632-2.31c-0.461-0.632-1.08-0.948-1.856-0.948c-0.526,0-1.004,0.176-1.431,0.523
            c-0.428,0.35-0.708,0.807-0.839,1.373c-0.066,0.264-0.099,0.48-0.099,0.65v1.6c0,0.698,0.214,1.287,0.642,1.768
            s0.984,0.721,1.668,0.721c0.803,0,1.428-0.31,1.875-0.928C62.266,28.496,62.49,27.68,62.49,26.666z"/>
            <path fill="#FFFFFF" d="M75.699,26.588c0,1.632-0.441,2.922-1.324,3.869c-0.789,0.843-1.77,1.264-2.941,1.264
            c-1.264,0-2.172-0.454-2.724-1.362H68.67v5.055h-2.132V25.067c0-1.026-0.027-2.079-0.079-3.159h1.875l0.119,1.521h0.04
            c0.71-1.146,1.789-1.718,3.238-1.718c1.131,0,2.076,0.447,2.834,1.342C75.32,23.949,75.699,25.127,75.699,26.588z M73.527,26.666
            c0-0.934-0.211-1.704-0.633-2.31c-0.461-0.632-1.078-0.948-1.855-0.948c-0.527,0-1.004,0.176-1.432,0.523
            c-0.428,0.35-0.707,0.807-0.838,1.373c-0.065,0.264-0.099,0.48-0.099,0.65v1.6c0,0.698,0.214,1.287,0.64,1.768
            c0.428,0.48,0.984,0.721,1.67,0.721c0.803,0,1.428-0.31,1.875-0.928C73.303,28.496,73.527,27.68,73.527,26.666z"/>
            <path fill="#FFFFFF" d="M88.039,27.772c0,1.132-0.393,2.053-1.182,2.764c-0.867,0.777-2.074,1.165-3.625,1.165
            c-1.432,0-2.58-0.276-3.449-0.829l0.494-1.777c0.936,0.566,1.963,0.85,3.082,0.85c0.803,0,1.428-0.182,1.877-0.544
            c0.447-0.362,0.67-0.848,0.67-1.454c0-0.54-0.184-0.995-0.553-1.364c-0.367-0.369-0.98-0.712-1.836-1.029
            c-2.33-0.869-3.494-2.142-3.494-3.816c0-1.094,0.408-1.991,1.225-2.689c0.814-0.699,1.9-1.048,3.258-1.048
            c1.211,0,2.217,0.211,3.02,0.632l-0.533,1.738c-0.75-0.408-1.598-0.612-2.547-0.612c-0.75,0-1.336,0.185-1.756,0.553
            c-0.355,0.329-0.533,0.73-0.533,1.205c0,0.526,0.203,0.961,0.611,1.303c0.355,0.316,1,0.658,1.936,1.027
            c1.145,0.461,1.986,1,2.527,1.618C87.77,26.081,88.039,26.852,88.039,27.772z"/>
            <path fill="#FFFFFF" d="M95.088,23.508h-2.35v4.659c0,1.185,0.414,1.777,1.244,1.777c0.381,0,0.697-0.033,0.947-0.099l0.059,1.619
            c-0.42,0.157-0.973,0.236-1.658,0.236c-0.842,0-1.5-0.257-1.975-0.77c-0.473-0.514-0.711-1.376-0.711-2.587v-4.837h-1.4v-1.6h1.4
            v-1.757l2.094-0.632v2.389h2.35V23.508z"/>
            <path fill="#FFFFFF" d="M105.691,26.627c0,1.475-0.422,2.686-1.264,3.633c-0.883,0.975-2.055,1.461-3.516,1.461
            c-1.408,0-2.529-0.467-3.365-1.401s-1.254-2.113-1.254-3.534c0-1.487,0.43-2.705,1.293-3.652c0.861-0.948,2.023-1.422,3.484-1.422
            c1.408,0,2.541,0.467,3.396,1.402C105.283,24.021,105.691,25.192,105.691,26.627z M103.479,26.696
            c0-0.885-0.189-1.644-0.572-2.277c-0.447-0.766-1.086-1.148-1.914-1.148c-0.857,0-1.508,0.383-1.955,1.148
            c-0.383,0.634-0.572,1.405-0.572,2.317c0,0.885,0.189,1.644,0.572,2.276c0.461,0.766,1.105,1.148,1.936,1.148
            c0.814,0,1.453-0.39,1.914-1.168C103.281,28.347,103.479,27.58,103.479,26.696z"/>
            <path fill="#FFFFFF" d="M112.621,23.783c-0.211-0.039-0.436-0.059-0.672-0.059c-0.75,0-1.33,0.283-1.738,0.85
            c-0.355,0.5-0.533,1.132-0.533,1.895v5.035h-2.131l0.02-6.574c0-1.106-0.027-2.113-0.08-3.021h1.857l0.078,1.836h0.059
            c0.225-0.631,0.58-1.139,1.066-1.52c0.475-0.343,0.988-0.514,1.541-0.514c0.197,0,0.375,0.014,0.533,0.039V23.783z"/>
            <path fill="#FFFFFF" d="M122.156,26.252c0,0.382-0.025,0.704-0.078,0.967h-6.396c0.025,0.948,0.334,1.673,0.928,2.173
            c0.539,0.447,1.236,0.671,2.092,0.671c0.947,0,1.811-0.151,2.588-0.454l0.334,1.48c-0.908,0.396-1.98,0.593-3.217,0.593
            c-1.488,0-2.656-0.438-3.506-1.313c-0.848-0.875-1.273-2.05-1.273-3.524c0-1.447,0.395-2.652,1.186-3.613
            c0.828-1.026,1.947-1.539,3.355-1.539c1.383,0,2.43,0.513,3.141,1.539C121.873,24.047,122.156,25.055,122.156,26.252z
            M120.123,25.699c0.014-0.632-0.125-1.178-0.414-1.639c-0.369-0.593-0.936-0.889-1.699-0.889c-0.697,0-1.264,0.289-1.697,0.869
            c-0.355,0.461-0.566,1.014-0.631,1.658H120.123z"/>
          </g>
          <g>
            <g>
              <path fill="#FFFFFF" d="M49.05,10.009c0,1.177-0.353,2.063-1.058,2.658c-0.653,0.549-1.581,0.824-2.783,0.824
              c-0.596,0-1.106-0.026-1.533-0.078V6.982c0.557-0.09,1.157-0.136,1.805-0.136c1.145,0,2.008,0.249,2.59,0.747
              C48.723,8.156,49.05,8.961,49.05,10.009z M47.945,10.038c0-0.763-0.202-1.348-0.606-1.756c-0.404-0.407-0.994-0.611-1.771-0.611
              c-0.33,0-0.611,0.022-0.844,0.068v4.889c0.129,0.02,0.365,0.029,0.708,0.029c0.802,0,1.421-0.223,1.857-0.669
              S47.945,10.892,47.945,10.038z"/>
              <path fill="#FFFFFF" d="M54.909,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.009,0.718-1.727,0.718
              c-0.692,0-1.243-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.712-0.698
              c0.692,0,1.248,0.229,1.669,0.688C54.708,9.757,54.909,10.333,54.909,11.037z M53.822,11.071c0-0.435-0.094-0.808-0.281-1.119
              c-0.22-0.376-0.533-0.564-0.94-0.564c-0.421,0-0.741,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
              c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.714-0.191,0.94-0.574
              C53.725,11.882,53.822,11.506,53.822,11.071z"/>
              <path fill="#FFFFFF" d="M62.765,8.719l-1.475,4.714h-0.96l-0.611-2.047c-0.155-0.511-0.281-1.019-0.379-1.523h-0.019
              c-0.091,0.518-0.217,1.025-0.379,1.523l-0.649,2.047h-0.971l-1.387-4.714h1.077l0.533,2.241c0.129,0.53,0.235,1.035,0.32,1.513
              h0.019c0.078-0.394,0.207-0.896,0.389-1.503l0.669-2.25h0.854l0.641,2.202c0.155,0.537,0.281,1.054,0.378,1.552h0.029
              c0.071-0.485,0.178-1.002,0.32-1.552l0.572-2.202H62.765z"/>
              <path fill="#FFFFFF" d="M68.198,13.433H67.15v-2.7c0-0.832-0.316-1.248-0.95-1.248c-0.311,0-0.562,0.114-0.757,0.343
              c-0.193,0.229-0.291,0.499-0.291,0.808v2.796h-1.048v-3.366c0-0.414-0.013-0.863-0.038-1.349h0.921l0.049,0.737h0.029
              c0.122-0.229,0.304-0.418,0.543-0.569c0.284-0.176,0.602-0.265,0.95-0.265c0.44,0,0.806,0.142,1.097,0.427
              c0.362,0.349,0.543,0.87,0.543,1.562V13.433z"/>
              <path fill="#FFFFFF" d="M71.088,13.433h-1.047V6.556h1.047V13.433z"/>
              <path fill="#FFFFFF" d="M77.258,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.01,0.718-1.727,0.718
              c-0.693,0-1.244-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.711-0.698
              c0.693,0,1.248,0.229,1.67,0.688C77.057,9.757,77.258,10.333,77.258,11.037z M76.17,11.071c0-0.435-0.094-0.808-0.281-1.119
              c-0.219-0.376-0.533-0.564-0.939-0.564c-0.422,0-0.742,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
              c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.713-0.191,0.939-0.574
              C76.074,11.882,76.17,11.506,76.17,11.071z"/>
              <path fill="#FFFFFF" d="M82.33,13.433h-0.941l-0.078-0.543h-0.029c-0.322,0.433-0.781,0.65-1.377,0.65
              c-0.445,0-0.805-0.143-1.076-0.427c-0.246-0.258-0.369-0.579-0.369-0.96c0-0.576,0.24-1.015,0.723-1.319
              c0.482-0.304,1.16-0.453,2.033-0.446V10.3c0-0.621-0.326-0.931-0.979-0.931c-0.465,0-0.875,0.117-1.229,0.349l-0.213-0.688
              c0.438-0.271,0.979-0.407,1.617-0.407c1.232,0,1.85,0.65,1.85,1.95v1.736C82.262,12.78,82.285,13.155,82.33,13.433z
              M81.242,11.813v-0.727c-1.156-0.02-1.734,0.297-1.734,0.95c0,0.246,0.066,0.43,0.201,0.553c0.135,0.123,0.307,0.184,0.512,0.184
              c0.23,0,0.445-0.073,0.641-0.218c0.197-0.146,0.318-0.331,0.363-0.558C81.236,11.946,81.242,11.884,81.242,11.813z"/>
              <path fill="#FFFFFF" d="M88.285,13.433h-0.93l-0.049-0.757h-0.029c-0.297,0.576-0.803,0.864-1.514,0.864
              c-0.568,0-1.041-0.223-1.416-0.669s-0.562-1.025-0.562-1.736c0-0.763,0.203-1.381,0.611-1.853c0.395-0.44,0.879-0.66,1.455-0.66
              c0.633,0,1.076,0.213,1.328,0.64h0.02V6.556h1.049v5.607C88.248,12.622,88.26,13.045,88.285,13.433z M87.199,11.445v-0.786
              c0-0.136-0.01-0.246-0.029-0.33c-0.059-0.252-0.186-0.464-0.379-0.635c-0.195-0.171-0.43-0.257-0.701-0.257
              c-0.391,0-0.697,0.155-0.922,0.466c-0.223,0.311-0.336,0.708-0.336,1.193c0,0.466,0.107,0.844,0.322,1.135
              c0.227,0.31,0.533,0.465,0.916,0.465c0.344,0,0.619-0.129,0.828-0.388C87.1,12.069,87.199,11.781,87.199,11.445z"/>
              <path fill="#FFFFFF" d="M97.248,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.008,0.718-1.727,0.718
              c-0.691,0-1.242-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.713-0.698
              c0.691,0,1.248,0.229,1.668,0.688C97.047,9.757,97.248,10.333,97.248,11.037z M96.162,11.071c0-0.435-0.094-0.808-0.281-1.119
              c-0.221-0.376-0.533-0.564-0.941-0.564c-0.42,0-0.74,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
              c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.715-0.191,0.941-0.574
              C96.064,11.882,96.162,11.506,96.162,11.071z"/>
              <path fill="#FFFFFF" d="M102.883,13.433h-1.047v-2.7c0-0.832-0.316-1.248-0.951-1.248c-0.311,0-0.562,0.114-0.756,0.343
              s-0.291,0.499-0.291,0.808v2.796h-1.049v-3.366c0-0.414-0.012-0.863-0.037-1.349h0.92l0.049,0.737h0.029
              c0.123-0.229,0.305-0.418,0.543-0.569c0.285-0.176,0.602-0.265,0.951-0.265c0.439,0,0.805,0.142,1.096,0.427
              c0.363,0.349,0.543,0.87,0.543,1.562V13.433z"/>
              <path fill="#FFFFFF" d="M109.936,9.504h-1.154v2.29c0,0.582,0.205,0.873,0.611,0.873c0.188,0,0.344-0.016,0.467-0.049
              l0.027,0.795c-0.207,0.078-0.479,0.117-0.814,0.117c-0.414,0-0.736-0.126-0.969-0.378c-0.234-0.252-0.35-0.676-0.35-1.271V9.504
              h-0.689V8.719h0.689V7.855l1.027-0.31v1.173h1.154V9.504z"/>
              <path fill="#FFFFFF" d="M115.484,13.433h-1.049v-2.68c0-0.845-0.316-1.268-0.949-1.268c-0.486,0-0.818,0.245-1,0.735
              c-0.031,0.103-0.049,0.229-0.049,0.377v2.835h-1.047V6.556h1.047v2.841h0.02c0.33-0.517,0.803-0.775,1.416-0.775
              c0.434,0,0.793,0.142,1.078,0.427c0.355,0.355,0.533,0.883,0.533,1.581V13.433z"/>
              <path fill="#FFFFFF" d="M121.207,10.853c0,0.188-0.014,0.346-0.039,0.475h-3.143c0.014,0.466,0.164,0.821,0.455,1.067
              c0.266,0.22,0.609,0.33,1.029,0.33c0.465,0,0.889-0.074,1.271-0.223l0.164,0.728c-0.447,0.194-0.973,0.291-1.582,0.291
              c-0.73,0-1.305-0.215-1.721-0.645c-0.418-0.43-0.625-1.007-0.625-1.731c0-0.711,0.193-1.303,0.582-1.775
              c0.406-0.504,0.955-0.756,1.648-0.756c0.678,0,1.193,0.252,1.541,0.756C121.068,9.77,121.207,10.265,121.207,10.853z
              M120.207,10.582c0.008-0.311-0.061-0.579-0.203-0.805c-0.182-0.291-0.459-0.437-0.834-0.437c-0.342,0-0.621,0.142-0.834,0.427
              c-0.174,0.227-0.277,0.498-0.311,0.815H120.207z"/>
            </g>
          </g>
        </g>
      </svg>
    </a>
  </div>
</section>
<section class="mw7 center">
  <h2 class="athelas ph3 ph0-l">News</h2>
  <article class="pv4 bt bb b--black-10 ph3 ph0-l">
    <div class="flex flex-column flex-row-ns">
      <div class="w-100 w-60-ns pr3-ns order-2 order-1-ns">
        <h1 class="f3 athelas mt0 lh-title">Tech Giant Invests Huge Money to Build a Computer Out of Science Fiction</h1>
        <p class="f5 f4-l lh-copy athelas">
          The tech giant says it is ready to begin planning a quantum
          computer, a powerful cpu machine that relies on subatomic particles instead
          of transistors.
        </p>
      </div>
      <div class="pl3-ns order-1 order-2-ns mb4 mb0-ns w-100 w-40-ns">
        <img src="http://mrmrs.github.io/photos/cpu.jpg" class="db" alt="Photo of a dimly lit room with a computer interface terminal.">
      </div>
    </div>
    <p class="f6 lh-copy gray mv0">By <span class="ttu">Robin Darnell</span></p>
    <time class="f6 db gray">Nov. 21, 2016</time>
  </article>
  <article class="pv4 bb b--black-10 ph3 ph0-l">
    <div class="flex flex-column flex-row-ns">
      <div class="w-100 w-60-ns pr3-ns order-2 order-1-ns">
        <h1 class="f3 athelas mt0 lh-title">A whale takes up residence in a large body of water</h1>
        <p class="f5 f4-l lh-copy athelas">
          This giant of a whale says it is ready to begin planning a new
          swim later this afternoon. A powerful mammal that relies on fish and plankton instead
          of hamburgers.
        </p>
      </div>
      <div class="pl3-ns order-1 order-2-ns mb4 mb0-ns w-100 w-40-ns">
        <img src="https://joint.itembox.design/item/product/takogen2/10/10-m01.jpg" class="db" alt="Photo of a whale's tale coming crashing out of the water.">
      </div>
    </div>
    <p class="f6 lh-copy gray mv0">By <span class="ttu">Katherine Grant</span></p>
    <time class="f6 db gray">Nov. 19, 2016</time>
  </article>
  <article class="pv4 bb b--black-10 ph3 ph0-l">
    <div class="flex flex-column flex-row-ns">
      <div class="w-100 w-60-ns pr3-ns order-2 order-1-ns">
        <h1 class="f3 athelas mt0 lh-title">
          ‘We Couldn’t Believe Our Eyes’: A Lost World of Vinyl Is Found
        </h1>
        <p class="f5 f4-l lh-copy athelas">
          Archaeologists have found more than 40 tons of vinyl records,
          some more than a five years old, shedding light on early hipster
          trends.
        </p>
      </div>
      <div class="pl3-ns order-1 order-2-ns mb4 mb0-ns w-100 w-40-ns">
        <img src="http://mrmrs.github.io/photos/warehouse.jpg" class="db" alt="Photo of a warehouse with stacked shelves.">
      </div>
    </div>
    <p class="f6 lh-copy gray mv0">By <span class="ttu">Imelda Clancy</span></p>
    <time class="f6 db gray">Nov. 19, 2016</time>
  </article>
</section>
<main class="mw6 center">
    <article class="dt w-100 bb b--black-05 pb2 mt2" href="#0">
      <div class="dtc w2 w3-ns v-mid">
        <img src="http://mrmrs.github.io/photos/p/2.jpg" class="ba b--black-10 db br-100 w2 w3-ns h2 h3-ns"/>
      </div>
      <div class="dtc v-mid pl3">
        <h1 class="f6 f5-ns fw6 lh-title black mv0">Young Gatchell </h1>
        <h2 class="f6 fw4 mt0 mb0 black-60">@yg</h2>
      </div>
      <div class="dtc v-mid">
        <form class="w-100 tr">
          <button class="f6 button-reset bg-white ba b--black-10 dim pointer pv1 black-60" type="submit">+ Follow</button>
        </form>
      </div>
    </article>
    <article class="dt w-100 bb b--black-05 pb2 mt2" href="#0">
      <div class="dtc w2 w3-ns v-mid">
        <img src="http://mrmrs.github.io/photos/p/3.jpg" class="ba b--black-10 db br-100 w2 w3-ns h2 h3-ns"/>
      </div>
      <div class="dtc v-mid pl3">
        <h1 class="f6 f5-ns fw6 lh-title black mv0">Arnoldo Degraff</h1>
        <h2 class="f6 fw4 mt0 mb0 black-60">@99xx88randomhandle</h2>
      </div>
      <div class="dtc v-mid">
        <form class="w-100 tr">
          <button class="f6 button-reset bg-white ba b--black-10 dim pointer pv1 black-60" type="submit">+ Follow</button>
        </form>
      </div>
    </article>
    <article class="dt w-100 bb b--black-05 pb2 mt2" href="#0">
      <div class="dtc w2 w3-ns v-mid">
        <img src="http://mrmrs.github.io/photos/p/4.jpg" class="ba b--black-10 db br-100 w2 w3-ns h2 h3-ns"/>
      </div>
      <div class="dtc v-mid pl3">
        <h1 class="f6 f5-ns fw6 lh-title black mv0">Deirdre Lachance</h1>
        <h2 class="f6 fw4 mt0 mb0 black-60">@favfavfav</h2>
      </div>
      <div class="dtc v-mid">
        <form class="w-100 tr">
          <button class="f6 button-reset bg-white ba b--black-10 dim pointer pv1 black-60" type="submit">+ Follow</button>
        </form>
      </div>
    </article>
    <article class="dt w-100 bb b--black-05 pb2 mt2" href="#0">
      <div class="dtc w2 w3-ns v-mid">
        <img src="http://mrmrs.github.io/photos/p/5.jpg" class="ba b--black-10 db br-100 w2 w3-ns h2 h3-ns"/>
      </div>
      <div class="dtc v-mid pl3">
        <h1 class="f6 f5-ns fw6 lh-title black mv0">Frederic Starner</h1>
        <h2 class="f6 fw4 mt0 mb0 black-60">@hungryhippofanatic</h2>
      </div>
      <div class="dtc v-mid">
        <form class="w-100 tr">
          <button class="f6 button-reset bg-white ba b--black-10 dim pointer pv1 black-60" type="submit">+ Follow</button>
        </form>
      </div>
    </article>
    <article class="dt w-100 bb b--black-05 pb2 mt2" href="#0">
      <div class="dtc w2 w3-ns v-mid">
        <img src="http://mrmrs.github.io/photos/p/6.jpg" class="ba b--black-10 db br-100 w2 w3-ns h2 h3-ns"/>
      </div>
      <div class="dtc v-mid pl3">
        <h1 class="f6 f5-ns fw6 lh-title black mv0">Cleveland Ridout</h1>
        <h2 class="f6 fw4 mt0 mb0 black-60">@purethinking</h2>
      </div>
      <div class="dtc v-mid">
        <form class="w-100 tr">
          <button class="f6 button-reset bg-white ba b--black-10 dim pointer pv1 black-60" type="submit">+ Follow</button>
        </form>
      </div>
    </article>
    <article class="dt w-100 bb b--black-05 pb2 mt2" href="#0">
      <div class="dtc w2 w3-ns v-mid">
        <img src="http://mrmrs.github.io/photos/p/7.jpg" class="ba b--black-10 db br-100 w2 w3-ns h2 h3-ns"/>
      </div>
      <div class="dtc v-mid pl3">
        <h1 class="f6 f5-ns fw6 lh-title black mv0">Leticia Fearon</h1>
        <h2 class="f6 fw4 mt0 mb0 black-60">@retrofeels</h2>
      </div>
      <div class="dtc v-mid">
        <form class="w-100 tr">
          <button class="f6 button-reset bg-white ba b--black-10 dim pointer pv1 black-60" type="submit">+ Follow</button>
        </form>
      </div>
    </article>
    <article class="dt w-100 bb b--black-05 pb2 mt2" href="#0">
      <div class="dtc w2 w3-ns v-mid">
        <img src="https://pbs.twimg.com/profile_images/1262318514225819648/qVnD7_2Q_400x400.jpg" class="ba b--black-10 db br-100 w2 w3-ns h2 h3-ns"/>
      </div>
      <div class="dtc v-mid pl3">
        <h1 class="f6 f5-ns fw6 lh-title black mv0">健康管理食宅配サービス けんたくん　紫波・花巻店</h1>
        <h2 class="f6 fw4 mt0 mb0 black-60">@kentakunsh</h2>
      </div>
      <div class="dtc v-mid">
        <form class="w-100 tr">
          <button class="f6 button-reset bg-white ba b--black-10 dim pointer pv1 black-60" type="submit">+ Follow</button>
        </form>
      </div>
    </article>
    <article class="dt w-100 bb b--black-05 pb2 mt2" href="#0">
      <div class="dtc w2 w3-ns v-mid">
        <img src="http://mrmrs.github.io/photos/p/11.jpg" class="ba b--black-10 db br-100 w2 w3-ns h2 h3-ns"/>
      </div>
      <div class="dtc v-mid pl3">
        <h1 class="f6 f5-ns fw6 lh-title black mv0">Carlie Noakes</h1>
        <h2 class="f6 fw4 mt0 mb0 black-60">@carnoakes99</h2>
      </div>
      <div class="dtc v-mid">
        <form class="w-100 tr">
          <button class="f6 button-reset bg-white ba b--black-10 dim pointer pv1 black-60" type="submit">+ Follow</button>
        </form>
      </div>
    </article>
  </main>

<!-- SVG Icons are from https://simpleicons.org -->
<footer class="pv4 ph3 ph5-ns tc">
  <a class="link near-black hover-silver dib h2 w2 mr3" href="https://facebook.com title="Facebook">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M15.117 0H.883C.395 0 0 .395 0 .883v14.234c0 .488.395.883.883.883h7.663V9.804H6.46V7.39h2.086V5.607c0-2.066 1.262-3.19 3.106-3.19.883 0 1.642.064 1.863.094v2.16h-1.28c-1 0-1.195.476-1.195 1.176v1.54h2.39l-.31 2.416h-2.08V16h4.077c.488 0 .883-.395.883-.883V.883C16 .395 15.605 0 15.117 0" fill-rule="nonzero"/></svg>
  </a>
  <a class="link near-black hover-silver dib h2 w2 mr3" href="https://github.com/mrmrs" title="GitHub">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M8 0C3.58 0 0 3.582 0 8c0 3.535 2.292 6.533 5.47 7.59.4.075.547-.172.547-.385 0-.19-.007-.693-.01-1.36-2.226.483-2.695-1.073-2.695-1.073-.364-.924-.89-1.17-.89-1.17-.725-.496.056-.486.056-.486.803.056 1.225.824 1.225.824.714 1.223 1.873.87 2.33.665.072-.517.278-.87.507-1.07-1.777-.2-3.644-.888-3.644-3.953 0-.873.31-1.587.823-2.147-.083-.202-.358-1.015.077-2.117 0 0 .672-.215 2.2.82.638-.178 1.323-.266 2.003-.27.68.004 1.364.092 2.003.27 1.527-1.035 2.198-.82 2.198-.82.437 1.102.163 1.915.08 2.117.513.56.823 1.274.823 2.147 0 3.073-1.87 3.75-3.653 3.947.287.246.543.735.543 1.48 0 1.07-.01 1.933-.01 2.195 0 .215.144.463.55.385C13.71 14.53 16 11.534 16 8c0-4.418-3.582-8-8-8"/></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://instagram.com/mrmrs_" title="Instagram">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M8 0C5.827 0 5.555.01 4.702.048 3.85.088 3.27.222 2.76.42c-.526.204-.973.478-1.417.923-.445.444-.72.89-.923 1.417-.198.51-.333 1.09-.372 1.942C.008 5.555 0 5.827 0 8s.01 2.445.048 3.298c.04.852.174 1.433.372 1.942.204.526.478.973.923 1.417.444.445.89.72 1.417.923.51.198 1.09.333 1.942.372.853.04 1.125.048 3.298.048s2.445-.01 3.298-.048c.852-.04 1.433-.174 1.942-.372.526-.204.973-.478 1.417-.923.445-.444.72-.89.923-1.417.198-.51.333-1.09.372-1.942.04-.853.048-1.125.048-3.298s-.01-2.445-.048-3.298c-.04-.852-.174-1.433-.372-1.942-.204-.526-.478-.973-.923-1.417-.444-.445-.89-.72-1.417-.923-.51-.198-1.09-.333-1.942-.372C10.445.008 10.173 0 8 0zm0 1.44c2.136 0 2.39.01 3.233.048.78.036 1.203.166 1.485.276.374.145.64.318.92.598.28.28.453.546.598.92.11.282.24.705.276 1.485.038.844.047 1.097.047 3.233s-.01 2.39-.048 3.233c-.036.78-.166 1.203-.276 1.485-.145.374-.318.64-.598.92-.28.28-.546.453-.92.598-.282.11-.705.24-1.485.276-.844.038-1.097.047-3.233.047s-2.39-.01-3.233-.048c-.78-.036-1.203-.166-1.485-.276-.374-.145-.64-.318-.92-.598-.28-.28-.453-.546-.598-.92-.11-.282-.24-.705-.276-1.485C1.45 10.39 1.44 10.136 1.44 8s.01-2.39.048-3.233c.036-.78.166-1.203.276-1.485.145-.374.318-.64.598-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276C5.61 1.45 5.864 1.44 8 1.44zm0 2.452c-2.27 0-4.108 1.84-4.108 4.108 0 2.27 1.84 4.108 4.108 4.108 2.27 0 4.108-1.84 4.108-4.108 0-2.27-1.84-4.108-4.108-4.108zm0 6.775c-1.473 0-2.667-1.194-2.667-2.667 0-1.473 1.194-2.667 2.667-2.667 1.473 0 2.667 1.194 2.667 2.667 0 1.473-1.194 2.667-2.667 2.667zm5.23-6.937c0 .53-.43.96-.96.96s-.96-.43-.96-.96.43-.96.96-.96.96.43.96.96z"/></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://youtube.com title="youtube">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M0 7.345c0-1.294.16-2.59.16-2.59s.156-1.1.636-1.587c.608-.637 1.408-.617 1.764-.684C3.84 2.36 8 2.324 8 2.324s3.362.004 5.6.166c.314.038.996.04 1.604.678.48.486.636 1.588.636 1.588S16 6.05 16 7.346v1.258c0 1.296-.16 2.59-.16 2.59s-.156 1.102-.636 1.588c-.608.638-1.29.64-1.604.678-2.238.162-5.6.166-5.6.166s-4.16-.037-5.44-.16c-.356-.067-1.156-.047-1.764-.684-.48-.487-.636-1.587-.636-1.587S0 9.9 0 8.605v-1.26zm6.348 2.73V5.58l4.323 2.255-4.32 2.24h-.002z"/></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://soundcloud.com/mrsjxn" title="SoundCloud">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><g fill-rule="nonzero"><path d="M.773 8.13c-.034 0-.062.03-.067.066L.55 9.633l.156 1.405c.005.038.033.065.067.065.033 0 .06-.027.066-.065l.178-1.405-.18-1.437C.835 8.158.807 8.13.774 8.13M.18 8.682c-.032 0-.06.025-.063.062L0 9.634l.117.872c.004.037.03.063.064.063s.06-.027.065-.063l.14-.874-.14-.89c-.005-.036-.03-.06-.064-.06M1.4 7.85c-.04 0-.075.033-.08.078l-.148 1.705.15 1.643c.003.045.037.078.08.078.04 0 .074-.033.08-.078l.17-1.643-.17-1.705c-.006-.045-.04-.078-.08-.078M2.035 7.79c-.05 0-.09.04-.094.092l-.14 1.75.14 1.696c.005.052.045.092.095.092s.09-.04.094-.092l.16-1.695-.16-1.752c-.006-.05-.046-.09-.095-.09M2.78 11.342zM2.78 8.008c-.003-.06-.05-.106-.106-.106-.058 0-.104.046-.108.107l-.133 1.623.133 1.71c.004.06.05.105.108.105.057 0 .103-.046.107-.106l.152-1.71-.15-1.624zM3.318 6.87c-.065 0-.118.053-.12.12L3.07 9.634l.125 1.71c.003.065.056.118.12.118.065 0 .118-.053.122-.12l.14-1.708-.14-2.644c-.005-.067-.058-.12-.122-.12M3.957 6.262c-.072 0-.132.058-.135.133l-.117 3.248.117 1.698c.003.076.063.134.135.134.072 0 .13-.058.135-.133v.002l.132-1.7-.132-3.247c-.004-.075-.063-.133-.135-.133M4.62 5.968c-.08 0-.144.065-.147.148l-.11 3.52.11 1.68c.003.08.068.146.148.146.08 0 .146-.065.15-.147l.123-1.68-.123-3.52c-.004-.082-.07-.147-.15-.147M5.443 5.997c-.003-.09-.074-.16-.162-.16-.088 0-.16.07-.16.16l-.102 3.638.1 1.67c.003.09.074.16.163.16.09 0 .16-.07.163-.16l.113-1.67-.113-3.638zM5.443 11.304zM5.945 5.915c-.096 0-.173.077-.175.175l-.093 3.545.093 1.654c.002.096.08.173.175.173.096 0 .174-.077.176-.175v.002l.105-1.655L6.12 6.09c0-.098-.08-.175-.175-.175M6.615 6.03c-.104 0-.187.084-.19.19l-.084 3.416.086 1.643c.002.104.085.186.19.186.103 0 .186-.082.19-.188l.093-1.642-.095-3.416c-.003-.106-.086-.19-.19-.19M7.402 5.403c-.032-.02-.07-.034-.112-.034-.04 0-.078.01-.11.032-.054.036-.092.098-.093.17v.038L7.01 9.635l.077 1.634v.006c.003.045.02.087.048.12.037.045.093.074.155.074.055 0 .106-.023.142-.06.037-.036.06-.087.06-.142l.01-.162.077-1.47-.087-4.065c0-.07-.037-.13-.09-.167M7.493 11.27v-.002zM8.072 5.018c-.032-.02-.07-.03-.11-.03-.05 0-.1.017-.137.048-.048.04-.08.1-.08.167v.022l-.09 4.41.047.817.043.793c.002.118.1.215.217.215.118 0 .215-.097.217-.216v.002l.095-1.61-.096-4.433c-.002-.08-.045-.147-.108-.185M14.032 7.538c-.27 0-.527.055-.76.153-.158-1.773-1.645-3.164-3.46-3.164-.443 0-.876.087-1.258.235-.15.06-.188.117-.19.232v6.246c.002.12.095.215.213.226h5.455c1.087 0 1.968-.87 1.968-1.958 0-1.087-.88-1.968-1.968-1.968"/></g></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="#" title="Stack Overflow">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M12.658 14.577v-4.27h1.423V16H1.23v-5.693H2.65v4.27h10.006zm-8.583-1.423h7.16V11.73h-7.16v1.424zm.173-3.235l6.987 1.465.3-1.38L4.55 8.54l-.302 1.38zm.906-3.365l6.47 3.02.602-1.295-6.47-3.02-.602 1.295zm1.81-3.19l5.478 4.57.906-1.078-5.477-4.57-.905 1.077zM10.502 0L9.338.863l4.27 5.735 1.164-.862L10.5 0z"/></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://slack.com title="Slack">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><g fill-rule="nonzero"><path d="M6.586 7.33l.69 2.057 2.137-.716-.69-2.056-2.137.716z"/><path d="M12.55 9.37l-1.037.347.36 1.073c.145.434-.09.904-.524 1.05-.096.03-.19.045-.287.042-.338-.01-.65-.226-.765-.566l-.36-1.072-2.138.716.36 1.072c.145.435-.09.905-.523 1.05-.096.032-.192.045-.286.043-.34-.01-.65-.226-.764-.566l-.36-1.075-1.037.348c-.096.03-.19.045-.286.042-.34-.008-.65-.226-.765-.565-.146-.434.09-.904.522-1.05L5.7 9.914l-.69-2.058-1.037.347c-.094.032-.19.045-.285.043-.338-.01-.65-.226-.765-.566-.145-.434.09-.904.523-1.05l1.037-.347-.36-1.073c-.145-.434.09-.904.524-1.05.435-.145.905.09 1.05.524l.36 1.072 2.137-.716-.36-1.072c-.144-.435.09-.905.524-1.05.435-.145.906.09 1.05.523l.36 1.075 1.037-.347c.434-.146.904.088 1.05.522.145.434-.09.904-.523 1.05l-1.037.347.69 2.057 1.036-.347c.435-.145.905.09 1.05.523.146.434-.09.904-.522 1.05zm2.78-3.57C13.68.304 11.298-.98 5.8.67.304 2.32-.98 4.7.67 10.2c1.65 5.497 4.03 6.78 9.53 5.13 5.497-1.65 6.78-4.03 5.13-9.53z"/></g></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://medium.com/@mrmrs_/" title="Medium">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M11.824 12.628l-.276.45.798.398 2.744 1.372c.15.076.294.11.418.11.278 0 .467-.177.467-.492V5.883l-4.15 6.745zm4.096-8.67c-.004-.003 0-.01-.003-.012l-4.825-2.412c-.06-.03-.123-.038-.187-.044-.016 0-.03-.01-.047-.01-.184 0-.368.092-.467.254l-.24.39-.5.814-1.89 3.08 1.89 3.076.5.813.5.812.59.95 4.71-7.64c.02-.03.01-.06-.02-.08zm-6.27 7.045L7.17 6.97l-.295-.477-.294-.477-.25-.416v4.867l3.32 1.663.5.25.5.25-.5-.813-.5-.813zM.737 1.68L.59 1.608c-.085-.042-.166-.062-.24-.062-.206 0-.35.16-.35.427v10.162c0 .272.2.594.442.716l4.145 2.08c.107.06.208.08.3.08.257 0 .438-.2.438-.53V4.01c0-.02-.012-.04-.03-.047L.738 1.68z"/></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://linkedin.com title="LinkedIn">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M13.632 13.635h-2.37V9.922c0-.886-.018-2.025-1.234-2.025-1.235 0-1.424.964-1.424 1.96v3.778h-2.37V6H8.51V7.04h.03c.318-.6 1.092-1.233 2.247-1.233 2.4 0 2.845 1.58 2.845 3.637v4.188zM3.558 4.955c-.762 0-1.376-.617-1.376-1.377 0-.758.614-1.375 1.376-1.375.76 0 1.376.617 1.376 1.375 0 .76-.617 1.377-1.376 1.377zm1.188 8.68H2.37V6h2.376v7.635zM14.816 0H1.18C.528 0 0 .516 0 1.153v13.694C0 15.484.528 16 1.18 16h13.635c.652 0 1.185-.516 1.185-1.153V1.153C16 .516 15.467 0 14.815 0z" fill-rule="nonzero"/></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://twitter.com/mrmrs_" title="Twitter">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M16 3.038c-.59.26-1.22.437-1.885.517.677-.407 1.198-1.05 1.443-1.816-.634.375-1.337.648-2.085.795-.598-.638-1.45-1.036-2.396-1.036-1.812 0-3.282 1.468-3.282 3.28 0 .258.03.51.085.75C5.152 5.39 2.733 4.084 1.114 2.1.83 2.583.67 3.147.67 3.75c0 1.14.58 2.143 1.46 2.732-.538-.017-1.045-.165-1.487-.41v.04c0 1.59 1.13 2.918 2.633 3.22-.276.074-.566.114-.865.114-.21 0-.416-.02-.617-.058.418 1.304 1.63 2.253 3.067 2.28-1.124.88-2.54 1.404-4.077 1.404-.265 0-.526-.015-.783-.045 1.453.93 3.178 1.474 5.032 1.474 6.038 0 9.34-5 9.34-9.338 0-.143-.004-.284-.01-.425.64-.463 1.198-1.04 1.638-1.7z" fill-rule="nonzero"/></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://tumblr.com" title="Tumblr">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M9.708 16c-3.396 0-4.687-2.504-4.687-4.274V6.498H3.403V4.432C5.83 3.557 6.412 1.368 6.55.12c.01-.086.077-.12.115-.12H9.01v4.076h3.2v2.422H8.997v4.98c.01.667.25 1.58 1.472 1.58h.067c.424-.012.994-.136 1.29-.278l.77 2.283c-.288.424-1.594.916-2.77.936h-.12z" fill-rule="nonzero"/></svg>
  </a>
  <a class="link hover-silver near-black dib h2 w2 mr3" href="https://codepen.io" title="CodePen">
    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="1.414"><path d="M15.988 5.443c-.004-.02-.007-.04-.012-.058l-.01-.033c-.006-.017-.012-.034-.02-.05-.003-.012-.01-.023-.014-.034l-.023-.045-.02-.032-.03-.04-.024-.03c-.01-.013-.022-.026-.034-.038l-.027-.027-.04-.032-.03-.024-.012-.01L8.38.117c-.23-.155-.53-.155-.76 0L.305 4.99.296 5c-.012.007-.022.015-.032.023-.014.01-.027.02-.04.032l-.027.027-.034.037-.024.03-.03.04c-.006.012-.013.022-.02.033l-.023.045-.015.034c-.007.016-.012.033-.018.05l-.01.032c-.005.02-.01.038-.012.058l-.006.03C.002 5.5 0 5.53 0 5.56v4.875c0 .03.002.06.006.09l.007.03c.003.02.006.04.013.058l.01.033c.006.018.01.035.018.05l.015.033c.006.016.014.03.023.047l.02.03c.008.016.018.03.03.042.007.01.014.02.023.03.01.012.02.025.034.036.01.01.018.02.028.026l.04.033.03.023.01.01 7.31 4.876c.116.078.248.117.382.116.134 0 .266-.04.38-.116l7.314-4.875.01-.01c.012-.007.022-.015.032-.023.014-.01.027-.02.04-.032l.027-.027.034-.037.024-.03.03-.04.02-.032.023-.046.015-.033.018-.052.01-.033c.005-.02.01-.038.013-.058 0-.01.003-.02.004-.03.004-.03.006-.06.006-.09V5.564c0-.03-.002-.06-.006-.09l-.007-.03zM8 9.626L5.568 8 8 6.374 10.432 8 8 9.626zM7.312 5.18l-2.98 1.993-2.406-1.61 5.386-3.59v3.206zM3.095 8l-1.72 1.15v-2.3L3.095 8zm1.237.828l2.98 1.993v3.208l-5.386-3.59 2.406-1.61zm4.355 1.993l2.98-1.993 2.407 1.61-5.387 3.59v-3.206zM12.905 8l1.72-1.15v2.3L12.905 8zm-1.237-.827L8.688 5.18V1.97l5.386 3.59-2.406 1.61z" fill-rule="nonzero"/></svg>
  </a>
</footer>
<footer class="pa4 pa5-l black-70 bt b--black-10">
  <div class="mb4-l cf">
    <h1 class="fl w-100 pv0 f6 fw6 ttu tracked mb4">Studios</h1>
    <article class="fl w-50 dib-ns w-auto-ns mr4-m mr5-l mb4 pr2 pr0-ns">
      <h4 class="f5 f4-l fw6">SF</h4>
      <span class="f7 f6-l db black-70">837 Larkin St.</span>
      <span class="f7 f6-l black-70">San Francisco, CA 94109 </span>
      <a class="f6 db fw6 pv3 black-70 link dim" title="Call SF" href="tel:+12075555555">
        +1 207-555-5555
      </a>
    </article>
    <article class="fl w-50 dib-ns w-auto-ns mr4-m mr5-l mb4 pl2 pl0-ns">
      <h4 class="f5 f4-l fw6">LA</h4>
      <span class="f7 f6-l db black-70">
        1111 Manor Way
      </span>
      <span class="f7 f6-l di black-70">
        Los Angeles, CA 90048
      </span>
      <a href="tel:+13235555555" class="f6 db fw6 pv3 link dim black-70" title="Call the LA office.">
        +1 323-555-5555
      </a>
    </article>
    <article class="fl w-50 dib-ns w-auto-ns mr4-m mr5-l mb4 pr2 pr0-ns">
      <h4 class="f5 f4-l fw6">London</h4>
      <span class="f7 f6-l db black-70">11 Downey St.</span>
      <span class="f7 f6-l black-70">London, UK</span>
      <a href="tel:+5555555555" class="link dim f6 db fw6 pv3 black-70" title="Call the London office">+44 0 5555-5555</a>
    </article>
    <article class="fl w-50 dib-ns w-auto-ns mb4 pl2 pl0-ns">
      <h4 class="f5 f4-l fw6">Osaka</h4>
      <span class="f7 f6-l db black-70">〒550-0005.</span>
      <span class="f7 f6-l">大阪府大阪市西区西本町１丁目７番７号CE西本町ビル901</span>
      <a href="tel:+444444444444" class="f6 db dim fw6 pv3 link black-70" title="Call Tokyo Office">
        +99 0120-777-422
      </a>
    </article>
  </div>
  <section class="cf mb5">
    <div class="mb4 mb0-ns w-100 w-50-l fr">
      <a class="black-70 f3 f2-ns fw6 tl link dim dib pv3 mt2 mb4 mb0-l" href="mailto:hello@impossible.com" >
       info@mirainokatachi.com
      </a>
    </div>
    <div class="mb4 mb0-ns fl w-100 w-50-l" >
      <p class="f4 fw6 mb2 f6 mt0">
        Sign up for our newsletter.
      </p>
      <input placeholder="Email Address" class="mw-100 w-100 w5-ns f5 input-reset ba b--black-20 pv3 ph4 border-box">
      <input type="submit" class="input-reset w-100 w-auto-ns bg-black-80 white f5 pv2 pv3-ns ph4 ba b--black-80 bg-hover-mid-gray">
    </div>
  </section>
  <div class="dt dt--fixed w-100" >
    <div class="dn dtc-ns v-mid">
      <p class="f7 black-70 dib pr3 mb3">
        Copyright © 就労移行支援事業所 未来のかたち
      </p>
    </div>
    <div class="db dtc-ns black-70 tc tr-ns v-mid">
      <a href="https://www.facebook.com/" class="link dim dib mr3 black-70" title="Impossible Labs on Facebook">
        <svg class="db w2 h2" data-icon="facebook" viewBox="0 0 32 32" fill="currentColor">
          <title >facebook icon</title>
          <path d="M8 12 L13 12 L13 8 C13 2 17 1 24 2 L24 7 C20 7 19 7 19 10 L19 12 L24 12 L23 18 L19 18 L19 30 L13 30 L13 18 L8 18 z"
          ></path>
        </svg>
      </a>
      <a href="https://twitter.com/" class="link dim dib mr3 black-70">
        <svg class="db w2 h2" data-icon="twitter" viewBox="0 0 32 32"
          fill="currentColor" >
          <title >twitter icon</title>
          <path d="M2 4 C6 8 10 12 15 11 A6 6 0 0 1 22 4 A6 6 0 0 1 26 6 A8 8 0 0 0 31 4 A8 8 0 0 1 28 8 A8 8 0 0 0 32 7 A8 8 0 0 1 28 11 A18 18 0 0 1 10 30 A18 18 0 0 1 0 27 A12 12 0 0 0 8 24 A8 8 0 0 1 3 20 A8 8 0 0 0 6 19.5 A8 8 0 0 1 0 12 A8 8 0 0 0 3 13 A8 8 0 0 1 2 4"
          ></path>
        </svg>
      </a>
      <a href="https://medium.com/" class="link dim dib mr3 black-70" title="Impossible Labs on Medium">
        <svg class="db w2 h2" x="0px" y="0px" viewBox="0 0 290 248.6"
          fill="currentColor" >
          <g >
            <path fill="currentColor" class="st0" d="M287.8,46.3L196,0.3c-0.4-0.2-0.9-0.3-1.3-0.3c0,0-0.1,0-0.1,0c-1.1,0-2.2,0.6-2.8,1.5l-56.6,92l63.2,102.7 l90.4-146.9C289.4,48.3,289,46.8,287.8,46.3z"
            ></path>
            <polygon fill="currentColor" points="105.2,61.2 105.2,160.3 193.3,204.4 	"
            ></polygon>
            <path fill="currentColor" d="M201,208.2l80.9,40.5c4.4,2.2,8,0,8-5v-180L201,208.2z"
            ></path>
            <path fill="currentColor" d="M95.5,46.7L10.7,4.3L5.4,1.7C4.6,1.3,3.8,1.1,3.2,1.1c-0.9,0-1.7,0.4-2.3,1.1C0.3,2.8,0,3.8,0,5v193.4 c0,3.3,2.4,7.2,5.4,8.7l83.3,41.6c1.2,0.6,2.3,0.9,3.3,0.9c2.8,0,4.8-2.2,4.8-5.8V48.7C96.7,47.8,96.2,47.1,95.5,46.7z"
            ></path>
          </g>
        </svg>
      </a>
      <a href="https://www.linkedin.com/company/" class="link dim dib black-70">
        <svg class="db w2 h2" x="0px" y="0px" viewBox="0 0 48 48" >
          <linearGradient gradientUnits="userSpaceOnUse" x1="23.9995"
            y1="0" x2="23.9995" y2="48.0005" >
            <stop offset="0" ></stop>
            <stop offset="1" ></stop>
          </linearGradient>
          <path fill="currentColor" d="M48,42c0,3.313-2.687,6-6,6H6c-3.313,0-6-2.687-6-6V6 c0-3.313,2.687-6,6-6h36c3.313,0,6,2.687,6,6V42z"
          ></path>
          <g >
            <g >
              <path fill="#FFFFFF" d="M15.731,11.633c-1.608,0-2.658,1.083-2.625,2.527c-0.033,1.378,1.018,2.494,2.593,2.494 c1.641,0,2.691-1.116,2.691-2.494C18.357,12.716,17.339,11.633,15.731,11.633z M13.237,35.557h4.988V18.508h-4.988V35.557z M31.712,18.748c-1.595,0-3.222-0.329-4.956,2.36h-0.099l-0.087-2.599h-4.417c0.065,1.411,0.074,3.518,0.074,5.52v11.529h4.988 v-9.854c0-0.46,0.065-0.919,0.196-1.248c0.328-0.919,1.149-1.871,2.527-1.871c1.805,0,2.527,1.411,2.527,3.479v9.494h4.988V25.439 C37.455,20.713,34.993,18.748,31.712,18.748z"
              ></path>
            </g>
          </g>
        </svg>
      </a>
    </div>
  </div>
  <div class="db dn-ns">
    <p class="f7 black-70 mt4 tc">
      Copyright © 就労移行支援事業所 未来のかたち
    </p>
  </div>
</footer>

</body>
</html>