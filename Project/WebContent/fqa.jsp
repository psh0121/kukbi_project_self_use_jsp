<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let's travel : 자주하는질문</title>

<!-- 스타일 -->
<link rel="stylesheet" href="./stylecss/reset.css">
<link rel="stylesheet" href="./stylecss/fqa.css">
</head>
<body>
	<!-- header -->
	<%@ include file="./fixJSP/header.jsp" %>
	
	<!-- section -->
    <section>
        <p class="section-title">자주 묻는 질문</p>

        <!-- contents -->
        <div class="section-contents">
            <div class="qa active">
                <div class="question">
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. </p>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                        Tempora ipsum repudiandae tempore ut nulla nostrum et id quae nihil ullam? Saepe, aspernatur fugit! 
                        Voluptatem repellendus repellat deserunt officiis dolore fugiat?
                    </p>
                </div>
            </div>

            <div class="qa">
                <div class="question">
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. </p>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                        Tempora ipsum repudiandae tempore ut nulla nostrum et id quae nihil ullam? Saepe, aspernatur fugit! 
                        Voluptatem repellendus repellat deserunt officiis dolore fugiat?
                    </p>
                </div>
            </div>

            <div class="qa">
                <div class="question">
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. </p>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                        Tempora ipsum repudiandae tempore ut nulla nostrum et id quae nihil ullam? Saepe, aspernatur fugit! 
                        Voluptatem repellendus repellat deserunt officiis dolore fugiat?
                    </p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- article -->
    <article>
        <!-- contents -->
        <div class="article-contents">
            <div>
                <div class="article-header">
                    <p>
                        문제가 아직 해결되지 않았다면<br>
                        언제든 문의해주세요.
                    </p>
                    <p>24시간 고객센터</p>
                </div>
                <div class="article-footer">
                    <p>피해•사기 상담</p>
                    <p>112</p>
                </div>
            </div>

            <img src="./image/fqa/article.png">
        </div>
    </article>
	
	<!-- footer -->
	<%@ include file="./fixJSP/footer.jsp" %>
	
	<!-- 외부파일 JS -->
	<script src="./fqa.js"></script>
</body>
</html>