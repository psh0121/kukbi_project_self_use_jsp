(() => {

    const btnToList = document.querySelector('#btn-toList');
    const btnAnswer = document.querySelector('#btn-answer');
    const btnModify = document.querySelector('#btn-modify');

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

    // getNumId: url에있는 numId의 값을 가져와 리턴한다
    // - parameter: x
    // - return: numId 값
    const getNumId = function() {
        const url = new URL(window.location.href);
        const result = url.searchParams.get("numId");
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

    // 답변하기버튼 클릭 이벤트
    btnAnswer.addEventListener("click", () => {
        alert("답변하기버튼 클릭");
    })

    // 수정하기버튼 클릭 이벤트
    btnModify.addEventListener("click", () => {
        const numId = getNumId();
        
        window.location.href = './contact_send.jsp?type=modify&numId=' + numId;
    })

    // 목록버튼 클릭 이벤트
    btnToList.addEventListener("click", () => {
        window.location.href = './contact.jsp';
        history.back();
    })
})();