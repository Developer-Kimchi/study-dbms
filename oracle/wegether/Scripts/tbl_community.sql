/*而ㅻ�ㅻ땲�떚 �뀒�씠釉� �깮�꽦*/

CREATE SEQUENCE SEQ_COMMUNITY;

SELECT SEQ_COMMUNITY.NEXTVAL FROM DUAL;

CREATE TABLE TBL_COMMUNITY(
	ID NUMBER CONSTRAINT PK_COMMUNITY PRIMARY KEY,
	MEMBER_ID NUMBER NOT NULL,
	COMMUNITY_TITLE VARCHAR2(1000) NOT NULL,
	COMMUNITY_SUBTITLE VARCHAR2(1000) NOT NULL,
	COMMUNITY_CONTENT VARCHAR2(1000) NOT NULL,
	COMMUNITY_REGISTER_DATE DATE DEFAULT SYSDATE,
	COMMUNITY_UPDATE_DATE DATE DEFAULT SYSDATE
);

SELECT * FROM TBL_COMMUNITY;

DROP TABLE TBL_COMMUNITY;

/*TBL_COMMUNITY �뀒�씠釉� FK �꽕�젙*/
	ALTER TABLE TBL_COMMUNITY ADD CONSTRAINT FK_COMMUNITY_MEMBER FOREIGN KEY(MEMBER_ID)
	REFERENCES TBL_MEMBER(ID);


INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(1, 301, '드디어 졸업!!', '중부대학교 졸업~', '졸업식 참여^^
	중부대 항공서비스학과를 나오고
	승무원에 취업했어요.
	제 인생을 바꿔준 학교였네요.
	이제 저는 정든 대학을 뒤로하고 새 삶을 시작합니다!', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(2, 301, '캠퍼스 벚꽃', '벚꽃구경', '예쁜 벚꽃을 구경해보자', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(3, 301, '전공책 양 실화냐..?', '새내기의 전공책들', '아 진짜 이걸 언제 다 공부하냐
	대학 오면 공부 끝일 줄 알았는데
	한 학기에 공부해야 할 양이 고3때보다 많은 거 같음
	그래도 화이팅 하자', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(4, 301, '꼬막은 전설이다', '내가 제일 좋아하는 꼬막무침', '꼬막은 내 인생 최고의 음식이다.
	내 삶속에서 희로애락을 함께 했다.
	어려서부터 어머니는 내게 가끔 꼬막무침을 만들어주시곤 했다.
	그런 탓인지 성인이 되어서도 꼬막 요리를 찾게 되었다.
	대학생활 인간관계에 어려움을 겪을 때,
	시험을 망쳤을 때, 실연을 당했을 때
	꼬막무침과 소주는 언제나 나와 함께했다.
	오늘은 준비하던 기사 자격증에 합격했다.
	꼬막무침을 사들고 가서 부모님과 함께 먹을 것이다.', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(5, 301, '짜아아안!', '시험기간? 그게 뭔데?ㅎㅎ', '시험기간인데 모여서 술먹는 학우 있니?ㅋㅋㅋㅋㅋ
	인생 뭐 별거 있나 뒷일은 나중에 생각하는 거지!!
	일단 오늘은 즐겨즐겨~~', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(6, 301, '싱가폴 여행 사진', '사진 구경하세요~', '싱가폴 여행 때 찍은 사진입니다ㅎㅎ
	명물인 사자상 있는 곳도 갔다왔는데
	싱가폴은 야경이 너무 예뻐요~~', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(7, 301, '전에 축제 때 사진', '지금 생각해도 미쳤다', '와 코로나 풀리고 드디어 첫 대학축제였는데
	라인업이 진짜 지금 생각해봐도 역대급이었음
	우리학교 학생회 일 너무 잘하는 거 같음..
	싸이는 말할 것도 없고
	아이브를 내생애 한 번이라도 보게 될 줄은 몰랐다..
	티비나 유튜브에서도 예쁜데
	실제로 보니까 비주얼 진짜 장난 아니더라..
	그리고 방탄소년단 진짜... 폼 미쳤음
	진 군대 가서 멤버 6명인데도
	그 공백이 전혀 안 느껴질 정도로 무대장악력이 장난 아님
	이래서 빌보드차트 씹어먹었나봄
	내년 축제도 너무 기대된다', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(8, 301, '취업 성공했습니다!', '테슬라 취업 성공했어요!!', '안녕하세요!!! 동석대 기계공학과 재학 중인 김치윤입니다.
	제가 평소에 테슬라 전기차를 너무 좋아해서
	테슬라 취업을 목표로 열심히 준비했어요..
	영어공부도 열심히 하고 이쪽 관련으로 엄청 많이 알아본 것 같네요.
	
	과정이 순탄치가 않았어요ㅠㅠ
	저는 대학 처음 들어올 때만 해도 영어 실력이 많이 안 좋았거든요(토익 550...)
	근데 하루에 100단어씩 외우고
	제 전공 공부도 진짜 하루에 3시간씩 자면서 열심히 했어요.
	그리고 미국 채용시장에 대해서도 수시로 조사했답니다.

	드디어 노력이 결실을 보는 거 같아요ㅎㅎ
	여러분도 취업 꼭 성공하세요. 감사합니다!', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(9, 301 , '기말고사 대비 열공중..', '재무관리 너무 어렵다ㅠ', '공부하다 머리 식힐 겸 잠깐 들어왔어요ㅋㅋㅋ
	다들 공부 잘 돼가요?
	하 공부할 거 너무 많다ㅠㅠㅠㅠ', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(10, 301, '동석대 근처 감성카페 추천', '여긴 꼭 와봐야해!', '와 여기 분위기 진짜 대박임..
	여기서 커피 마시니까 무슨 유럽의 한적한 시골마을에 와 있는 느낌..
	여기 디저트도 너무 맛있음 진짜 꼭 와보세요!!
	홍보글 아닙니다^^', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(11, 301, 'MT로 부산여행', '부산 바닷가', '학우 여러분 안녕하세요~
	동석대학교 배드민턴 동아리 라켓소년(녀)단입니다!
	MT여행으로 부산에 왔는데요,
	높게 치솟은 마천루와 무한하게 펼쳐진 푸른 바다를 보고 있노라니
	숨가쁜 대학생활을 잠시 뒤로하고 힐링되는 기분입니다!!
	
	이 게시판을 이용하는 분들 중 우리 학교 분들도 계실 거고,
	우리 대학교를 목표로 공부하고 계신 고등학생도 있을 텐데
	우리동아리는 이렇게나 재밌는 활동을 많이 하니까
	많이들 찾아와주세요!! 감사합니다~~', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(12, 301, '저에게도 드디어 캠퍼스 로맨스가?!', '썸타는 사람 생김^^', '새내기 환영회 때부터 좋게 봐오던 친구가 있는데
	처음에는 그냥 친구로서 좋았어요.
	하지만 사람들한테도 친절하고 배려심 많은 모습을 보고
	어느 순간부터 그 친구한테 호감을 가지게 된 것 같아요~
	요즘 이 친구랑 특별한 사정이 아니더라도 같이 만나서 영화도 보고
	밤에 통화도 자주 하고 있어요!!
	저 혼자만의 썸은 아니겠죠?ㅠㅠㅠ
	이번주 중에 분위기 잡아서 고백각 노려보겠습니다ㅎㅎㅎ
	학우 여러분 모두 응원해주세요!', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(13, 301, '세상 살이 쉽지 않네요..', '취업 준비생의 푸념', '현재 경희대에 재학중인 4학년 학생입니다.
	휴학하고 CPA만 3년을 도전했는데
	3번 다 떨어졌네요..
	회계사의 꿈을 갖고 경영학과에 진학했고 공부도 나름 열심히 했는데
	노력이 부족했던 걸까요?
	야밤에 술 한 잔 하고 있습니다..ㅠㅠㅠ
	지금 깨어있는 분 있나요?', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(14, 301, '저희 집 강아지 사진입니다', '강아지 이름은 토리', '학우 여러분 안녕하세요~
	저희집 강아지 사진이 너무 예쁘게 찍혀서 공유하고자 올립니다.
	귀여운 사진 보고 행복한 하루 보내세요~', SYSDATE, SYSDATE
);

INSERT INTO WEGETHER.TBL_COMMUNITY
(ID, MEMBER_ID, COMMUNITY_TITLE, COMMUNITY_SUBTITLE, COMMUNITY_CONTENT, COMMUNITY_REGISTER_DATE, COMMUNITY_UPDATE_DATE)
VALUES(15, 301, '교환학생과 교류 프로그램에 참여했습니다!', '동석대학교의 아름다운 추억들^^', '안녕하세요! 동석대학교 1학년으로 재학 중인 최대한입니다.
	오늘 학교 차원에서 진행한 외국인 교환학생과의 교류 프로그램에 참여했는데요,
	미국, 멕시코, 프랑스, 아일랜드에서 온 학우들과 함께 시간을 보냈습니다.
	언어 공부도 되고 다른 문화권에서 살아온 사람들의 가치관에 대해 알아갈 수 있는 뜻깊은 시간이었어요!
	이런 프로그램이 앞으로도 활성화 되었으면 좋겠습니다. 글 읽어주셔서 감사합니다^^', SYSDATE, SYSDATE
);

