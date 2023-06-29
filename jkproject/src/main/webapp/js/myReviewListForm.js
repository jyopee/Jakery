/**
 * noticeReviewListForm.js
 */
//tr클릭이벤트
document.addEventListener('DOMContentLoaded', function() {
	let trs = document.querySelectorAll('#reviewTbody tr')
	trs.forEach(tr =>{
		//console.log(tr)
		tr.addEventListener('click', goReviewSelect)
	})
	
	//tr클릭 이벤트
	function goReviewSelect(){
		console.log(this)
		let id = this.children[0].innerText;
		document.getElementById('prReviewId').value = id
		let role = document.getElementById('memberRole').value;
		console.log(typeof role)
		
		
	    selectFrm.submit();	

		

	}
	
	//뒤로가기 버튼
	document.getElementById('back').addEventListener('click', back)
	
	function back(){
		location.href = "main.do"
	}

	
	
})