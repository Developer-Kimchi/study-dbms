CREATE SEQUENCE SEQ_ANIMAL;

/*TBL_ANIMAL*/
SELECT *  FROM TBL_ANIMAL;

INSERT INTO TBL_ANIMAL (ANIMAL_ID, ANIMAL_KIND, ANIMAL_AGE, ANIMAL_FEED)
VALUES(SEQ_ANIMAL.NEXTVAL, '개', 10, '사료');

UPDATE TBL_ANIMAL
SET ANIMAL_KIND = '고양이'
WHERE ANIMAL_ID = 1;

DROP TABLE TBL_ANIMAL;
DROP SEQUENCE SEQ_ANIMAL;

/*TBL_STUDENT*/
CREATE SEQUENCE SEQ_STUDENT;

SELECT * FROM TBL_STUDENT;

INSERT INTO HR.TBL_STUDENT
(STUDENT_ID, STUDENT_IDENTIFICATION, STUDENT_NAME, STUDENT_MAJOR, STUDENT_GENDER, STUDENT_BIRTH, STUDENT_AGE, STUDENT_GRADE)
VALUES(SEQ_STUDENT.NEXTVAL , 'kcy', '김치윤', '컴퓨터', 'N', '1996-10-19', 20, 'A+');

INSERT INTO HR.TBL_STUDENT
(STUDENT_ID, STUDENT_IDENTIFICATION, STUDENT_NAME, STUDENT_MAJOR, STUDENT_BIRTH, STUDENT_AGE, STUDENT_GRADE)
VALUES(SEQ_STUDENT.NEXTVAL , 'sch', '성춘향', '그네', '2000-10-19', 24, 'B+');

UPDATE TBL_STUDENT
SET STUDENT_MAJOR = '실용음악'
WHERE STUDENT_IDENTIFICATION = 'sch';

DELETE FROM TBL_STUDENT
WHERE STUDENT_ID = 1;

/*TBL_FLOWER*/
SELECT * FROM TBL_FLOWER;

INSERT INTO TBL_FLOWER
(FLOWER_NAME, FLOWER_COLOR, FLOWER_PRICE)
VALUES('장미', '빨간색', 5000);

INSERT INTO TBL_FLOWER
(FLOWER_NAME, FLOWER_COLOR, FLOWER_PRICE)
VALUES('장미', '노란색', 5000);

INSERT INTO TBL_FLOWER
(FLOWER_NAME, FLOWER_COLOR, FLOWER_PRICE)
VALUES('국화', '노란색', 4000);

UPDATE TBL_FLOWER
SET FLOWER_NAME = '해바라기'
WHERE FLOWER_COLOR = '노란색' AND FLOWER_NAME = '장미';

UPDATE TBL_FLOWER
SET FLOWER_NAME = '국화'
WHERE FLOWER_COLOR = '노란색' AND FLOWER_NAME = '해바라기';

DELETE FROM TBL_FLOWER
WHERE FLOWER_COLOR = '노란색' AND FLOWER_NAME = '해바라기';


/*TBL_POT*/
CREATE SEQUENCE SEQ_POT;

SELECT * FROM TBL_POT;

INSERT INTO TBL_POT
(POT_ID, POT_SHAPE, POT_COLOR, FLOWER_NAME, FLOWER_COLOR)
VALUES(SEQ_POT.NEXTVAL, '원기둥', '흰색', '해바라기', '노란색');

INSERT INTO TBL_POT
(POT_ID, POT_SHAPE, POT_COLOR, FLOWER_NAME, FLOWER_COLOR)
VALUES(SEQ_POT.NEXTVAL, '원기둥', '흰색', '국화', '노란색');

DELETE FROM TBL_POT
WHERE FLOWER_NAME = '해바라기' AND FLOWER_COLOR = '노란색';

/*
 *    TBL_OWNER
   ----------------------------------
   OWNER_ID   NUMBER PK_OWNER
   ----------------------------------
   OWNER_NAME   VARCHAR2 NOT NULL
   OWNER_AGE   NUMBER
   OWNER_ADDRESS   VARCHAR2 NOT NULL
   OWNER_PHONE   VARCHAR2 NOT NULL
 * */
CREATE TABLE TBL_OWNER(
   OWNER_ID NUMBER CONSTRAINT PK_OWNER PRIMARY KEY,
   OWNER_NAME VARCHAR2(500) NOT NULL,
   OWNER_AGE NUMBER,
   OWNER_ADDRESS VARCHAR2(500) NOT NULL,
   OWNER_PHONE VARCHAR2(500) NOT NULL
);
/*
 *    TBL_PET
   ----------------------------------
   PET_ID      NUMBER PK_PET
   ----------------------------------   
   PET_TYPE   VARCHAR2 NOT NULL
   PET_NAME   VARCHAR2 NOT NULL
   PET_AGE      NUMBER NOT NULL
   PET_ILL_NAME   VARCHAR2 NOT NULL
   OWNER_ID   NUMBER FOREIGN KEY FK_PET_OWNER
 * */

