/*문의 테이블 생성*/

CREATE SEQUENCE SEQ_INQUIRY;

CREATE TABLE TBL_INQUIRY(
	ID NUMBER CONSTRAINT PK_INQUIRY PRIMARY KEY,
	MEMBER_ID NUMBER NOT NULL,
	INQUIRY_TITLE VARCHAR2(1000) NOT NULL,
	INQUIRY_CONTENT VARCHAR2(1000) NOT NULL,
	INQUIRY_STATUS CHAR(1) DEFAULT '1'
	CONSTRAINT CHECK_INQUIRY_STATUS CHECK(INQUIRY_STATUS IN ('0', '1')),
	INQUIRY_REGISTER_DATE DATE DEFAULT SYSDATE
);

SELECT * FROM TBL_INQUIRY;

DROP TABLE TBL_INQUIRY;

/*TBL_INQUIRY 테이블 FK 설정*/
	ALTER TABLE TBL_INQUIRY ADD CONSTRAINT FK_INQUIRY_MEMBER FOREIGN KEY(MEMBER_ID)
	REFERENCES TBL_MEMBER(ID);
	

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(100, 301, '프로젝트 진행을 취소하고 싶은데 어떻게 해야 할까요?', '안녕하세요. 프로젝트 참여해서 진행하고 있는 김인진 입니다. 프로젝트 진행을 취소하고 싶은데 어떻게 해야 할까요?', '0');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(99, 302, '강연 참석 방법을 알고 싶어요!', '강연 참석 방법을 알고 싶어요! 그냥 가서 들으면 되는 것 인가요?', '0');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(98, 303, '커뮤니티 이용은 아무나 이용할 수 있는 것인가요?', '커뮤니티는 아무나 이용 가능한가요?', '0');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(97, 304, '안녕하세요 고등학교 3학년 예비 대학생 입니다. 상담 신청 어떻게 하는지 알고 싶습니다.', '상담 신청 방법 알려주세요', '0');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(96, 305, '문의 이렇게 신청 하는거 맞아요?', '문의 이렇게 신청하는거 맞아요?', '0');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(95, 306, '홈페이지 이용 관련하여 문의 드립니다.', '홈페이지 이용 관련하여 문의 드립니다. 제가 처음 위게더를 이용해보는데, 네이버, 카카오 계정 모두 연동이 가능한가요? 되게 편한거 같네요. 누가 만들었는지 모르겠지만 정말 잘하는거 같아요!', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(94, 307, '비밀번호가 계속 찾을 수 없다고 나와요.', '비밀번호가 계속 틀렸다고 합니다', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(93, 308, '네이버 계정으로 가입 하는 방법 알고 싶어요.', '네이버 계정으로 가입 하는 방법 알고 싶어요.', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(92, 309, '다른 대학교와 소통하는 사이트 정말 감사합니다!', '사이트 너무 좋아요!', '1');

/*소영이 마이 페이지에서 문의 내역 확인 관련 더미데이터 MEMBER_ID 100 */

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS, INQUIRY_REGISTER_DATE)
VALUES(500 , 100, '강연 문의', '대면 강의는 없나요?', '1', SYSDATE);

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(91, 100, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있는지 물어보고 싶어요!', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(90, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(89, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(88, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(87, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(86, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(85, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(84, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(83, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(82, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(81, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(80, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(79, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(78, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(77, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(76, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(75, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(74, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(73, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(72, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(71, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(70, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(69, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

INSERT INTO TBL_INQUIRY
(ID, MEMBER_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_STATUS)
VALUES(68, 52, '자료 구매하면 어떻게 받을 수 있어요?', '자료 구매하면 어떻게 받을 수 있어요?', '1');

