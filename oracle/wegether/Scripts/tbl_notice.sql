/*공지사항 테이블 생성*/

CREATE SEQUENCE SEQ_NOTICE;

CREATE TABLE TBL_NOTICE(
	ID NUMBER CONSTRAINT PK_NOTICE PRIMARY KEY,
	NOTICE_TITLE VARCHAR2(1000) NOT NULL,
	NOTICE_CONTENT VARCHAR2(1000) NOT NULL,
	NOTICE_REGISTER_DATE DATE DEFAULT SYSDATE,
	NOTICE_UPDATE_DATE DATE DEFAULT SYSDATE
);

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(10, '[공간와디즈 여름의 발견 EVENT] 마인드브릿지 팝업 ㅣ PSTR & STUDIO Roof 전시를 즐겨보세요!', '성큼 다가온 여름! 여러분에게 ‘여름’은 덥고 습해서 피하고픈 계절인가요? 공간 와디즈가 준비한 ‘여름의 발견’ 과 함께라면 여름은 더 이상 얼른 지나가길 바라는 계절이 아닌 기대감으로 가득 찬 청량한 계절이 될 거예요.');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(9, '[메이커 모집] 전통주 기획전 참여 메이커 모집','전통주 기획전 참여 메이커 모집 합니다');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(8, '[메이커 모집] 크리에이터 페스티벌 참여 메이커 모집', '크리에이터 페스티벌 참여 메이커 모집 합니다');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(7, '[첫구매] 스토어가 처음이라면? 5천원 쿠폰ㅣ최대 50% 혜택받고 인기상품 구매하세요', '스토어가 처음이라면 인기상품 구매하고 혜택받으세요');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(6, '[이벤트] 5월 여름의 발견 기획전 | 펀딩·스토어 선착순 쿠폰', '펀딩, 스토어 선착순 쿠폰 제공합합');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(5, '[이벤트] 매월 3주차 OPEN | What day is it? 매일 혜택 가득한, 와디즈데이', '매일 3주차 혜택을 제공합니다');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(4, '[서포터 보호] 안심번호 서비스 시행 및 와디즈 사칭 유의사항 안내', '안심번호 서비스 시행 및 와디즈 사칭 유의사항 안내 입니다');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(3, '[서비스 안내] 프리오더 서비스가 리뉴얼됩니다.', '서비스가 리뉴얼 됩니다');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(2, '[서비스 안내] 지지서명 서비스와 포인트 정책 개편', '지지서명 서비스와 포인트 정책 개편합니다');

INSERT INTO TBL_NOTICE
(ID, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(1, '[서비스 안내] 와디즈 SNS 광고 수수료 변경 및 정책 안내', '와디즈 SNS 광고 수수료 변경 및 정책 안내 입니다');



SELECT * FROM TBL_NOTICE;

DROP TABLE TBL_NOTICE;