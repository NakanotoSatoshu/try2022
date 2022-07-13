<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@  page import="model.Pttt" %>
<%--Pttt pe = (Pttt)request.getAttribute("yamizokusei") ;--%>
<!DOCTYPE html>
<html>
<head>
<style>
.Chaos{
  	animation: Chaos1 190s linear infinite;
		transition: all 92.5s;
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
<link rel="stylesheet" href="https://unpkg.com/tachyons@4.12.0/css/tachyons.min.css"/>
<link rel="stylesheet" href="/test.css"/>
<!--    <link rel="stylesheet" href="https://unpkg.com/turretcss/dist/turretcss.min.css" crossorigin="anonymous"> -->
<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css"/>
  <!--  -<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
<!--  <link rel="stylesheet" href="https://unpkg.com/mvp.css"> -->
<script type="module">
      import faviconSwitcher from 'https://unpkg.com/favicon-mode-switcher@1.0.4/dist/index.min.mjs'
      faviconSwitcher([
        { element: '#icon-ico', href: { dark: './icons/light-favicon.ico' } },
        { element: '#icon-16', href: { dark: './icons/light-favicon-16x16.png' } },
        { element: '#icon-32', href: { dark: './icons/light-favicon-32x32.png' } }
      ])
    </script>
<script>window.navigator.clipboard||document.write(' <script src="https://unpkg.com/clipboard-polyfill@2.8.6/dist/clipboard-polyfill.promise.js"> <\/script>');</script>
<script type="application/ld+json">{"@context":"http://www.schema.org","@type":"WebSite","name":"Water.css","alternateName":"Water.css","url":"https://watercss.kognise.dev/"}</script>
<meta charset="UTF-8">
<title>寿司食べたい</title>
</head>
<body class="">
<c:forEach var="error" items="${errors}">
		<div class=" tc-l mt4 mt5-m mt6-l ph3 box animated flash infinite Chaos"
		 style="background-image: url(https://www.food-joint.com/img/facility/system_img01.jpg )">
		<h1 class="f2 f1-l fw2 white-90 mb0 lh-title  Chaos"><br>${error}</h1>
		<h1 class="f2 f1-l fw2 white-90 mb0 lh-title  Chaos"><br>${error}</h1>
		<h1 class="f2 f1-l fw2 white-90 mb0 lh-title  Chaos"><br>${error}</h1>
		<h1 class="f2 f1-l fw2 white-90 mb0 lh-title  Chaos"><br>${error}</h1>
		</div>
	</c:forEach>
<div class="">
<div class="box animated fadeInUp ">
<header class="sans-serif box animated zoomIn">
  <div class="cover bg-left bg-center-l" style="background-image: url(https://mrmrs.github.io/photos/u/043.jpg
  )">
    <div class="bg-black-80 pb5 pb6-m pb7-l">
      <nav class="dt w-100 mw8 center">
        <div class="dtc w2 v-mid pa3">
          <a href="/" class="dib w2 h2 pa1 ba b--white-90 grow-large border-box">
            <svg class="link white-90 hover-white" data-icon="skull" viewBox="0 0 32 32" style="fill:currentcolor"><title> 寿司食べたい</title><path d="M16 0 C6 0 2 4 2 14 L2 22 L6 24 L6 30 L26 30 L26 24 L30 22 L30 14 C30 4 26 0 16 0 M9 12 A4.5 4.5 0 0 1 9 21 A4.5 4.5 0 0 1 9 12 M23 12 A4.5 4.5 0 0 1 23 21 A4.5 4.5 0 0 1 23 12"></path></svg>
          </a>
        </div>
        <div class="dtc v-mid tr pa3">
          <a class="f6 fw4 hover-white no-underline white-70 dn dib-ns pv2 ph3 box animated bounce " href="/" > 寿司食べたい</a>
          <a class="f6 fw4 hover-white no-underline white-70 dn dib-ns pv2 ph3 box animated bounce " href="/" >  寿司食べたい</a>
          <a class="f6 fw4 hover-white no-underline white-70 dn dib-l pv2 ph3" href="/" >   寿司食べたい</a>
          <a class="f6 fw4 hover-white no-underline white-70 dn dib-l pv2 ph3" href="/" >        寿司</a>
          <a class="f6 fw4 hover-white no-underline white-70 dib ml2 pv2 ph3 ba box animated bounce infinite" href="https://www.akindo-sushiro.co.jp/" >   寿司食べたい</a>
        </div>
      </nav>
      <div class="tc-l mt4 mt5-m mt6-l ph3">
     <div class="pa4-l">
       <fieldset class="cf bn ma0 pa0  ">
  <form action ="/try/ex2" method="post" class="bg-light-red mw7 center pa4 br2-ns ba b--black-10 box animated zoomInLeft " >
   <!--   <form  action ="/ex2Fire" method="get" class="pa4 black-80"> -->
  <div class="measure" id="  ">
    <label for="name" class="f6 b db mb2 box animated bounce ">名前 <span class="normal black-60"></span></label>
    <input name="name" id="name" class="input-reset ba b--black-20 pa2 mb2 db w-100" type="text" aria-describedby="name-desc" value="${yamizokusei.name}">
	<!-- <input type="hidden" name="name" value="foo" >-->
    <small id="name-desc" class="f6 black-60 db mb2 box animated bounce ">名前を入力してください</small>
    <input class="f6 f5-l button-reset fl pv3 tc bn bg-animate bg-black-70 hover-bg-black white pointer w-100 w-25-m w-20-l br2-ns br--right-ns box animated bounce infinite" type="submit" value="送信">
  <fieldset id="favorite_movies" class="bn">
