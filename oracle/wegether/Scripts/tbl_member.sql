/*�쉶�썝 �뀒�씠釉� �깮�꽦*/

CREATE SEQUENCE SEQ_MEMBER;

SELECT SEQ_MEMBER.NEXTVAL FROM DUAL;

DROP SEQUENCE SEQ_MEMBER

CREATE TABLE TBL_MEMBER(
	ID NUMBER CONSTRAINT PK_MEMBER PRIMARY KEY,
	MEMBER_ID VARCHAR2(1000) UNIQUE NOT NULL,
	MEMBER_PASSWORD VARCHAR2(1000) NOT NULL,
	MEMBER_NAME VARCHAR2(1000) NOT NULL,
	MEMBER_NICKNAME VARCHAR2(1000) NOT NULL,
	MEMBER_PHONE_NUMBER VARCHAR2(1000) NOT NULL,
	MEMBER_STATUS CHAR(1) DEFAULT '1' CONSTRAINT CHECK_MEMBER_STATUS 
	CHECK(MEMBER_STATUS IN ('0', '1')),
	MEMBER_GRADE VARCHAR2(500) DEFAULT 'USER' CONSTRAINT CHECK_MEMBER_GRADE
	CHECK(MEMBER_GRADE IN ('ADMIN', 'USER')),
	MEMBER_POINT NUMBER DEFAULT 2000,
	MEMBER_SCHOOL VARCHAR2(1000),
	MEMBER_MAJOR VARCHAR2(1000),
	MEMBER_INTRODUCING VARCHAR2(1000),
	MEMBER_LOGIN_STATUS VARCHAR2(1000) DEFAULT 'WEGETHER' CONSTRAINT CHECK_MEMBER_LOGIN_STATUS
	CHECK(MEMBER_LOGIN_STATUS IN ('WEGETHER', 'KAKAO', 'NAVER')),
	FILE_PATH VARCHAR2(1000),
	FILE_UUID VARCHAR2(1000),
	FILE_NAME VARCHAR2(1000),
	FILE_SIZE NUMBER,
	SNS_PROFILE VARCHAR2(1000),
	MEMBER_REGISTER_DATE DATE DEFAULT SYSDATE,
	MEMBER_UPDATE_DATE DATE DEFAULT SYSDATE
);





SELECT * FROM TBL_MEMBER;

DROP TABLE TBL_MEMBER;

/*관리자 아이디 1개*/
INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE)
VALUES(51, 'admin@naver.com', '1111', '관리자', '관리자', '0000', '1', 'ADMIN');

/*상담 게시글 59개 올린유저*/
INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE)
VALUES(52, 'user@naver.com', '1234', '김철수', '학식충', '0000', '1', 'USER');

/*상담 게시글 59개 올린유저 게시글 답글 남긴 한동석 강사님*/

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE)
VALUES(53, 'hds@naver.com', '1234', '한동석', '벅벅코딩', '0000', '1', 'USER', 2000, '서울대학교', '컴퓨터공학과', '코딩의 신', 'WEGETHER', '2023/05/19', 'h', '사진.jpg', 500);


