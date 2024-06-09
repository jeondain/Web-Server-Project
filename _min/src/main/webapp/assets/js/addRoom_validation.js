function CheckAddRoom() {
    var roomId = document.getElementById("roomId");
    var description = document.getElementById("description");
    var bedType = document.getElementsByName("bedType");
    var view = document.getElementsByName("view");
    var guestsCount = document.getElementById("guestsCount");
    var roomArea = document.getElementById("roomArea");
    var checkInTime = document.getElementById("checkInTime");
    var checkOutTime = document.getElementById("checkOutTime");
	var roomPrice = document.getElementById("roomPrice");

    // Room ID 체크
    if (!check(/^room[0-9]+$/, roomId, "[객실 ID]\nroom과 숫자를 조합하여 입력하세요\n첫 글자는 반드시 room로 시작하세요")) 
        return false;

    // Description 체크
    if (description.value.length <= 30) {
        alert("[객실 설명]\n최소 30자 이상 입력하세요");
        description.focus();
        return false;
    }

    // Bed Type 체크 (하나 이상 선택되었는지)
    if (!isCheckboxChecked(bedType)) {
        alert("[침대 타입]\n하나 이상 선택하세요");
        return false;
    }

    // View 체크 (하나 이상 선택되었는지)
    if (!isCheckboxChecked(view)) {
        alert("[전망]\n하나 이상 선택하세요");
        return false;
    }

    // Guests Count 체크
    if (isNaN(guestsCount.value) || guestsCount.value <= 0) {
        alert("[투숙 인원]\n인원수를 입력하세요.");
        guestsCount.focus();
        return false;
    }

    // Room Area 체크
    if (!roomArea.value.endsWith("㎡")) {
        alert("[객실 면적]\n㎡로 끝나야 합니다");
        roomArea.focus();
        return false;
    }

    // Check-in Time 체크
    if (!check(/^\d{1,2}:\d{2}$/, checkInTime, "[체크인 시간]\n올바른 형식으로 입력하세요 (예: 14:00)")) 
        return false;

    // Check-out Time 체크
    if (!check(/^\d{1,2}:\d{2}$/, checkOutTime, "[체크아웃 시간]\n올바른 형식으로 입력하세요 (예: 11:00)")) 
        return false;
        
    // 가격 체크
    if (isNaN(roomPrice.value) || roomPrice.value <= 0) {
        alert("[객실 가격]\n객실 가격을 입력하세요");
        roomPrice.focus();
        return false;
    }

    return true;
}

function check(regExp, e, msg) {
    if (regExp.test(e.value)) {
        return true;
    }
    alert(msg);
    e.focus();
    return false;
}

function isCheckboxChecked(checkboxes) {
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            return true;
        }
    }
    return false;
}
