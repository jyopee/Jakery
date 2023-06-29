/**
 * review.js
 */

const reviewList = {
	prReviewId: "prReviewId",
	memberId: "memberId",
	memberName: "memberName",
	prReviewStar : "prReviewStar",
	prReviewTitle: "prReviewTitle",
	prReviewDate: "prReviewDate",
	prReviewHit: "prReviewHit"
}

const reviewsubject = {
	prReviewSubject: "subject"
}

document.addEventListener('DOMContentLoaded', function() {
	let id = document.getElementById('rePrId').value; //101
	let tbl = document.getElementById('reviewTable');
	let tbd = document.createElement('tbody')

	fetch('reviewListAjax.do?prId=' + id)
		.then((result) => result.json()) //stream => js의 object
		.then((aryData) => {


			tbd.setAttribute('id', 'reviewTbody')
			//		console.log(data)

			for (const data of aryData) {
				let tr = makeTr(data);
				console.log(data)
				tbd.append(tr)
			}
			tbl.append(tbd)
		})
		.catch(err => console.log(err));

	//tr만들기(td부분)
	function makeTr(data) {
		//		console.log(data)
		tr = document.createElement('tr');
		for (const list in reviewList) {
			let td = document.createElement('td');
			if (list == "prReviewId") {
				td.innerText = data[list]
				td.setAttribute('style', 'display:none;')
			} else if (list == "memberId") {
				td.innerText = data[list]
				td.setAttribute('style', 'display:none;')
			}else if(list == "prReviewStar"){
				let star = data[list]
				if(star == "1"){
					td.innerText = "★"
				}else if(star == "2"){
					td.innerText = "★★"
				}else if(star == "3"){
					td.innerText = "★★★"
				}else if(star == "4"){
					td.innerText = "★★★★"
				}else if(star == "5"){
					td.innerText = "★★★★★"
				}else{
					td.innerText = data[list];
				}
			}else if (list == "prReviewTitle") {
				td.innerHTML = "[리뷰]" + data[list]
				td.setAttribute('style', 'color:#404040');
				td.setAttribute('id', 'review')
			} else {
				td.innerText = data[list];
				td.setAttribute('style', 'color:#404040');
			}
			tr.append(td)
		}
		tr.addEventListener('click', goReviewSelect)
		return tr;
	}

	//tr의 클릭 이벤트
	function goReviewSelect() {
		let id = this.firstChild.innerText;
		document.getElementById('prReviewId').value = id    
		console.log(document.getElementById('prReviewId').value)  

		
	     reviewFrm.submit();

		

	}
	
	//검색
	let btn = document.getElementById('reviewBtn')
	btn.addEventListener('click', reSearchInfo)

	function reSearchInfo() {
		console.log("검색")
		let prId = document.getElementById('rePrId').value;
		let select = document.getElementById('reSelectOpt').value;
		let val = document.getElementById('reviewInfo').value;

		console.log(select + "/" + val)

		fetch('reviewSearch.do?prId='+prId+'&reSelectOpt=' + select + '&reviewInfo=' + val)
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
				tbd.setAttribute('id', 'reviewTbody')

				for (const data of aryData) {
					let tr = makeTr(data);
					//		console.log(data)
					tbd.append(tr)
				}
				document.getElementById('reviewTbody').replaceWith(tbd)

			})
			.catch(err => console.log(err))


	}
	

})