/**
 *  noticeQnaListForm.js
 */

//tr클릭이벤트
document.addEventListener('DOMContentLoaded', function() {
	let trs = document.querySelectorAll('#qnaTbody tr')
	trs.forEach(tr =>{
		//console.log(tr)
		tr.addEventListener('click', goQnaSelect)
	})
	
	//tr클릭 이벤트
	function goQnaSelect(){
		console.log(this)
		let id = this.children[0].innerText;
		document.getElementById('prQnaId').value = id
		let secret = this.children[8].innerText;
		let memId = document.getElementById('memberId').value;
		let role = document.getElementById('memberRole').value;
		let qnaMemId = this.children[1].innerText;
		console.log(typeof role)
		
		if(secret == 1 ){
			if(role == '1'){
			  selectFrm.submit();		
			}else if(memId != qnaMemId){
			  alert("비밀글입니다.")
			}else {
			  selectFrm.submit();	
				
			}
		}else if (secret == 0){	
			  selectFrm.submit();	
		}
		
		

	}
	
	//뒤로가기 버튼
	document.getElementById('back').addEventListener('click', back)
	
	function back(){
		location.href = "main.do"
	}


	
	
})