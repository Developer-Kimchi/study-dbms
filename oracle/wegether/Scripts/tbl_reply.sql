/*댓글 테이블 생성*/

CREATE SEQUENCE SEQ_REPLY;

CREATE TABLE TBL_REPLY(
	ID NUMBER CONSTRAINT PK_REPLY PRIMARY KEY,
	REPLY_CONTENT VARCHAR2(1000) NOT NULL,
	REPLY_GROUP NUMBER NOT NULL,
	REPLY_DEPTH NUMBER NOT NULL,
	REPLY_REGISTER_DATE DATE DEFAULT SYSDATE,
	REPLY_UPDATE_DATE DATE DEFAULT SYSDATE
);

SELECT * FROM TBL_REPLY;

DROP TABLE TBL_REPLY;

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1201, '올ㅋㅋㅋ 대한이 사진 멋지게 잘 나왔네', 1201, 0, SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1202, '헐 나도 끼워줘ㅠㅠ', 1202, 0, SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1203, '나도 다음에 기회되면 이런 프로그램 참여해볼까...', 1203, 0, SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1204, '나도 영어 연습 해야 되는데', 1204, 0, SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1205, 'I enjoyed the time I sent with you guys :). I love you so much!', 1205, 0, SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1206, '멋진 척 하지 마라ㅡㅡㅋ', 1206, 0, SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1207, 'Gracias por estar conmigo hoy. Continuaremos nuestra amistad para siempre!!', 1207, 0, SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1208, '저도 다음에 꼭 참여하고 싶네요ㅎㅎ 혹시 교환학생 교류 프로그램 다음 일정이 어떻게 되는지 아시는 분 있나요?', 1208, 0, SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH, REPLY_REGISTER_DATE, REPLY_UPDATE_DATE)
VALUES(1209, '다들 관심 가져주셔서 감사합니다~ 2학기 9월에도 프로그램 일정이 있다고 들었어요. 동석대 분들은 학교 홈페이지 잘 확인해주세요~', 1209, 0, SYSDATE, SYSDATE
);

/*종문이 관련 TBL_REPLY 더미데이터*/
INSERT INTO TBL_REPLY
(ID, REPLY_CONTENT, REPLY_GROUP, REPLY_DEPTH)
VALUES(201, '안철수! 당장 나가!', 201, 0);