/*치윤이 관련 TBL_MEMBER 더미데이터*/
INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(301, 'cldbs8921@gmail.com', 'qwer1234!!', '최대한', '최대한', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '나는 가끔 눈물을 흘린다..', 'KAKAO' , '', '', '', 1, 'http://k.kakaocdn.net/dn/2N0IM/btseHQvTQqG/6yvpCEgwbW6TEZbu6x8KrK/img_110x110.jpg', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(302, 'test1@gmail.com', 'qwer1234!!', '나잘난', '광주멋쟁이', '01055555555', '1' , 'USER' , 2000, '동석대학교', '경제학과', '오늘도 화이팅!', 'WEGETHER' , '2023/05/31', 'p', 'profile1.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(303, 'test2@gmail.com', 'qwer1234!!', '최대한', '최대한', '01055555555', '1' , 'USER' , 2000, '동석대학교', '신문방송학과', '참언론인이 될 테야', 'WEGETHER' , '2023/05/31', 'p', 'profile2.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(304, 'test38921@gmail.com', 'qwer1234!!', '최대한', '최대한', '01055555555', '1' , 'USER' , 2000, '동석대학교', '제어계측공학과', '기계에 미친 사람', 'WEGETHER' , '2023/05/31', 'p', 'profile3.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(305, 'test4@gmail.com', 'qwer1234!!', '이도환', '더글로리', '01055555555', '1' , 'USER' , 2000, '동석대학교', '경영학과', '내 꿈은 삼성 오너', 'WEGETHER', '2023/05/31', 'p', 'profile4.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(306, 'test5@gmail.com', 'qwer1234!!', '대조영', '한동석열혈팬', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '나는 가끔 눈물을 흘린다..', 'WEGETHER' , '2023/05/31', 'p', 'profile5.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(307, 'test6@gmail.com', 'qwer1234!!', '최소한', '최대한의라이벌최소한', '01055555555', '1' , 'USER' , 2000, '동석대학교', '국어국문학과', '방랑시인', 'WEGETHER' , '2023/05/31', 'p', 'profile6.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(308, 'test7@gmail.com', 'qwer1234!!', '최중한', '동석대학교1짱', '01055555555', '1' , 'USER' , 2000, '동석대학교', '독어독문학과', '구텐탁~', 'WEGETHER' , '2023/05/31', 'p', 'profile7.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(309, 'test8@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

/*인진 관련 TBL_MEMBER 더미데이터*/
INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3000, 'test300@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3001, 'test301@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3002, 'test302@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3003, 'test303@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3004, 'test304@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3005, 'test305@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3006, 'test306@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3007, 'test307@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3008, 'test308@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3009, 'test3009@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3010, 'test3010@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3011, 'test3011@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3012, 'test3012@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3013, 'test3013@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3014, 'test3014@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3015, 'test3015@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3016, 'test3016@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3017, 'test3017@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3018, 'test3018@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);
INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3019, 'test3020@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3020, 'test3333@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);
INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3021, 'test3021@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3022, 'test3022@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3023, 'test3023@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3024, 'test3024@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3025, 'test3025@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3026, 'test3026@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3027, 'test3027@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '0' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3028, 'test3028@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '0' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE

);
INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3029, 'test3029@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);
INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3030, 'test3030@gmail.com', 'qwer1234!!', '김신선', '인생은플렉스', '01055555555', '0' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3031, 'injin333@gmail.com', 'qwer1234!!', '김인진', '소미주', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3032, 'jongmoon@gmail.com', 'qwer1234!!', '이종문', '천재', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3033, 'kim@gmail.com', 'qwer1234!!', '김치윤', '좋아요', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3034, 'oracle@gmail.com', 'qwer1234!!', '박대리', '과장님', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, FILE_PATH, FILE_UUID, FILE_NAME, FILE_SIZE, SNS_PROFILE, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(3035, 'oraclsss@gmail.com', 'qwer1234!!', '김수진', '구독', '01055555555', '1' , 'USER' , 2000, '동석대학교', '영어영문학과', '영어가 좋아', 'WEGETHER' , '2023/05/31', 'p', 'profile8.png', 1, '', SYSDATE, SYSDATE
);

-------------------------------------------- 소영 여기 더미 넣어야 함 -------------------------------------------
/* 멤버 100번 TBL_MEMBER*/

INSERT INTO TBL_MEMBER
(ID, MEMBER_ID, MEMBER_PASSWORD, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_PHONE_NUMBER, MEMBER_STATUS, MEMBER_GRADE, MEMBER_POINT, MEMBER_SCHOOL, MEMBER_MAJOR, MEMBER_INTRODUCING, MEMBER_LOGIN_STATUS, MEMBER_REGISTER_DATE, MEMBER_UPDATE_DATE)
VALUES(100, 'msy2559@nate.com', '1111', '문소영', '쏘0', '01085532559', '1' , 'USER' , 2500, '하버드', '수학과', '안녕하세요!', 'WEGETHER' , SYSDATE, SYSDATE);



