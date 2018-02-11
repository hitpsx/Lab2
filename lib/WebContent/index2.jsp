<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Directive</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<style type="text/css">
			table.hovertable {
				font-family: verdana, arial, sans-serif;
				font-size: 11px;
				color: #ffffff;
				border-width: 1px;
				border-color: #999999;
				border-collapse: collapse;
			}
			
			table.hovertable th {
				background-color: #5182bb;
				border-width: 1px;
				padding: 8px;
				border-style: solid;
				border-color: #5182bb;
				font-size: 11px;
				color: #FFFFFF;
			}
			
			table.hovertable tr {
				background-color: #ffffff;
				border-width: 1px;
				border-style: solid;
				border-color: #5182bb;
				font-size: 11px;
				color: #ffffff;
			}
			
			table.hovertable td {
				border-width: 0px;
				padding: 8px;
				border-style: solid;
				border-color: #5182bb;
				color: #333333;
			}
			
			.blank1 {
				float: right;
				width: 35%;
				height: 23px
			}
			
			.blank2 {
				float: right;
				width: 150px;
				height: 23px
			}
			
			.unread {
				float: right;
				width: 75px;
				height: 23px
			}
			
			.readed {
				float: right;
				width: 75px;
				height: 23px
			}
			</style>
	</head>
	<body>

		<!-- Header -->
			<div id="header">
				<span class="logo icon fa-paper-plane-o"></span>
				<form class="form" action="" method="post">
							<input type="hidden" name=userid
								value=<s:property value="user.userid"/> />
							<table class="hovertable">
								<tr>
									<th>ISBN</th>
									<th>AuthorID</th>
									<th>Title</th>						
									<th>Publisher</th>
									<th>PublisherDate</th>
									<th>Price</th>
									<th>Manage</th>
								</tr>
								<s:iterator value="bookAll" var="Lend">
									<tr onMouseOver="this.style.backgroundColor='#fdf5e6';"
										onmouseout="this.style.backgroundColor='#ffffff';">
										<td><s:property value="#Lend.ISBN" /></td>
										<td><s:property value="#Lend.AuthorID" /></td>
										<td><a href="searchBookByTitle?title=<s:property value="#Lend.Title" />&authorid=<s:property value="#Lend.AuthorID" />"><s:property value="#Lend.Title" /></a></td>
										<td><s:property value="#Lend.Publisher" /></td>
										<td><s:property value="#Lend.PublishDate" /></td>
										<td><s:property value="#Lend.Price" /></td>
										<td><a href="deleteBookMain?bookid=<s:property value="#Lend.ISBN" />&title=<s:property value="#Lend.Title" />&authorid=<s:property value="#Lend.AuthorID" />">Delete</a></td>
									</tr>
								</s:iterator>

							</table>
				</form>
				<a href="index.jsp">Home</a>
			</div>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >ä¼ä¸ç½ç«æ¨¡æ¿</a></div>

		<!-- Main -->
			<div id="main">
			
				<header class="major container small">
					<h2>We conduct experiments that
					<br />
					may or may not seriously
					<br />
					break the universe</h2>
					<!--
					<p>Tellus erat mauris ipsum fermentum<br />
					etiam vivamus nunc nibh morbi.</p>
					-->
				</header>
				
				<div class="box alt container">
					<section class="feature left">
						<a href="#" class="image icon fa-signal"><img src="images/pic01.jpg" alt="" /></a>
						<div class="content">
							<h3>The First Thing</h3>
							<p>Vitae natoque dictum etiam semper magnis enim feugiat amet curabitur tempor orci penatibus. Tellus erat mauris ipsum fermentum etiam vivamus eget. Nunc nibh morbi quis fusce lacus.</p>
						</div>
					</section>
					<section class="feature right">
						<a href="#" class="image icon fa-code"><img src="images/pic02.jpg" alt="" /></a>
						<div class="content">
							<h3>The Second Thing</h3>
							<p>Vitae natoque dictum etiam semper magnis enim feugiat amet curabitur tempor orci penatibus. Tellus erat mauris ipsum fermentum etiam vivamus eget. Nunc nibh morbi quis fusce lacus.</p>
						</div>
					</section>
					<section class="feature left">
						<a href="#" class="image icon fa-mobile"><img src="images/pic03.jpg" alt="" /></a>
						<div class="content">
							<h3>The Third Thing</h3>
							<p>Vitae natoque dictum etiam semper magnis enim feugiat amet curabitur tempor orci penatibus. Tellus erat mauris ipsum fermentum etiam vivamus eget. Nunc nibh morbi quis fusce lacus.</p>
						</div>
					</section>
				</div>
				
				<!--
				<div class="box container">
					<header>
						<h2>A lot of generic stuff</h2>
					</header>
					<section>
						<header>
							<h3>Paragraph</h3>
							<p>This is the subtitle for this particular heading</p>
						</header>
						<p>Phasellus nisl nisl, varius id <sup>porttitor sed pellentesque</sup> ac orci. Pellentesque 
						habitant <strong>strong</strong> tristique <b>bold</b> et netus <i>italic</i> malesuada <em>emphasized</em> ac turpis egestas. Morbi 
						leo suscipit ut. Praesent <sub>id turpis vitae</sub> turpis pretium ultricies. Vestibulum sit 
						amet risus elit.</p>
					</section>
					<section>
						<header>
							<h3>Blockquote</h3>
						</header>
						<blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget.
						tempus euismod. Vestibulum ante ipsum primis in faucibus.</blockquote>
					</section>
					<section>
						<header>
							<h3>Divider</h3>
						</header>
						<p>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra 
						ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel. Praesent nec orci 
						facilisis leo magna. Cras sit amet urna eros, id egestas urna. Quisque aliquam 
						tempus euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices 
						posuere cubilia.</p>
						<hr />
						<p>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra 
						ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel. Praesent nec orci 
						facilisis leo magna. Cras sit amet urna eros, id egestas urna. Quisque aliquam 
						tempus euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices 
						posuere cubilia.</p>
					</section>
					<section>
						<header>
							<h3>Unordered List</h3>
						</header>
						<ul class="default">
							<li>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</li>
							<li>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</li>
							<li>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</li>
							<li>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</li>
						</ul>
					</section>
					<section>
						<header>
							<h3>Ordered List</h3>
						</header>
						<ol class="default">
							<li>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</li>
							<li>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</li>
							<li>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</li>
							<li>Donec consectetur vestibulum dolor et pulvinar. Etiam vel felis enim, at viverra ligula. Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</li>
						</ol>
					</section>
					<section>
						<header>
							<h3>Table</h3>
						</header>
						<div class="table-wrapper">
							<table class="default">
								<thead>
									<tr>
										<th>ID</th>
										<th>Name</th>
										<th>Description</th>
										<th>Price</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>45815</td>
										<td>Something</td>
										<td>Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</td>
										<td>29.99</td>
									</tr>
									<tr>
										<td>24524</td>
										<td>Nothing</td>
										<td>Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</td>
										<td>19.99</td>
									</tr>
									<tr>
										<td>45815</td>
										<td>Something</td>
										<td>Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</td>
										<td>29.99</td>
									</tr>
									<tr>
										<td>24524</td>
										<td>Nothing</td>
										<td>Ut porttitor sagittis lorem, quis eleifend nisi ornare vel.</td>
										<td>19.99</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="3"></td>
										<td>100.00</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</section>
					<section>
						<header>
							<h3>Form</h3>
						</header>
						<form method="post" action="#">
							<div class="row">
								<div class="6u">
									<label for="name">Name</label>
									<input class="text" type="text" name="name" id="name" value="" placeholder="John Doe" />
								</div>
								<div class="6u">
									<label for="email">Email</label>
									<input class="text" type="text" name="email" id="email" value="" placeholder="johndoe@domain.tld" />
								</div>
							</div>
							<div class="row">
								<div class="12u">
									<label for="subject">Subject</label>
									<input class="text" type="text" name="subject" id="subject" value="" placeholder="Enter your subject" />
								</div>
							</div>
							<div class="row">
								<div class="12u">
									<label for="subject">Message</label>
									<textarea name="message" id="message" placeholder="Enter your message" rows="6"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="12u">
									<ul class="actions">
										<li><input type="submit" value="Send" /></li>
										<li><input type="reset" value="Reset" class="alt" /></li>
									</ul>
								</div>
							</div>
						</form>
					</section>
				</div>
				-->
				
				<footer class="major container small">
					<h3>Get shady with science</h3>
					<p>Vitae natoque dictum etiam semper magnis enim feugiat amet curabitur tempor orci penatibus. Tellus erat mauris ipsum fermentum etiam vivamus.</p>
					<ul class="actions">
						<li><a href="#" class="button">Join our crew</a></li>
					</ul>
				</footer>

			</div>
			
		<!-- Footer -->
			<div id="footer">
				<div class="container small">

					<header class="major last">
						<h2>Questions or comments?</h2>
					</header>

					<p>Vitae natoque dictum etiam semper magnis enim feugiat amet curabitur tempor
					orci penatibus. Tellus erat mauris ipsum fermentum etiam vivamus.</p>

					<form method="post" action="#">
						<div class="row collapse-at-2">
							<div class="6u">
								<input type="text" name="name" placeholder="Name" />
							</div>
							<div class="6u">
								<input type="email" name="email" placeholder="Email" />
							</div>
						</div>
						<div class="row">
							<div class="12u">
								<textarea name="message" placeholder="Message" rows="6"></textarea>
							</div>
						</div>
						<div class="row">
							<div class="12u">
								<ul class="actions">
									<li><input type="submit" value="Send Message" /></li>
								</ul>
							</div>
						</div>
					</form>
				
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
					</ul>
					
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="#">HTML5 UP</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a></li>
					</ul>
			
				</div>
			</div>

	</body>
</html>