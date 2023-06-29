/**
 * qnaSelectFrom.js태경 => 관리자 답글 처리
 */
const showField = {
	memberName: "memberName",
	prQnaComDate: "prQnaComDate",
	prQnaComId: "prQnaComId"
}

const showSubject = {
	prQnaComSubject: "subject"

}

document.addEventListener('DOMContentLoaded', function() {
	let prQnaId = document.getElementById('prQnaId').value;
	let div = document.getElementById('comTable')
	let memberRole = document.getElementById('memberRole').value
	console.log(memberRole)

	//댓글 리스트 불러오기
	fetch('selectComment.do?prQnaId=' + prQnaId)
		.then(result => result.json())
		.then(aryData => {
			console.log(aryData)
			//내용 테이블 만들기
			for (let data of aryData) {
				let table = document.createElement('table')
				table.class = "table"

				//작성자, 작성날짜
				let tr = document.createElement('tr')
				for (let field in showField) {
					let td = document.createElement('td')
					if (field == "memberName") {
						td.innerText = "관리자"
					} else if (field == "prQnaComId") {
						td.innerText = data[field]
						td.setAttribute('style', 'display:none;')
					}
					else {
						td.innerText = data[field]
					}
					tr.append(td)
				}
				table.append(tr)

				//내용
				tr = document.createElement('tr');
				for (let subject in showSubject) {
					let td = document.createElement('td');
					td.innerText = data[subject]
					td.setAttribute('style', 'height:150px')
					td.setAttribute('id', 'oldSubject')
					tr.append(td)
				}
				table.append(tr)

				//버튼
				tr = document.createElement('tr');
				let modBtn = document.createElement('button');
				let delBtn = document.createElement('button');
				modBtn.addEventListener('click', modComment);
				modBtn.innerText = "수정"
				modBtn.className = "btn-xs"
				delBtn.addEventListener('click', delComment);
				delBtn.innerText = "삭제"
				delBtn.className = "btn-xs"
				tr.append(modBtn);
				tr.append(delBtn)
				table.append(tr)
				table.className = "table"
				table.setAttribute("style", "background-color: #E5E5E5")


				div.append(table)

				let btns = document.querySelectorAll('#comTable button')
				for (let btn of btns) {
					console.log(btn)
					if (memberRole == 0) {
						btn.style.display = "none"
					} else if (memberRole == 1) {
						btn.style.display = "block"
					}
				}

			}
		})
		.catch(err => console.log(err))


	//수정버튼 이벤트 함수
	function modComment() {
		this.setAttribute('style', 'display:none;')
//		let upbtn = document.createElement('button')
//		upbtn.innerText ="등록"
		let table = this.parentElement.parentElement
		let tr = this.parentElement
		let subjectForm = table.children[1].firstChild
		let updateInp = document.createElement('input')
//		updateInp.className="form-control"
		updateInp.setAttribute('style', 'width: 1000px; height:200px; margin-left: 50px; border:none;')
		updateInp.value = subjectForm.innerText
		tr.append(updateInp)
		
		let upUpBtn = document.createElement('button')
		upUpBtn.innerText ="등록"
		tr.append(upUpBtn)
		upUpBtn.addEventListener('click', upInfo)
		
		
		
		
	}
	
	function upInfo(){
		console.log('클릭')
		
//		////prQNaComId, prQnaComSubject
		let comId = this.parentElement.parentElement.children[0].lastChild.innerText
		let comSubject = this.parentElement.children[2].value
		let originSubject = this.parentElement.parentElement.children[1].firstChild
		let btn = this.parentElement.parentElement.lastChild.firstChild
		
		fetch('commentUpdate.do?prQnaComId='+comId +'&prQnaComSubject='+comSubject)
			.then(result => result.json())
			.then(result => {
				console.log(result)
				this.parentElement.children[2].remove();
				this.remove();
				btn.style.display = "block"
				
				
				for(let data in result){
					if(data == "prQnaComSubject"){
						console.log(result[data])
						originSubject.innerHTML = result[data]
					}
				}
				
			})
			.catch(err => console.log(err))
		
		
	}
	
	
	//삭제버튼 이벤트 함수
	function delComment() {
		let table = this.parentElement.parentElement
		let prQnaComId = table.firstChild.lastChild.innerText

		fetch("deleteComment.do?prQnaComId=" + prQnaComId)
			.then(result => result.json())
			.then(result => {
				console.log(result)
				for (let message in result) {
					console.log(result[message])
					if (result[message] == "Success") {
						this.parentElement.parentElement.remove();
					} else if (result[message] == "Fail") {
						alert("댓글삭제 실패")
					}
				}
			})
			.catch(err => console.log(err))
	}



	//답글 버튼 이벤트 
	document.getElementById('prQnaComment').addEventListener('click', displayComFrm)

	function displayComFrm() {
		//맴버아이디, 큐앤에이 아이디, 작성내용 넣어줒ㄱ
		console.log("답글")
		document.getElementById('comFrm').style.display = "block"
	}

	//답글 등록 취소 이벤트
	document.getElementById('comCancel').addEventListener('click', cancel)

	function cancel() {
		document.getElementById('comFrm').style.display = "none"

	}

	//답글 등록 이벤트
	document.getElementById('insert').addEventListener('click', comInsert)

	function comInsert() {
		let memberId = document.getElementById('comMemberId').value;
		let prQnaId = document.getElementById('comPrQnaId').value;
		let prQnaComSubject = document.getElementById('prQnaComSubject').value;

		fetch('commentInert.do', {
			method: 'post',
			headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
			body: 'memberId=' + memberId + '&prQnaId=' + prQnaId + '&prQnaComSubject=' + prQnaComSubject
		})
			.then(result => result.json())
			.then(result => {
				console.log(result)
				location.reload();

			})
			.catch(err => console.log(err))
	}



})

