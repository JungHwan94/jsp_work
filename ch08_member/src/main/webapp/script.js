function idCheck(id) {
	if(id == "") {
		alert("ID");
		frm.id.focus();
		return;
	}
	url = "idCheck.jsp?id="+id;
	window.open(url, "IDCheck", "width=300, heigth=150");
}

function inputCheck() {
	if(frm.idBtnCheck.value != "idCheck") {
		alert("ID check");
		return;
	}
	if(frm.pwd.value == "") {
		alert("password");
		frm.pwd.focus();
		return;
	}
	if(frm.pwd.value != frm.repwd.value) {
		alert("wrong password");
		frm.repwd.focus();
		return;
	}
	if(frm.name.value == "") {
		alert("name");
		frm.name.focus();
		return;
	}
	if(frm.birthday.value == "") {
		alert("birthday");
		frm.birthday.focus();
		return;
	}
	if(frm.email.value == "") {
		alert("email");
		frm.email.focus();
		return;
	}
	if(frm.address.value == "") {
		alert("address");
		frm.address.focus();
		return;
	}
	
	
	
	
	
	frm.submit();
}