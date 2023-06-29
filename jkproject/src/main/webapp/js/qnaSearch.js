/**
 * qnaSearch
 */

document.addEventListener('DOMContentLoaded', function() {
	
	let btn = document.getElementById('searchBtn')
	btn.addEventListener('click', searchInfo)

	function searchInfo() {
		console.log("검색")
		let prId = document.getElementById('prId').value;
		let select = document.getElementById('selectOpt').value;
		let val = document.getElementById('searchInfo').value;

		console.log(select + "/" + val)

		fetch('qnaSearch.do?prId='+prId+'&selectOpt=' + select + '&searchInfo=' + val)
			.then(result => result.json())
			.then(aryData => {
				

				console.log(aryData)
				for (let data in aryData) {
					console.log(aryData[data])
					if (data == 'result') {

						alert(aryData[data])
					}
				}
    
				//테이블 만들기
				let tbd = document.createElement('tbody')
				tbd.setAttribute('id', 'qnaTbody')

				for (const data of aryData) {
					let tr = makeTr(data);
					//		console.log(data)
					tbd.append(tr)
				}
				document.getElementById('qnaTbody').replaceWith(tbd)

			})
			.catch(err => console.log(err))


	}
	
		//tr만들기(td부분)
	function makeTr(data) {
//		console.log(data)
		tr = document.createElement('tr');
		for (const list in showList) {
			let td = document.createElement('td');
			if (list == "prQnaId") {
				td.innerText = data[list]
				td.setAttribute('style', 'display:none;')
			}else if(list == "memberId"){
				td.innerText = data[list]
				td.setAttribute('style', 'display:none;')
			} else if (list == "prQnaTitle") {
				td.innerHTML = "[문의] " + data[list]
				td.setAttribute('style', 'color:#404040');
			} else if (list == "prQnaSecret"){
				td.innerText = data[list]
				td.setAttribute('style', 'display:none;')
			} else {

				td.innerText = data[list];
				td.setAttribute('style', 'color:#404040');
			}
			tr.append(td)
		}

	    tr.addEventListener('click',goQnaSelect)
		return tr;
	}
	
	function goQnaSelect(){
		
		let id = this.firstChild.innerText;
		document.getElementById('prQnaId').value = id
		let secret = this.lastChild.innerText;
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

	

})