<label class="control radio">
	男
  <input type="radio" name="gender"  value="男性"  <c:if test="${yamizokusei.gender == '男性'}"   >checked</c:if>/>
   <span class="control-indicator"></span>
  	女
  <input type="radio" name="gender"  value="女性"   <c:if test="${yamizokusei.gender == '女性'}"  >checked</c:if>/>
     <span class="control-indicator"></span>
    その他
  <input type="radio" name="gender"  value="その他ってじゃあなんなんだよ"   <c:if test="${yamizokusei.gender == 'その他ってじゃあなんなんだよ'}">checked</c:if>/>
     <span class="control-indicator"></span>
</label>
<br><br>
<label class="select" for="select">
血液型
  <select id="select" name ="blood">
<option   value="選択されていません"  selected>血液型</option>
  <option  value="A型"  <c:if test="${yamizokusei.blood == 'A型'}" >selected</c:if>>A 型</option>
  <option  value="B型" <c:if test="${yamizokusei.blood == 'B型'}" >selected</c:if>>B 型</option>
  <option  value="O型" <c:if test="${yamizokusei.blood == 'O型'}" >selected</c:if>>O 型</option>
  <option  value="AB型" <c:if test="${yamizokusei.blood == 'AB型'}">selected</c:if>>AB 型</option>
  <option  value="不明（もしくは血液を必要としない）" <c:if test="${yamizokusei.blood == '不明（もしくは血液を必要としない'}">selected</c:if>>不明（もしくは血液を必要としない）</option>
</select>
</label>
<br><br>
<label class="control switch">
	<span>学習内容</span>
  <input type="checkbox"  name="study" value="Java"
  	<c:forEach var="subject" items="${yamizokusei.study}">
				<c:if test="${subject =='Java'}">checked</c:if>
	</c:forEach>
  /><b>Java</b>
   <input type="checkbox" name="study"value="PHP"
   <c:forEach var="subject" items="${yamizokusei.study}">
				<c:if test="${subject =='PHP'}">checked</c:if>
			</c:forEach>
			 /><b>PHP</b>
    <input type="checkbox"name="study" value="HTML"
    <c:forEach var="subject" items="${yamizokusei.study}">
				<c:if test="${subject =='HTML'}">checked</c:if>
			</c:forEach>
			 /><b>HTML</b>
     <input type="checkbox" name="study"value="デザイン"
      <c:forEach var="subject" items="${yamizokusei.study}">
				<c:if test="${subject =='デザイン'}">checked</c:if>
			</c:forEach>
			 /> <b>デザイン</b>
      <input type="checkbox" name="study" value="人生"
      <c:forEach var="subject" items="${yamizokusei.study}">
				<c:if test="${subject =='人生'}">checked</c:if>
			</c:forEach>
			 /> <b>その他</b>

</label>

<br><br>
<label for="input-textarea">備考</label>
<textarea id="input-textarea" cols="40" rows="5" placeholder="Textarea text" name ="text" ><c:out value="${yamizokusei.text}"></c:out>
</textarea>

<br><br>
<!--
<label for="input-text">備考</label>
<input type="text" id="input-text" placeholder="Text" name = "text" value="text"/>
<label for="input-disabled">Disabled</label>
<input type="text" id="input-disabled" placeholder="Disabled" disabled="" />
<br><br>
<label for="input-email">Email Input</label>
<input type="email" id="input-email" placeholder="Email" />
<br><br>
<label for="input-search">Search Input</label>
<input type="search" id="input-search" placeholder="Search" />
<br><br>
<label for="input-tel">Telephone Input</label>
<input type="tel" id="input-tel" placeholder="Telephone" />
<br><br>
<label for="input-url">URL Input</label>
<input type="url" id="input-url" placeholder="https://" />
<br><br>
<label for="input-password">Password Input</label>
<input type="password" id="input-password" value="password" />
<br><br>
<label for="input-file">File Input</label>
<input type="file" id="input-file" />
<br><br>
<label for="input-textarea">Textarea</label>
<textarea id="input-textarea" cols="30" rows="5" placeholder="Textarea text"></textarea>
<br><br>
<label for="input-number">Number Input</label>
<input type="number" id="input-number" min="0" max="10" placeholder="Enter a number form 0 to 10" />
<br><br>-->
<label for="input-date">Date Input</label>
<fmt:formatDate value="${date}" pattern="yyyy-MM-dd" var="formattedDate"/>
<input type="date"  name="date" id=""   value="${formattedDate}" />
  </fieldset>
  </div>
