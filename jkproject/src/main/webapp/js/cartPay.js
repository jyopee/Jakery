/**
 * 
 */

const showId ={
    prCartId : "prCartId"	
}


//tbody만들기 1
function makeTbd(dataList) {
	for (const data of dataList) {
		makeTr(data);
	}
}


//tbody에 tr만들기 
function makeTr(data) {

	let tbd = document.getElementById('tbl').children[1]
	let tr = document.createElement('tr');
	let th = document.getElementById('thd')
	th.setAttribute('style', 'text-align:center;');
	
	let td1 = document.createElement('td');
	let td2 = document.createElement('td');
	let td3 = document.createElement('td');
	let td4 = document.createElement('td');
	let td5 = document.createElement('td');





	td1.innerHTML = '<img src="' + data.prImgName + '" alt="" style=" width: 100px;" >'
	td2.innerHTML = data.prName;
	td3.innerHTML = data.prPrice;
	td4.innerHTML = data.prAmount;
	td5.innerHTML = data.total;

	tr.append(td1);
	tr.append(td2);
	tr.append(td3);
	tr.append(td4);
	tr.append(td5);


	let td = document.createElement('td');
	td.setAttribute('style', 'text-align:center;');

	
	tr.append(td);
	tbd.append(tr);


}

window.onload = function() {
	fetch('AjaxCartList.do')
		.then((result) => result.json())
		.then((data) => {
			if(data==null) return;
			makeTbd(data)
		})

}







