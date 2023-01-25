function addCheck(){
	if(frm.sid.value.length==0){
		alert("sid X");
		frm.sid.focus();
		return false;
	}
	else if(frm.subcode.value.length==0){
		alert("subcode X");
		frm.subcode.focus();
		return false;
	}
	else if(frm.midscore.value.length==0){
		alert("midscore X");
		frm.midscore.focus();
		return false;
	}
	else if(frm.finalscore.value.length==0){
		alert("finalscore X");
		frm.finalscore.focus();
		return false;
	}
	else if(frm.attend.value.length==0){
		alert("attend X");
		frm.attend.focus();
		return false;
	}
	else if(frm.report.value.length==0){
		alert("report X");
		frm.report.focus();
		return false;
	}
	else if(frm.etc.value.length==0){
		alert("etc X");
		frm.etc.focus();
		return false;
	}
	else
	alert("등록이 완료되었습니다.");
	document.frm.submit();
	return true;
}
function res(){
	alert("다시 입력합니다.");
	document.frm.reset();
}
function search(){
	alert("조회가 완료되었습니다.");
	document.frm2.submit();
}
