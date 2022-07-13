<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@  page import="model.Pttt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://unpkg.com/tachyons@4.12.0/css/tachyons.min.css" />
<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css" />
<!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">S
<!--  <link rel="stylesheet" href="https://unpkg.com/mvp.css"> -->
<script type="module">
      import faviconSwitcher from 'https://unpkg.com/favicon-mode-switcher@1.0.4/dist/index.min.mjs'
      faviconSwitcher([
        { element: '#icon-ico', href: { dark: './icons/light-favicon.ico' } },
        { element: '#icon-16', href: { dark: './icons/light-favicon-16x16.png' } },
        { element: '#icon-32', href: { dark: './icons/light-favicon-32x32.png' } }
      ])
    </script>
<script>
	window.navigator.clipboard
			|| document
					.write(' <script src="https://unpkg.com/clipboard-polyfill@2.8.6/dist/clipboard-polyfill.promise.js"> <\/script>');
</script>
<script type="application/ld+json">{"@context":"http://www.schema.org","@type":"WebSite","name":"Water.css","alternateName":"Water.css","url":"https://watercss.kognise.dev/"}</script>
<meta charset="UTF-8">
<title>寿司食べたい</title>
</head>
<body class="">
	<div class="">
		<div class="box animated fadeInUp ">
			fadeInUp
			<header class="sans-serif box animated zoomIn">
				<div class="cover bg-left bg-center-l"
					style="background-image: url(https://mrmrs.github.io/photos/u/043.jpg )">
					<div class="bg-black-80 pb5 pb6-m pb7-l">
						<nav class="dt w-100 mw8 center">
							<div class="dtc w2 v-mid pa3">
								<a href="/"
									class="dib w2 h2 pa1 ba b--white-90 grow-large border-box">
									<svg class="link white-90 hover-white" data-icon="skull"
										viewBox="0 0 32 32" style="fill: currentcolor">
										<title>寿司食べたい</title><path
											d="M16 0 C6 0 2 4 2 14 L2 22 L6 24 L6 30 L26 30 L26 24 L30 22 L30 14 C30 4 26 0 16 0 M9 12 A4.5 4.5 0 0 1 9 21 A4.5 4.5 0 0 1 9 12 M23 12 A4.5 4.5 0 0 1 23 21 A4.5 4.5 0 0 1 23 12"></path></svg>
								</a>
							</div>
							<div class="dtc v-mid tr pa3 box animated flash  infinite ">
							</div>
						</nav>
						<div class="tc-l mt4 mt5-m mt6-l ph3 box animated flash  infinite">
							<h1
								class="f2 f1-l fw2 white-90 mb0 lh-title box animated flash bounce pulse infinite ">
								名前：${yamizokusei.name}<br> 性別：${yamizokusei.gender}<br>
							    誕生日：
								<fmt:formatDate value="${yamizokusei.date}" pattern="yyyy-MM-dd" var="formattedDate" />
								<c:out value="${formattedDate}"/><br>
								 血液型：${yamizokusei.blood}<br>
								学習内容：${yamizokusei.study}<br>
								<pre>備考：<c:out value="${yamizokusei.text}"/></pre><br>
							</h1>
							<h2 class="fw1 f3 white-80 mt3 mb4 box animated flash  infinite">
							</h2>
							<a
								class="f6 no-underline grow dib v-mid bg-blue white ba b--blue ph3 pv2 mb3"
								href="/">${yamizokusei.name} </a> <span
								class="dib v-mid ph3 white-70 mb3">or</span> <a
								class="f6 no-underline grow dib v-mid white ba b--white ph3 pv2 mb3"
								href="">${yamizokusei.name} </a>
						</div>
			</header>

		</div>
	</div>


</body>
</html>