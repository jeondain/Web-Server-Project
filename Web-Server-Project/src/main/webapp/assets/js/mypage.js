function showPopup(row) {
    var details = '체크인: ' + row.cells[0].innerText + '<br>' +
                  '체크아웃: ' + row.cells[1].innerText + '<br>' +
                  '호실: ' + row.cells[2].innerText + '<br>' +
                  '상태: ' + row.cells[3].innerText;
    document.getElementById('popup-details').innerHTML = details;
    document.getElementById('popup').style.display = 'block';
}

function closePopup() {
    document.getElementById('popup').style.display = 'none';
}

function showInquiryPopup(row, title, status, content, answer) {
    var details = '문의 날짜: ' + row.cells[0].innerText + '<br>' +
                  '제목: ' + title;
    var contentBox = '문의 내용: <br>' +
                     '<div class="inquiry-box">' + content + '</div>' +
                     '답변: <br>' +
                     '<div class="inquiry-box">' + answer + '</div>';
    document.getElementById('inquiry-popup-details').innerHTML = details;
    document.getElementById('inquiry-content').innerHTML = contentBox;
    document.getElementById('inquiry-popup').style.display = 'block';
}

function closeInquiryPopup() {
    document.getElementById('inquiry-popup').style.display = 'none';
}
