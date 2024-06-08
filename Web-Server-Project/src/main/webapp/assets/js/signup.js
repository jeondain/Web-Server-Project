function checkMember() {
    let regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    let regExpName = /^[가-힣]*$/;
    let regExpPasswd = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
    let regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
    let regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    let form = document.Member;

    let id = form.id.value;
    let name = form.name.value;
    let passwd = form.passwd.value;
    let phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
    let email = form.email.value;

    if (!regExpId.test(id)) {
        alert("아이디는 문자로 시작해 주세요!");
        form.id.select();
        return;
    }
    if (!regExpName.test(name)) {
        alert("이름은 한글로만 입력해주세요!");
        return;
    }
    if (!regExpPasswd.test(passwd)) {
        alert("비밀번호는 영문자, 숫자, 특수문자를 조합하여 8~20자로 입력해주세요!");
        form.passwd.select();
        return;
    }
    if (!regExpPhone.test(phone)) {
        alert("연락처 입력을 확인해 주세요!");
        return;
    }
    if (!regExpEmail.test(email)) {
        alert("이메일 입력을 확인해 주세요!");
        return;
    }

    form.submit();
}
