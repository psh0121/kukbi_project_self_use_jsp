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

    // showInfo: 입력받은 분류항목만 화면에 표시될 수 있도록 함
    // - parameter: 분류항목 (공지/문의/신고)
    // - return: x
    const showInfo = function(category) {
        let categoryObj = {
            'notice': document.querySelectorAll('.notice-content'),
            'inquiry': document.querySelectorAll('.inquiry-content'),
            'report': document.querySelectorAll('.report-content')
        };

        for(let [key, docs] of Object.entries(categoryObj)) {
            if(key === category) {
            	for(let doc = 0; doc < docs.length; doc++) {
                    docs[doc].style.display = '';
                }
            }

            else {
                for(let doc = 0; doc < docs.length; doc++) {
                    docs[doc].style.display = 'none';
                }
            }
        }
    }
	
	/////////////////////////////////////////////////////////
	// 이벤트 핸들러

    const trTag = document.querySelectorAll('table tbody tr');
	
	// 로딩된 후에 발생되는 이벤트
    window.addEventListener("load", () => {
        document.querySelector('.global-nav').id = 'contact-nav';
    })
	
	// 스크롤을 진행했을시에 발생되는 이벤트
	window.addEventListener("scroll", () => {
        appearNavLine();
    })

    // 공지, 문의, 신고버튼 이벤트
    document.querySelector(".notice-btn").addEventListener("click", () => {
        showInfo('notice');
    })

    document.querySelector(".inquiry-btn").addEventListener("click", () => {
        showInfo('inquiry');
    })

    document.querySelector(".report-btn").addEventListener("click", () => {
        showInfo('report');
    })

    // table안에 있는 내용의 제목 클릭시
    for(let i = 1; i < trTag.length; i++) {
        trTag[i].querySelectorAll('td')[2].addEventListener("click", () => {
            window.location.href = './contact_inquiry.jsp?numId=' + 
                                    trTag[i].querySelectorAll('td')[0].textContent;
        })
    }

    // 글쓰기 버튼 이벤트
    document.querySelector('#btn-write').addEventListener("click", () => {
        window.location.href = './contact_text.jsp';
    })
})();