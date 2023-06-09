/*강연 파일 테이블 생성*/

CREATE SEQUENCE SEQ_LECTURE_FILE;

CREATE TABLE TBL_LECTURE_FILE(
	ID NUMBER CONSTRAINT PK_LECTURE_FILE PRIMARY KEY,
	LECTURE_ID NUMBER NOT NULL
);

SELECT * FROM TBL_LECTURE;

DROP TABLE TBL_LECTURE_FILE;

/*TBL_LECTURE_FILE 테이블 FK 설정*/
	ALTER TABLE TBL_LECTURE_FILE ADD CONSTRAINT FK_LECTURE_FILE_FILE FOREIGN KEY(ID)
	REFERENCES TBL_FILE(ID);
	
	ALTER TABLE TBL_LECTURE_FILE ADD CONSTRAINT FK_LECTURE_FILE_LECTURE FOREIGN KEY(LECTURE_ID)
	REFERENCES TBL_LECTURE(ID);

/*TBL_LECTURE_FILE 관련 더미 데이터*/
/*5개 더미데이터 X 3*/
INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1301, 1);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1302, 1);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1303, 1);

/*2번째*/
INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1304, 2);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1305, 2);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1306, 2);

/*3번째*/
INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1307, 3);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1308, 3);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1309, 3);

/*4번째*/
INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1310, 4);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1311, 4);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1312, 4);

/*5번째*/
INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1313, 5);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1314, 5);

INSERT INTO TBL_LECTURE_FILE
(ID, LECTURE_ID)
VALUES(1315, 5);

