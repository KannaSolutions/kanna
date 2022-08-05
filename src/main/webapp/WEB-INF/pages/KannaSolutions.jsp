<!DOCTYPE html>
<html>

<head>
<style>
h1 {
	font-size: 25PX;
	justify-content: center;
	display: flex;
}

h3 {
	text-align: center;
	color: black;
}

.navbar {
	overflow: hidden;
	background-color: #333;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.main-div {
	display: flex;
	flex-direction: column;
	text-align: center;
}

@media ( min-width : 768px) {
	.main-div {
		display: flex;
		flex-direction: row;
		justify-content: space-around;
	}
	.slides {
		display: flex;
		flex-direction: row;
		justify-content: space-around;
	}
	.applbtn {
		justify-content: center;
		display: flex;
	}
	h2 {
		font-size: 15px;
	}
}

.leftbox {
	margin-bottom: 50px;
}

.active {
	background-color: #f9f9f9;
	color: rgb(133, 14, 14);
}

.bg {
	padding-bottom: 0px;
	margin-top: 50px;
	max-width: 600px;
	height: 100%;
	border: 1px solid #9C9C9C;
	background-color: #EAEAEA;
}

.alignment {
	padding-left: 25%;
}

footer {
	text-align: center;
	padding: 1px;
	background-color: DarkSalmon;
	color: white;
}

.ft {
	padding-top: 40px;
}

.btn {
	background: #0c366b;
	font-weight: bold;
	border-radius: 5px;
	color: #FFF;
	width: 70px;
	height: 30px;
	cursor: pointer;
	display: inline-block;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#getDtlsbtn").click(function() {
			document.kanna.method = "GET";
			document.kanna.action = "Registration";
			document.kanna.submit();
		});
	});
</script>
</head>

<body>
	<form name="kanna">
		<div class="alignment">
			<div class="bg">

				<div class="navbar">
					<a href="#home">HOME</a>
					<div class="dropdown">
						<button class="dropbtn">
							DETAILS <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-content">
							<a href="#">Kanna Solutions</a> <a href="#">Contact :
								9381460890</a> <a href="#">Gajwel</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn">
							LANGUAGE TRANSLATOR<i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-content">
							<script type="text/javascript">
								function googleTranslateElementInit() {
									new google.translate.TranslateElement({
										pageLanguage : 'en'
									}, 'google_translate_element');
								}
							</script>
							<script type="text/javascript"
								src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit">
								
							</script>
							<p id="google_translate_element"></p>
						</div>
					</div>
				</div>
				<h1>
					<img height="30px" width="30px"
						src="https://w7.pngwing.com/pngs/454/848/png-transparent-logo-finance-illustration-green-rose-text-simple-photography-thumbnail.png">


					<font color="#FF2626">K</font> <font color="#252A34">A</font> <font
						color="#753422">N</font> <font color="#FFD523">N</font> <font
						color="#71EFA3">A</font> <font color="#0F52BA">S</font> <font
						color="#66CC66">O</font> <font color="#FF9966">L</font> <font
						color="#FFCCCC">U</font> <font color="#71EFA3">T</font> <font
						color="#753422">I</font> <font color="#252A34">O</font> <font
						color="#FFCCCC">N</font> <font color="#FF2626">S</font>

				</h1>



				<div class="slides" style="padding: 0 5%;">
					<img class="mySlides"
						src="https://5.imimg.com/data5/SELLER/Default/2021/2/DZ/TT/DN/122821964/business-loan-services-500x500.jpg"
						style="width: 100%;" height="200px"> <img class="mySlides"
						src="https://img2.exportersindia.com/product_images/bc-full/2019/9/6649535/home-loan-consultants-1569179458-5090866.jpg"
						style="width: 100%;" height="200px"> <img class="mySlides"
						src="https://www.idfcfirstbank.com/content/dam/idfcfirstbank/images/blog/benefits-personal-loan.jpg"
						style="width: 100%;" height="200px"> <img class="mySlides"
						src="https://pay1v2site.s3.ap-south-1.amazonaws.com/aeps.png"
						style="width: 100%;" height="200px"> <img class="mySlides"
						src="https://www.jagranimages.com/images/27_09_2018-aadhar_18473112.jpg"
						style="width: 100%;" height="200px"> <img class="mySlides"
						src="https://adcbank.coop/images/pages/services/pan_card.jpg"
						style="width: 100%;" height="200px"> <img class="mySlides"
						src="https://biharcarrierportal.in/wp-content/uploads/2021/02/Screenshot-38-min.jpg"
						style="width: 100%;" height="200px">
				</div>

				<script>
					var myIndex = 0;
					carousel();

					function carousel() {
						var i;
						var x = document.getElementsByClassName("mySlides");
						for (i = 0; i < x.length; i++) {
							x[i].style.display = "none";
						}
						myIndex++;
						if (myIndex > x.length) {
							myIndex = 1
						}
						x[myIndex - 1].style.display = "block";
						setTimeout(carousel, 3000); // Change image every 2 seconds
					}
				</script>
				<div class="main-div">
					<div class="leftbox">
						<h2>HOME LOANS</h2>
						<h2>CONSTRUCTION LOANS</h2>
						<h2>NRI PURCHASE LOANS</h2>
						<h2>GOLD LOAN</h2>
						<h2>MONEY TRANSFER</h2>
						<h2>NEW ALL BANK ACOUNT OPENNING</h2>
						<h2>MICRO FINANCE</h2>
						<h2>HOME FINANCE</h2>
						<h2>FINANCE</h2>



					</div>

					<div class="rightbox">
						<h2>MORTGAGE LOANS</h2>
						<h2>TAKEOVER LOANS</h2>
						<h2>RENTAL AGAINST LOANS</h2>
						<h2>INSURENCE</h2>
						<h2>AADHER BANKING</h2>
						<h2>PAN CORD (NEW/COREPTION)</h2>
						<h2>VEHICLE LOAN</h2>
						<h2>BISSINESS LOANS</h2>

					</div>
				</div>
				<div class="applbtn">
					<input type="button" class="btn" value='Apply' tabindex=""
						id="getDtlsbtn" style="border-radius: 10px;">
				</div>

				<div class="ft">
					<footer>
						<div>
							<p>Kanna Solutions-Contact:9381460890-Gajwel</p>
					</footer>
				</div>


			</div>
		</div>
	</form>




</body>

</html>