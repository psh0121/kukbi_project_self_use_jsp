(() => {
	/////////////////////////////////////////////////////////
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
	
	/////////////////////////////////////////////////////////
	// 이벤트 핸들러
	
	// 로딩된 후에 발생되는 이벤트
    window.addEventListener("load", () => {
        document.querySelector('.global-nav').id = 'contact-nav';
        
        setLayout();
        activeAnswer(0);
    })
	
	// 스크롤을 진행했을시에 발생되는 이벤트
	window.addEventListener("scroll", () => {
        appearNavLine();
    })
    
    // 글쓰기 버튼 이벤트
    document.querySelector('#btn-write').addEventListener("click", () => {
        window.location.href = './contact_text.jsp';
    })
})();