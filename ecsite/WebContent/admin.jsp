<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="imagetoolbar" content="no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>Home画面</title>
		<style type="text/css">

			body {
				margin:0;
				padding:0;
				line-height:1.6;
				letter-spacing:1px;
				font-family:Verdana, Helvetica, sans-serif;
				font-size:15px;
				color:#333;
				background:#fff;
			}

			/* ========ecsite LAYOUT======== */
			#top {
				width:780px;
				margin:30px auto;
				border:1px
			}
			#header {
				width: 100%;
				height: 80px;
				background-color: black;
			}
			#main {
				width: 100%;
				height: 500px;
				text-align: center;
			}
			#footer {
				width: 100%;
				height: 80px;
				background-color: black;
				position: absolute;
				clear:both;
			}
			#text-center {
				display: inline-block;
				text-align: center;
			}
 			#item {
 				position: relative;
 				float:left;
				width:15%;
 				margin-left:300px;
				border:5px solid #555555;
 				padding: 15px;
			}
 			#user {
 				position: relative;
 				float:right;
 				margin-right:300px;
 				width:15%;
 				border:5px solid #555555;
 				padding: 15px;
		    }
 			#titlebox {/
 				position:absolute;
 				top:-20px;
 				left:80px;
 				font-size:100%;
 				padding:0.5em;
 				background: #ffffff;
 			} */

		</style>
	</head>

	<body>

		<div id="header">

		<div id="pr">
		</div>

		</div>
		<div id="main">
			<div id="top">
				<p>管理者画面</p>
			</div>
			<div id="item">
				<div id="box">
					<div id="titlebox"><span id="title">商品</span></div>
					<div id="text-center">
						<s:form action="ItemCreateAction">
							<s:submit value="新規登録"/>
						</s:form>
						<s:form action="ItemListAction">
							<s:submit value="一覧"/>
						</s:form>
					</div>
				</div>
			</div>
			<div id="user">
				<div id="box">
					<div id="titlebox"><span id="title">ユーザー</span></div>
					<div id="text-center">
						<s:form action="UserCreateAction">
							<s:submit value="新規登録"/>
						</s:form>
						<s:form action="UserListAction">
							<s:submit value="一覧"/>
						</s:form>
					</div>
				</div>
			</div>

			<div><p>Homeへ戻る場合は
                  <a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
                </div>
		</div>
		<div id="footer">
			<div id="pr">
			</div>
		</div>
	</body>
</html>