</form>
    </fieldset>
</div>
      </div>
    </div>
  </div>
</header>
</div>
</div>
<main class="cf pa3 pa4-m pa5-l mw9 center   ">
  <div class="fr w-100 w-80-l">
    <p class="f6">
          寿司食べたい
    </p>
    <h1 class="f2 f1-l lh-title mt0 mb4 mb5-ns">
           寿司食べたい<br class="dn db-ns">     寿司食べたい
    </h1>
  </div>
  <div class="f6 lh-copy fl w-100 mb4">
    <div class="fl-ns w-100 w-20-l pr3-m pr5-l">
      <p>
           寿司食べたいh <small class="fw6">     寿司食べたい</small>
      </p>
    </div>
    <div class="fl-ns w-50-m w-20-l pr3-m pr5-l">
      <p>
         寿司食べたい
      </p>
    </div>
    <div class="fl-ns w-50-m w-20-l pr3-m pr5-l">
      <p>
             寿司食べたい<br class="dn db-l">      寿司食べたい
      </p>
    </div>
    <div class="fl-ns w-50-m w-20-l pr3-m pr5-l">
      <p>
            寿司食べたい
      </p>
    </div>
    <div class="fl-ns w-50-m w-20-l pr3-m pr5-l">
      <p>
            寿司食べたい
      </p>
    </div>
  </div>
  <img src="http://mrmrs.github.io/photos/u/007.jpg" class="db" alt="iceland"/>
</main>

<!--
<header>
        <nav>
            <a href=""><img alt="" src="" height="70"></a>
            <ul>
                <li>ダミーデータ</li>
                <li><a href="#docs">ダミーデータ</a></li>
                <li><a href="#faq">ダミーデータ</a></li>
                <li><a href="#" onclick="toggleDarkMode();" id="colorToggle">Dark Mode</a></li>
                <li><a href="https://www.github.com/andybrewer/mvp/" target="_blank">ダミーデータ</a></li>
            </ul>
        </nav>
        <h1>ダミーデータ<u>ダミーデータ</u> ダミーデータ</h1>
        <p><b>ダミーデータ,</b> ダミーデータ<em>ダミーデータ</em> ダミーデータ <mark>ダミーデータ</mark>.</p>
        <br>
        <p><a download="mvp.html" href="./mvp.html" target="_blank"><i>ダミーデータ</i></a><a download="mvp.css" href="./mvp.css" target="_blank"><b>ダミーデータ</b></a></p>
    </header>
	<div>
<button type="button" id="dialog-trigger">押してみてね </button>
<span id="dialog-result">君の選んだやつ</span>
 </div>

	<form>
		<label for="email">Email</label> <input type="email" name="email"
			id="email" placeholder="john.doe@gmail.com"> <label for="id">User
			id (read only)</label> <input readonly="" name="id" id="id" value="04D6H89Z">
		<label for="disabled">Random disabled input</label> <input disabled=""
			name="disabled" id="disabled" placeholder="Because why not?">
		<label for="about">補足</label>
		<textarea name="about" id="about" placeholder="I am a textarea..."></textarea>
		<label>好きなハンバーガー:</label>
		<div>
			<input type="radio" id="john" name="drone" value="john" checked="">
			<label for="john">テキサスバーガー</label>
		</div>
		<div>
			<input type="radio" id="jane" name="drone" value="jane" checked="">
			<label for="jane">ベーコンポテトパイ</label>
		</div>
		<div>
			<input type="radio" id="johnny" name="drone" value="johnny"
				checked=""> <label for="johnny">アイダホバーガー</label>
		</div>
		<br> <input type="checkbox" name="remember" id="remember"
			checked=""> <label for="remember">設定を保存する</label> <input
			type="submit" value="承認する"> <input type="reset"
			value="すべてを洗い流す">
	</form>　-->

<section class="flex-ns vh-100 items-center box animated fadeInUp ">
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
<footer class="box animated fadeInUpSmall">
        <hr>
        <p>
            Made by <a href="https://www.andybrewer.com" target="_blank">Andy Brewer
                ↗</a><br>
        </p>
</footer>
</body>
</html>