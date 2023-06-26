-- 테이블 생성 -------------------------------------------------------------------------

-- 자주묻는질문DB
create table fqa_db(
	num_id number(2) not null primary key,
	question varchar2(100) not null,
	answer varchar2(1500) not null
);

-- 고객센터DB
create table contact_db(
	num_id number(5) not null primary key,
	title varchar2(100) not null,
	writer varchar2(20) not null,
	pwd varchar2(20),
	division varchar2(20) not null,
	content varchar2(2000) not null,
	create_date date not null,
	answer_flag varchar(2) not null
);

-- 시퀀스 생성 -------------------------------------------------------------------------

-- 자주묻는질문DB id auto increment
create sequence fqa_db_seq start with 1 increment by 1 maxvalue 99 cycle nocache;

-- 고객센터DB id auto increment
create sequence contact_db_seq start with 1 increment by 1 maxvalue 99999 cycle nocache;

-- 내용 삽입 -------------------------------------------------------------------------

-- 자주묻는질문DB
insert into fqa_db values (fqa_db_seq.nextval, 
	'즉흥 여행에 여행 메이트를 구하고 싶어요.', 
	'갑자기 여행을 떠나고 싶지만 함께할 메이트를 구하고 계시군요!
	저희 앱엔 함께 갈 여행 메이트를 구할 수 있는 [메이트 모집]이라는 기능이 존재합니다.
	만약 갑작스러운 여행 준비로 [메이트 모집]을 이용하시기 어려우시다면 [긴급 메이트 모집]을 이용해 주세요.
	해당 기능은 고객님의 모집을 우선시하여 메이트 모집 기간 동안 상단에 위치할 수 있도록 합니다.
	여행 일정에 따라서 적합한 기능을 이용해 주시면 보다 즐거운 여행이 되실 수 있으실 겁니다.'
);
insert into fqa_db values (fqa_db_seq.nextval, 
	'여행 메이트를 구하지 않고 여행 기록만 하고 싶어요.', 
	'저희 앱은 함께 여행을 가는 여행 메이트 모집을 주로 하는 앱이지만 여행 기록만을 원하시는 고객님들도 계시는 편입니다.
	이때에는 고객님의 [프로필-여행 기록 작성] 순으로 접속한 후 여행 참가자에 본인만 누르시면 정상적으로 작동됩니다.
	만약 다른 고객님들에게 내 여행 기록을 보여주기를 희망하지 않으시다면 [여행 기록 작성] 페이지 내에 비공개 버튼이 있으니 참고해 주세요.'
);
insert into fqa_db values (fqa_db_seq.nextval, 
	'함께 여행했던 메이트를 신고하고 싶어요.', 
	'일단 저희 앱 사용으로 인해 만족스러운 여행이 되지 못한 점 정말 죄송합니다.
	저희 앱 자체에는 무분별한 신고를 방지하기 위해 신고 기능이 존재하지 않습니다.
	단, 고객님이 [메이트 모집/긴급 메이트 모집]을 통해 여행에 참가한 기록과(캡처 본) 있었던 일에 대해 작성해 주시면 신중히 파악해 조치를 취하도록 하겠습니다.
	내용은 웹사이트에 있는 고객센터를 이용해 주시거나 inquiry@travel.im로 보내주시면 됩니다.'
);

-- 고객센터DB
insert into contact_db values (contact_db_seq.nextval,
	'[필독] 고객센터를 이용하시기 전 반드시 확인해주세요.',
	'관리자',
	'rhksflwk',
	'공지',
	'내용입니다.',
	sysdate,
	'F'
);
insert into contact_db values (contact_db_seq.nextval,
	'문의드릴게 있습니다.',
	'홍길동',
	'ghdrlfehd',
	'문의',
	'내용입니다.',
	sysdate,
	'F'
);
insert into contact_db values (contact_db_seq.nextval,
	'신고합니다.',
	'찰스',
	'ckftm',
	'신고',
	'내용입니다.',
	sysdate,
	'F'
);