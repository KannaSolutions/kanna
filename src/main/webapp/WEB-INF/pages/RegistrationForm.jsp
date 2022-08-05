<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
h1 {
	font-size: 25px;
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
	}
	.btn1 {
		padding-top: 20px;
	}
	.body {
		padding-top: 20px;
	}
	th {
		font-size: 15px;
		margin-left: 60px;
	}
	.subtt {
		padding-top: 20px;
	}
	table {
		justify-content: center;
		display: flex;
	}
}
</style>
<script>
	$(document)
			.ready(
					function() {
						$(".subtt").click(function() {
							if ($("#fname").val().trim() == "") {
								alert("First Name Can not be Empty");
								$("#fname").val("");
								$("#fname").focus();
								return false;
							}
							if ($("#sname").val().trim() == "") {
								alert("SurName Can not be Empty");
								$("#sname").val("");
								$("#sname").focus();
								return false;
							}
							if ($("#mobileno").val().trim() == "") {
								alert("Mobileno Can not be Empty");
								$("#mobileno").val("");
								$("#mobileno").focus();
								return false;
							}
							if ($("#email").val().trim() == "") {
								alert("Email  Can not be Empty");
								$("#email").val("");
								$("#email").focus();
								return false;
							}
							if ($("#state").val().trim() == "select") {
								alert("Select State");
								$("#state").focus();
								return false;
							} else {
								document.form.method = "POST";
								document.form.action = "RegistrationSave";
								document.form.submit();
							}
						});

						$(".name").change(function(e) {
							if ($("#" + this.id).val().trim().length > 0) {
								var msg = $("#" + this.id).attr('attralert');

								if (!ValidateNamejs(this.id)) {

									if (msg === undefined) {

										alert('Please Enter Valid Input');
										$(".name").focus();
									} else {
										alert('Please Enter Valid ' + msg);

									}
									$(this).val('');
									$(this).focus();
									return;
								}
							}

						});
						function ValidateNamejs(evt) {
							//
							var isValid = false;
							var regex = /^[a-zA-Z]([a-zA-Z]+\s?){1,}$/;
							var ex = /^\S([^._]|[.](?=[^.]|$)|_(?=[^_]|$))*$/;
							var ch = /^(?!.*(\w)\1{2,}).+$/;
							isValid = regex.test($("#" + evt).val().trim());
							isDot = ex.test($("#" + evt).val());
							isch2 = ch.test($("#" + evt).val());
							if (isValid == isDot && isDot == isch2
									&& isValid == isch2) {
								//if (regex.lastIndex)        
								return true;
							} else {
								return false;
							}
						}
						$(".mobileno").change(function(e) {
							debugger;
							//alert('not mand');
							if ($("#" + this.id).val().trim().length > 0) {
								var msg = $("#" + this.id).attr('attralert');
								if (!Validatemobilenojs(this.id)) {
									if (msg === undefined) {
										alert('Please Enter Valid Input');
									} else {
										alert('Please Enter Valid ' + msg);
									}
									$(this).val('');
									$(this).focus();
									return;
								}
							}

						});
						function Validatemobilenojs(evt) {
							var isValid = false;
							//
							var regex = /^[6-9][0-9]{9}$/;
							//var ex = /^\S*$/;

							isValid = regex.test($("#" + evt).val());

							return isValid;
						}

						$("#email").change(function(e) {

							//alert('not mand');
							if ($("#" + this.id).val().trim().length > 0) {
								var msg = $("#" + this.id).attr('attralert');
								if (!Validateemailjs(this.id)) {
									if (msg === undefined) {
										alert('Please Enter Valid Input');
									} else {
										alert('Please Enter Valid ' + msg);
									}
									$(this).val('');
									$(this).focus();
									return;
								}
							}
						});
						function Validateemailjs(evt) {
							var isValid = false;
							var regex = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
							//var regex = /^[a-zA-Z][a-zA-Z0-9_]*(\.[a-zA-Z][a-zA-Z0-9_]*)?@[a-zA-Z]*\.[a-zA-Z]+(\.[a-zA-Z]+)?$/;
							var ex = /^\S*$/;
							isValid = regex.test($("#" + evt).val());

							return isValid;
						}

					});
</script>
</head>

<body>
	<form name="form">
		<div class="alignment">
			<div class="bg">
				<div class="navbar">
					<a href="/">HOME</a>
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
				<div>
					<div class="alignment">${msg}</div>
					<div class="body">

						<table>
							<tr>
								<th>First Name<span style="color: red;" class="mand">*</span></th>
								<td><input id="fname" class="name" name="fname"></td>
							</tr>

							<tr>
								<th>SurName<span style="color: red;" class="mand">*</span></th>
								<td><input id="sname" class="name" name="sname"></td>
							</tr>

							<tr>
								<th>Mobile No<span style="color: red;" class="mand">*</span></th>
								<td><input maxlength="10" id="mobileno" class="mobileno"
									name="mobileno"></td>
							</tr>

							<tr>
								<th>Email<span style="color: red;" class="mand">*</span></th>
								<td><input id="email" class="email" name="email"></td>
							</tr>
							<tr>
								<th>Expected Loan Amount<span style="color: red;"
									class="mand">*</span></th>
								<td><input maxlength="8" id="expectedloanamount"
									class="expectedloanamount" name="expectedLoanAmount"></td>
							</tr>

							<tr>
								<th><span class="lblText">Service<span
										style="color: red;" class="mand">*</span></th>
								<td class="formbg2"><select name="loanName" id="state"
									path="state" required="">
										<option value="select">Select</option>
										<option value="Home Loans">Home Loans</option>
										<option value="Construction Loans">Construction Loans</option>
										<option value="NRI Purchase Loans">NRI Purchase Loans</option>
										<option value="Mortgage Loans">Mortgage Loans</option>
										<option value="Takeover Loans">Takeover Loans</option>
										<option value="Rental Against Loans">Rental Against
											Loans</option>
										<option value="Money Transfer">Money Transfer</option>
										<option value="New All Bank Acount Openning">New All
											Bank Acount Openning</option>
										<option value="Micro Finance">Micro Finance</option>
										<option value="Home Finance">Home Finance</option>
										<option value="Insurence">Insurence</option>
										<option value="Aadher Banking">Aadher Banking</option>
										<option value="Pan Cord (New/Coreption)">Pan Cord
											(New/Coreption)</option>
										<option value="Vehicle Loan">Vehicle Loan</option>
										<option value="Bissiness Loans">Bissiness Loans</option>
										<option value="FINANCE">Finance</option>
								</select></td>

							</tr>

						</table>
						<div class="subtt"
						style="height: 30px; border-radius: 10px; justify-content: center; display: flex;">
						<button id="regSubmit"
				style="font-size: 15px; background-color: #0c366b; border-radius: 5px; color:#FFF;">Submit
				</button>
						</div>
					</div>


					<div class="ft">
						<footer>
							<div>
								<p>Kanna Solutions-Contact:9381460890-Gajwel</p>
						</footer>
					</div>


				</div>
			</div>
		</div>
	</form>
</body>

</html>