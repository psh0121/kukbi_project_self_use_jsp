(() => {

    const btnFinish = document.querySelector('#btn-finish');
    const btnCancel = document.querySelector('#btn-cancel');

    const objsArr = [
        {
            elem: document.querySelector('#ct-title'),
            size: 50,
            blankMsg: "제목이 입력되지 않았습니다.",
            validMsg: "제목을 50자 이내로 작성해 주십시오."
        },
        {
            elem: document.querySelector('#ct-writer'),
            size: 10,
            blankMsg: "작성자명이 입력되지 않았습니다.",
            validMsg: "작성자명을 10자 이내로 작성해 주십시오."
        },
        {
            elem: document.querySelector('#ct-pwd'),
            size: 10,
            blankMsg: "비밀번호가 입력되지 않았습니다.",
            validMsg: "비밀번호를 10자 이내로 작성해 주십시오."
        },
        {
            elem: document.querySelector('#ct-select'),
            validMsg: "분류항목을 선택해 주십시오."
        },
        {
            elem: document.querySelector('#ct-content'),
            size: 1000,
            blankMsg: "내용이 입력되지 않았습니다.",
            validMsg: "내용을 1000자 이내로 작성해 주십시오."
        },
    ];

	///////////////////////////////////////////////////////
	// 일반함수
	
	// appearNavLine: 스크롤 발생시 nav 하단에 회색줄이 보이도록 설정
    // - parameter: x
    // - return: x
    const appearNavLine = function() {
        if(window.scrollY === 0) {
            document.querySelector('nav').style.borderBottom = null;
        }
        else {
            document.querySelector('nav').style.borderBottom = '1px solid lightgray';
        }
    }

    // checkBlank: 작성버튼전 빈칸이 있는지에 대해 확인
    // - parameter: x
    // - return: 빈칸이 없는것을 확인했는지(true) / 빈칸이 있을경우 해당위치(숫자)
    const checkBlank = function() {
        let result = true;

        for(let i = 0; i < objsArr.length; i++) {
            if(objsArr[i].blankMsg === null) continue;

            if(objsArr[i].elem.value.length === 0) return i;
        }

        return result;
    }

    // checkValid: 작성버튼전 유효성검사
    // - parameter: x
    // - return: 유효성 검사에 문제가 없었는지(true) / 문제 발생시 해당위치(숫자)
    const checkValid = function() {
        let result = true;

        for(let i = 0; i < objsArr.length; i++) {
            if(objsArr[i].size === null) break;

            if(objsArr[i].elem.value.length > objsArr[i].size) return i;
        }

        if(objsArr[3].elem.value === 'basic') return 3;

        return result;
    }
    
	/////////////////////////////////////////////////////////
	// 이벤트 핸들러
	
	// 로딩된 후에 발생되는 이벤트
    window.addEventListener("load", () => {
        document.querySelector('.global-nav').id = 'contact_text-nav';
    })

    // 스크롤을 진행했을시에 발생되는 이벤트
    window.addEventListener("scroll", () => {
        appearNavLine();
    })

    // 작성버튼 클릭 이벤트(유효성검사)
    btnFinish.addEventListener("click", () => {
        let result = checkBlank();

        if(result !== true) {
            alert(objsArr[result].blankMsg);
            objsArr[result].elem.focus();
            return;
        }

        result = checkValid();

        if(result !== true) {
            alert(objsArr[result].validMsg);
            objsArr[result].elem.focus();
            return;
        }

        alert("성공");
    })

    // 취소버튼 클릭 이벤트
    btnCancel.addEventListener("click", () => {
        history.back();
    })
})();