/*상담 테이블 생성*/

CREATE SEQUENCE SEQ_CONSULTING;

SELECT SEQ_CONSULTING.NEXTVAL FROM DUAL;

CREATE TABLE TBL_CONSULTING(
	ID NUMBER CONSTRAINT PK_CONSULTING PRIMARY KEY,
	MEMBER_ID NUMBER NOT NULL,
	CONSULTING_TITLE VARCHAR2(1000) NOT NULL,
	CONSULTING_CONTENT VARCHAR2(1000) NOT NULL,
	CONSULTING_CATEGORY VARCHAR2(1000) NOT NULL,
	CONSULTING_REGISTER_DATE DATE DEFAULT SYSDATE,
	CONSULTING_UPDATE_DATE DATE DEFAULT SYSDATE
);

SELECT * FROM TBL_CONSULTING;

DROP TABLE TBL_CONSULTING;

/*TBL_CONSULTING 테이블 FK 설정*/
	ALTER TABLE TBL_CONSULTING ADD CONSTRAINT FK_CONSULTING_MEMBER FOREIGN KEY(MEMBER_ID)
	REFERENCES TBL_MEMBER(ID);
	
/*TBL_CONSULTING 관련 더미 데이터*/
INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(1, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(2, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(3, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(4, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(5, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(6, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(7, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(8, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(9, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(10, 52, '입시1', '입시1', '입시');

/*11개 시작*/
INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(11, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(12, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(13, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(14, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(15, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(16, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(17, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(18, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(19, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(20, 52, '입시1', '입시1', '입시');

/*컨설팅 21개 시작*/
INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(21, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(22, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(23, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(24, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(25, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(26, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(27, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(28, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(29, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(30, 52, '입시1', '입시1', '입시');

/*컨설팅 31개시작*/
INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(31, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(32, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(33, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(34, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(35, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(36, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(37, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(38, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(39, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(40, 52, '입시1', '입시1', '입시');


/*컨설팅 41개 시작*/
INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(41, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(42, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(43, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(44, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(45, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(46, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(47, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(48, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(49, 52, '입시1', '입시1', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(50, 52, '입시1', '입시1', '입시');

/*컨설팅 내용 좋은거 10개*/
INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(51, 100, '미대 입시 준비중입니다..', '혹시 미대 입시 준비 할때 가장 신경써야 할 것이 있을까요?? 도와주세요!!', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(52, 100, '체대 보디빌더과 입시 준비중입니다!!', '혹시 체대 보디빌더 3대 몇 쳐야 하나요?', '입시');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(53, 100, '체대쪽도 자소서 준비하는 직업이 있을까요??', '제곧내', '자소서');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(54, 100, '고등학교 3학년입니다..', '제가 음악쪽에 흥미가 있는데.. 진로로 선택해야 하나 아니면 현실적인 공부를 선택해야할까요?..', '진로');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(55, 100, '조리과 대학생입니다..', '조리쪽은 좋은데 생각보다 미래가 확 터있지 않아서 고민됩니다.. 조언좀부탁드려요..', '진로');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(56, 52, '항공과 다니고 있는 김아시아나입니다', '면접볼 때 준비해야할 것이 크게 어떤 것이 있을까요??', '면접');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(57, 52, '전자공학과입니다', '삼성들어가구 싶은데 준비해야할 스펙이 있을까요??', '면접');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(58, 52, '호텔입사 할 때 쓴 자소서 공유해주실분.. ㅠㅠ', '000@naver.com 이메일로 공유부탁드려요 ㅠㅠ', '자소서');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(59, 52, '자소서를 처음 쓰는데 기본 양식 공유해주실분~~', '그냥 모던한 자소서... 공유좀..', '자소서');

INSERT INTO TBL_CONSULTING
(ID, MEMBER_ID, CONSULTING_TITLE, CONSULTING_CONTENT, CONSULTING_CATEGORY)
VALUES(60, 52, '한동석 강사님 제자 안철수 라고 합니다.', '코딩은 어떻게 공부해야 할까요?ㅠㅠ', '학습');