CREATE TABLE TBL_PET(
   PET_ID NUMBER CONSTRAINT PK_PET PRIMARY KEY,
   PET_TYPE VARCHAR2(500) NOT NULL,
   PET_NAME VARCHAR2(500) NOT NULL,
   PET_AGE NUMBER NOT NULL,
   PET_ILL_NAME VARCHAR2(500) NOT NULL,
   OWNER_ID NUMBER,
   CONSTRAINT FK_PET_OWNER FOREIGN KEY(OWNER_ID)
   REFERENCES TBL_OWNER(OWNER_ID)
);

CREATE SEQUENCE SEQ_PET;
CREATE SEQUENCE SEQ_OWNER;

/*정보 조회*/
SELECT * FROM TBL_OWNER;
SELECT * FROM TBL_PET; 
/*정보 추가*/

INSERT INTO HR.TBL_OWNER
(OWNER_ID, OWNER_NAME, OWNER_AGE, OWNER_ADDRESS, OWNER_PHONE)
VALUES(SEQ_OWNER.NEXTVAL , '김치윤', 28, '우리집', '00011112222');

INSERT INTO HR.TBL_OWNER
(OWNER_ID, OWNER_NAME, OWNER_AGE, OWNER_ADDRESS, OWNER_PHONE)
VALUES(SEQ_OWNER.NEXTVAL , '이몽룡', 29, '몽룡이네', '00011112223');


INSERT INTO HR.TBL_PET
(PET_ID, PET_TYPE, PET_NAME, PET_AGE, PET_ILL_NAME, OWNER_ID)
VALUES(SEQ_PET.NEXTVAL , 'DOG', 'TORI', 8, 'ALLERGY', 1);

INSERT INTO HR.TBL_PET
(PET_ID, PET_TYPE, PET_NAME, PET_AGE, PET_ILL_NAME, OWNER_ID)
VALUES(SEQ_PET.NEXTVAL , 'ALLIGATOR', 'AGO', 2, 'LOVESICK', 1);

INSERT INTO HR.TBL_PET
(PET_ID, PET_TYPE, PET_NAME, PET_AGE, PET_ILL_NAME, OWNER_ID)
VALUES(SEQ_PET.NEXTVAL , 'CAT', 'YAONG', 2, 'HEADACHE', 3);

/*정보 수정: 보호자 이름 변경*/
UPDATE TBL_OWNER
SET OWNER_NAME  = '김수로'
WHERE OWNER_ID = 1;

/*동일한 보호자의 반려 동물 추가*/
INSERT INTO HR.TBL_PET
(PET_ID, PET_TYPE, PET_NAME, PET_AGE, PET_ILL_NAME, OWNER_ID)
VALUES(SEQ_PET.NEXTVAL , 'EAGLE', 'EAGLE EYE', 3, 'FLU', 3);

/*반려동물을 키우고 있는 보호자를 병원 보호자 명단에서 삭제*/
UPDATE TBL_PET
SET OWNER_ID = NULL
WHERE OWNER_ID IS NOT NULL;

UPDATE TBL_PET
SET OWNER_ID = 1
WHERE OWNER_ID IS NULL;

/*두 마리 이상의 반려동물 보호자의 핸드폰 번호를 다른 번호로 변경*/
UPDATE TBL_OWNER
SET OWNER_PHONE = '00000000001'
WHERE OWNER_ID =
(
SELECT OWNER_ID FROM TBL_PET
GROUP BY OWNER_ID
HAVING COUNT(OWNER_ID) >= 2
);
/*DML 실습*/
/*PLAYER 테이블에서 TEAM_ID가 'K01'인 선수*/
SELECT * FROM PLAYER
WHERE TEAM_ID = 'K01';

/*PLAYER 테이블에서 TEAM_ID가 'K01'이 아닌 선수*/
SELECT * FROM PLAYER
WHERE TEAM_ID != 'K01';

/*PLAYER 테이블에서 WEIGHT가 70이상이고 80이하인 선수*/
SELECT * FROM PLAYER
WHERE WEIGHT >= 70 AND WEIGHT <= 80;

SELECT * FROM PLAYER
WHERE WEIGHT BETWEEN 70 AND 80;

/*PLAYER 테이블에서 TEAM_ID가 'K03'이고 HEIGHT가 180미만인 선수*/
SELECT * FROM PLAYER
WHERE TEAM_ID = 'K03' AND HEIGHT < 180;

/*PLAYER 테이블에서 TEAM_ID가 'K06'이고 NICKNAME이 '제리'인 선수*/
SELECT * FROM PLAYER
WHERE TEAM_ID = 'K06' AND NICKNAME = '제리';

/*PLAYER 테이블에서 HEIGHT가 170이상이고 WEIGHT가 80이상인 선수 이름*/
SELECT * FROM PLAYER
WHERE HEIGHT >= 170 AND WEIGHT >= 80;

/*STADIUM 테이블에서 SEAT_COUNT가 30000 초과이고 41000이하인 경기장*/
SELECT STADIUM_ID, STADIUM_NAME, SEAT_COUNT FROM STADIUM
WHERE SEAT_COUNT > 30000 AND SEAT_COUNT <= 41000;

/*PLAYER 테이블에서 TEAM_ID가 'K02'이거나 'K07'이고 포지션은 'MF'인 선수*/
SELECT * FROM PLAYER
WHERE TEAM_ID IN('K02', 'K07') AND  "POSITION" = 'MF';
