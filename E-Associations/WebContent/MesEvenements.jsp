<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>



* {
	margin:0px;
	padding:0px;
}
*, *:after, *:before { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing: border-box; }

.clearfix:before, .clearfix:after { display: table; content: ''; }
.clearfix:after { clear: both; }


body {
	background: #E2e2e2;
	color: #333;
	font-weight: normal;
	font-size: 1em;
	font-family: 'Roboto', Arial, sans-serif;
}

input:focus, textarea:focus, keygen:focus, select:focus {
	outline: none;
}
::-moz-placeholder {
	color: #666;
	font-weight: 300;
	opacity: 1;
}

::-webkit-input-placeholder {
	color: #666;
	font-weight: 300;
}

.grid .col2 {
	width: 50%;
	padding: 0 10px 0 0;
}
.grid .col2.first {
	float: left;
}
.grid .col2.last {
	float: right;
}

.grid .col3 {
	width: 32%;
	float: left;
	margin-right: 11px;
}
.grid .col3.first {
	margin-left: 0;
	float: left;
}
.grid .col3.last {
	margin-right: 0;
	float: right;
}

/* profile page */
.container {
    padding: 60px 50px 70px;
}

.innerwrap {
    width: 1200px;
    margin: 0 auto;
}

.section1 {
	background: #fff;
	position: relative;
	border-radius: 2px;
}
.section1 div .row:first-child {
	padding: 25px;
}


.section1 .col2.first img {
	border-radius: 50%;
	margin: 0 20px;
	width: 120px;
	border:2px solid #f1f1f1;
	padding: 2px;
	float: left;
}
.section1 .col2.first {
	line-height: 25px;
	position: relative;
	border-right:1px solid #a2a2a2;
}
.section1 .col2.first h1 {
    font-weight: normal;
    margin-bottom: 10px;
	margin-top: 15px;
	text-transform: capitalize;
}
.section1 .col2.first p {
	font-size: 14px;
}
.section1 .col2.first span {
	position: absolute;
    right: 15px;
    top: 16px;
    background: #6AAFEA;
    padding: 5px 11px;
    font-size: 12px;
    line-height: 1;
    border-radius: 2px;
    color: #fff;
  cursor:pointer;
}

.section1 .col2.last {
	padding: 8px 0;
}
.section1 .col2.last .col3 span {
    color: #a2a2a2;
    font-size: 14px;
}
.section1 .col2.last .col3 h1 {
    color: #FB4C22;
}

.section1 .col2.last .col3 {
    text-align: center;
    line-height: 30px;
    border-right: 1px solid #ccc;
}
.section1 .col2.last .col3.last {
	border-right: 0;
}

.row2tab li {
    list-style: none;
    float: left;
    width: 25%;
    padding: 15px;
    font-size: 14px;
    text-align: center;
    cursor:pointer;
    background: #f1f1f1;
    color: #555;
    border-bottom: 2px solid #f1f1f1;
}
.row2tab li:first-child {
    border-bottom: 2px solid #6AAFEA;
    border-radius: 0 0 2px 2px;
}
.row2tab li:first-child {
	color:  #6AAFEA;
}
.row2tab li i {
        margin-right: 3px;
    font-size: 14px;
}

.smalltri {
	    border-right: 40px solid #6AAFEA;
    height: 0;
    width: 0;
    border-left: 20px solid transparent;
    border-top: 10px solid #6AAFEA;
    border-bottom: 20px solid transparent;
    padding: 0px;
    top: 0;
    right: 0;
    position: absolute;
}
.smalltri i {
    position: absolute;
    top: -5px;
    right: -33px;
    color: #fff;
    border: 0px;
    font-size: 12px;
}

section.section2 {
    margin: 50px 0;
}

.section2 .col3 {
	width: 30%;
	margin-right: 60px;
	background: #fff;
	border-radius: 2px;
}

.section2 .postcont img {

	width: 100%;
}
.section2 .profileinfo {
    text-align: center;
    padding: 0 10px 30px;
    color: #555;
    font-size: 14px;
    line-height: 25px;
}
.section2 .profileinfo img {
    border-radius: 50%;
    width: 80px;
    padding: 2px;
    border: 3px solid #6AAFEA;
    margin-top: -48px;
    margin-bottom: 18px;
}
.section2 .col3.center .profileinfo img {
    border: 3px solid #FB4C22;

}
.section2 .profileinfo p {
	text-align: justify;
}
.section2 .profileinfo span {
	margin-top: 15px;
    display: block;
    text-align: left;
    color: #6AAFEA;
    cursor: pointer;
}
.section2 .profileinfo span i {
	margin-left: 10px;
}

@media only screen and (max-width: 1300px) {
	.innerwrap {
		width: 90%;
	}
	.section2 .col3 {
		margin-right: 5%;
	}
	.section1 .grid .col3 {
		margin-right: 2%;
	}
	.section1 .col2.last .col3.last {
		margin-right: 0;
	}
}

@media only screen and (max-width: 1060px) {
	.section1 .col2 {
		width: 100%;
		border-right:0 !important;
		padding: 0;
	}
}

@media only screen and (max-width: 660px) {
	.section2 .col3 {
		width: 100%;
		float: none !important;
		margin-bottom: 10px;
	}
	.row2tab li {
		width: 50%;
		text-align: left;
	}
	.section1 .col2.first {
		text-align: center;
	}
	.section1 .col2.first img {
		display: inline-block;
		float: none;
	}
	.section1 .col2.first span {
		position: relative;
		right: 0;
	}
  .section1 .col2.last {
    margin-top:25px;
  }
}
@media only screen and (max-width: 450px) {
	.container {
    padding: 60px 5px 70px;
}
  .row2tab li {
		width: 100%;
		text-align: left;
	}
	.section1 .col2.last .col3 span {
		font-size: 10px;
	}
	.section1 .col2.last .col3 h1 {
		font-size: 18px;
	}
	
}


</style>

<div class="container">
		
	<div class="innerwrap">
		<section class="section1 clearfix">
		
			<div>
				<div class="row grid clearfix">
				
					<div class="col2 first">
						<img src="${association.BlobToString}" alt="">
						<h1>Cindh</h1>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's</p>
						<span>ajouter un don </span>
					</div>
					<div class="col2 last">
						<div class="grid clearfix">
							<div class="col3 first">
								<h1>${association.getTele_assoc()}</h1>
								<span>telephone</span>
							</div>
							<div class="col3"><h1>${association.getSite_web()}</h1>
							<span >site web</span></div>
							<div class="col3 last"><h1>${association.getEmail_assoc()}</h1>
							<span>email</span></div>
						</div>
					</div>
				</div>
				<div class="row clearfix">
				
					<ul class="row2tab clearfix">
					
						<li ><i  class="fa fa-list-alt"></i> <a href = "/E-Associations/ProfileAssociation.do"  style="text-decoration: none"> Mes Evenements </a> </li>
						<li><i class="fa fa-heart"></i><a href = "/E-Associations/ModifierProfile.do"  style="text-decoration: none"> modifier mon profile</a> </li>
						<li><i class="fa fa-check"></i><a href = "/E-Associations/AjouterEvenement.do"  style="text-decoration: none" > Ajouter un evenement</a> </li>
						<li><i class="fa fa-thumbs-o-up "></i><a href = "/E-Associations/ConsulterDon.do"  style="text-decoration: none" >  Consulter mes dons</a> </li>
				
					</ul>
				</div>
			</div>
			<span class="smalltri">
				
			<i class="fa fa-star"></i>
			</span>
			
		</section>
</body>
</html>