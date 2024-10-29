#DELETE MEMBER;
#멤버 테이블 샘플 데이터
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('no1fc@naver.com','남상도','1234','010-4301-7553','서울특별시',0,0,1,'2024-08-24');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma@naver.com','코마_샘플1','1234','010-0000-0000','서울특별시',4000,4000,1,'2024-09-15');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE,MEMBER_PROFILE) 
VALUES('coma1@naver.com','코마_샘플2','1234','010-0000-0000','서울특별시',1000,14000,1,'2024-09-15','coma1@naver.com.jpg');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma2@naver.com','코마_샘플3','1234','010-0000-0000','서울특별시',500,2000,1,'2024-09-15');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE,MEMBER_PROFILE) 
VALUES('coma3@naver.com','코마_샘플4','1234','010-0000-0000','서울특별시',4000,7000,2,'2024-09-15','coma3@naver.com.jpg');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma4@naver.com','코마_샘플5','1234','010-0000-0000','서울특별시',2000,5000,2,'2024-09-15');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma5@naver.com','코마_샘플6','1234','010-0000-0000','서울특별시',5000,6000,2,'2024-09-15');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE,MEMBER_PROFILE) 
VALUES('coma6@naver.com','코마_샘플7','1234','010-0000-0000','서울특별시',4000,8000,3,'2024-09-15','coma6@naver.com.jpg');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma7@naver.com','코마_샘플8','1234','010-0000-0000','서울특별시',100,100,3,'2024-09-15');

INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma8@naver.com','코마_샘플9','1234','010-0000-0000','서울특별시',100,100,4,'2024-09-15');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma9@naver.com','코마_샘플10','1234','010-0000-0000','서울특별시',0,0,4,'2024-09-15');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma10@naver.com','코마_샘플11','1234','010-0000-0000','서울특별시',0,0,5,'2024-09-15');
INSERT INTO MEMBER(MEMBER_ID,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_PHONE,MEMBER_LOCATION,MEMBER_CURRENT_POINT,MEMBER_TOTAL_POINT,MEMBER_CREW_NUM,MEMBER_CREW_JOIN_DATE) 
VALUES('coma11@naver.com','코마_샘플12','1234','010-0000-0000','서울특별시',0,0,6,'2024-09-15');

#select * from MEMBER

#DELETE CREW;
#크루 테이블 샘플 데이터
INSERT INTO CREW(CREW_NUM, CREW_NAME, CREW_MAX_MEMBER_SIZE, CREW_LEADER, CREW_PROFILE) 
VALUES (1,'샘플크루1', 10, 'coma@naver.com', 'sample.jpg');
INSERT INTO CREW(CREW_NUM, CREW_NAME, CREW_MAX_MEMBER_SIZE, CREW_LEADER, CREW_PROFILE) 
VALUES (2,'샘플크루2', 10, 'coma3@naver.com', 'sample2.jpg');
INSERT INTO CREW(CREW_NUM, CREW_NAME, CREW_MAX_MEMBER_SIZE, CREW_LEADER, CREW_PROFILE) 
VALUES (3,'샘플크루3', 20, 'coma6@naver.com', 'sample3.jpg');
INSERT INTO CREW(CREW_NUM, CREW_NAME, CREW_MAX_MEMBER_SIZE, CREW_LEADER, CREW_PROFILE) 
VALUES (4,'샘플크루4', 10, 'coma8@naver.com', 'sample.jpg');
INSERT INTO CREW(CREW_NUM, CREW_NAME, CREW_MAX_MEMBER_SIZE, CREW_LEADER, CREW_PROFILE) 
VALUES (5,'샘플크루5', 10, 'coma10@naver.com', 'sample.jpg');

#DELETE GRADE;
#등급 테이블 샘플 데이터
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge1.png','5A',0,1000);
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge2.png','5B',1001,2000);
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge3.png','5C',2001,3000);
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge4.png','6A',3001,4000);
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge5.png','6B',4001,5000);
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge6.png','6C',5001,6000);
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge7.png','7A',6001,7000);
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge8.png','7B',7001,8000);
INSERT INTO GRADE(GRADE_NUM,GRADE_PROFILE,GRADE_NAME,GRADE_MIN_POINT,GRADE_MAX_POINT)
VALUES((SELECT NVL(MAX(GRADE_NUM),0)+1 FROM GRADE),'bedge9.png','7C',8001,9000);


#DELETE BATTLE;
#--크루전 테이블 샘플 데이터
INSERT INTO BATTLE(BATTLE_NUM,BATTLE_GYM_NUM,BATTLE_REGISTRATION_DATE,BATTLE_GAME_DATE)
VALUES ((SELECT NVL(MAX(BATTLE_NUM),0)+1 FROM BATTLE),1,'2024-09-07','2024-09-21');
INSERT INTO BATTLE(BATTLE_NUM,BATTLE_GYM_NUM,BATTLE_REGISTRATION_DATE)
VALUES ((SELECT NVL(MAX(BATTLE_NUM),0)+1 FROM BATTLE),2,'2024-09-07');
INSERT INTO BATTLE(BATTLE_NUM,BATTLE_GYM_NUM,BATTLE_REGISTRATION_DATE,BATTLE_GAME_DATE)
VALUES ((SELECT NVL(MAX(BATTLE_NUM),0)+1 FROM BATTLE),3,'2024-09-07','2024-09-27');
INSERT INTO BATTLE(BATTLE_NUM,BATTLE_GYM_NUM,BATTLE_REGISTRATION_DATE,BATTLE_GAME_DATE)
VALUES ((SELECT NVL(MAX(BATTLE_NUM),0)+1 FROM BATTLE),4,'2024-09-07','2024-09-28');
INSERT INTO BATTLE(BATTLE_NUM,BATTLE_GYM_NUM,BATTLE_REGISTRATION_DATE)
VALUES ((SELECT NVL(MAX(BATTLE_NUM),0)+1 FROM BATTLE),5,'2024-09-07','2024-09-24');
INSERT INTO BATTLE(BATTLE_NUM,BATTLE_GYM_NUM,BATTLE_REGISTRATION_DATE,BATTLE_GAME_DATE)
VALUES ((SELECT NVL(MAX(BATTLE_NUM),0)+1 FROM BATTLE),6,'2024-09-07','2024-10-05');

#DELETE BATTLE_RECORD;
#크루전 승패 여부 샘플 데이터
INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),4,1);
INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),4,2);
INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),4,3);

INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM,BATTLE_RECORD_IS_WINNER,BATTLE_RECORD_MVP_ID)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),1,1,'F','coma1@naver.com');
INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM,BATTLE_RECORD_IS_WINNER,BATTLE_RECORD_MVP_ID)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),1,2,'F','coma1@naver.com');
INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM,BATTLE_RECORD_IS_WINNER,BATTLE_RECORD_MVP_ID)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),1,3,'T','coma1@naver.com');

INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM,BATTLE_RECORD_IS_WINNER,BATTLE_RECORD_MVP_ID)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),5,1,'T','coma5@naver.com');
INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM,BATTLE_RECORD_IS_WINNER,BATTLE_RECORD_MVP_ID)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),5,2,'F','coma5@naver.com');
INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM,BATTLE_RECORD_IS_WINNER,BATTLE_RECORD_MVP_ID)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),5,3,'F','coma5@naver.com');

INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),3,4);

INSERT INTO BATTLE_RECORD(BATTLE_RECORD_NUM,BATTLE_RECORD_BATTLE_NUM,BATTLE_RECORD_CREW_NUM)
VALUES ((SELECT NVL(MAX(BATTLE_RECORD_NUM),0)+1 FROM BATTLE_RECORD),6,5);

#DELETE BOARD;
#BOARD 샘플 데이터
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (15, '클라이밍 장비 추천', '등반 장비를 추천합니다.', 0, '서울특별시', 'coma@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (16, '클라이밍 장비 추천', '등반 기술을 연습하는 법을 알아보세요.', 0, '전라남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (17, '암벽 등반 초보자 가이드', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '광주광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (18, '클라이밍 장비 추천', '초보자를 위한 가이드를 제공합니다.', 0, '대전광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (19, '등반 기술 배우기', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '서울특별시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (20, '암벽 등반 초보자 가이드', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '경기도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (21, '자연 속 암벽 등반', '실내 클라이밍 체험 후기를 공유합니다.', 0, '광주광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (22, '등반 기술 배우기', '최고의 등반 기술을 배워보세요.', 0, '충청남도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (23, '등반 기술 배우기', '최고의 등반 기술을 배워보세요.', 0, '전라남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (24, '암벽 등반 대회 준비하기', '등반 장비를 추천합니다.', 0, '경기도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (25, '등반 파트너 찾기', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '경기도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (26, '암벽 등반 초보자 가이드', '등반할 때 좋은 파트너를 찾는 방법을 설명합니다.', 0, '인천광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (27, '클라이밍 장비 추천', '등반할 때 좋은 파트너를 찾는 방법을 설명합니다.', 0, '경기도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (28, '등반 파트너 찾기', '등반할 때 좋은 파트너를 찾는 방법을 설명합니다.', 0, '인천광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (29, '암벽 등반 초보자 가이드', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '세종특별자치도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (30, '실내 클라이밍 체험기', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '전라남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (31, '암벽 등반 초보자 가이드', '등반 기술을 연습하는 법을 알아보세요.', 0, '충청북도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (32, '등반 파트너 찾기', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '경상북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (33, '클라이밍의 이점', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '충청남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (34, '클라이밍 장비 추천', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '서울특별시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (35, '암벽 등반 초보자 가이드', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '전라북도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (36, '암벽 등반 대회 준비하기', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '충청남도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (37, '클라이밍의 이점', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '경상남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (38, '자연 속 암벽 등반', '등반할 때 좋은 파트너를 찾는 방법을 설명합니다.', 0, '충청북도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (39, '클라이밍의 이점', '초보자를 위한 가이드를 제공합니다.', 0, '경상북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (40, '실내 클라이밍 체험기', '초보자를 위한 가이드를 제공합니다.', 0, '충청남도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (41, '클라이밍의 이점', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '경상남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (42, '암벽 등반 초보자 가이드', '초보자를 위한 가이드를 제공합니다.', 0, '경상북도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (43, '암벽 등반 팁', '최고의 등반 기술을 배워보세요.', 0, '경상북도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (44, '클라이밍 장비 추천', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '경기도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (45, '암벽 등반 초보자 가이드', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '서울특별시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (46, '암벽 등반 초보자 가이드', '실내 클라이밍 체험 후기를 공유합니다.', 0, '부산광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (47, '클라이밍 장비 추천', '등반 기술을 연습하는 법을 알아보세요.', 0, '대구광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (48, '실내 클라이밍 체험기', '등반 기술을 연습하는 법을 알아보세요.', 0, '세종특별자치도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (49, '클라이밍의 이점', '등반 기술을 연습하는 법을 알아보세요.', 0, '강원도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (50, '암벽 등반 팁', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '대전광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (51, '암벽 등반 초보자 가이드', '초보자를 위한 가이드를 제공합니다.', 0, '서울특별시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (52, '실내 클라이밍 체험기', '등반할 때 좋은 파트너를 찾는 방법을 설명합니다.', 0, '충청북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (53, '암벽 등반 대회 준비하기', '등반 장비를 추천합니다.', 0, '부산광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (54, '등반 기술 배우기', '등반 장비를 추천합니다.', 0, '경기도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (55, '최고의 클라이밍 루트', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '전라남도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (56, '등반 파트너 찾기', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '충청남도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (57, '클라이밍 장비 추천', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '대전광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (58, '등반 기술 배우기', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '경상남도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (59, '등반 기술 배우기', '초보자를 위한 가이드를 제공합니다.', 0, '경상북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (60, '클라이밍 장비 추천', '실내 클라이밍 체험 후기를 공유합니다.', 0, '경상남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (61, '암벽 등반 대회 준비하기', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '대구광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (62, '등반 기술 배우기', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '세종특별자치도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (63, '자연 속 암벽 등반', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '부산광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (64, '등반 파트너 찾기', '등반 장비를 추천합니다.', 0, '광주광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (65, '자연 속 암벽 등반', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '대구광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (66, '자연 속 암벽 등반', '최고의 등반 기술을 배워보세요.', 0, '충청남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (67, '클라이밍의 이점', '등반 장비를 추천합니다.', 0, '대구광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (68, '등반 파트너 찾기', '등반할 때 좋은 파트너를 찾는 방법을 설명합니다.', 0, '인천광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (69, '암벽 등반 팁', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '전라북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (70, '자연 속 암벽 등반', '등반 장비를 추천합니다.', 0, '울산광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (71, '암벽 등반 팁', '최고의 등반 기술을 배워보세요.', 0, '광주광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (72, '등반 기술 배우기', '등반 장비를 추천합니다.', 0, '강원도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (73, '등반 기술 배우기', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '경기도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (74, '암벽 등반 대회 준비하기', '최고의 등반 기술을 배워보세요.', 0, '인천광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (75, '암벽 등반 팁', '등반 기술을 연습하는 법을 알아보세요.', 0, '전라남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (76, '암벽 등반 초보자 가이드', '등반 장비를 추천합니다.', 0, '광주광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (77, '최고의 클라이밍 루트', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '부산광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (78, '최고의 클라이밍 루트', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '울산광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (79, '암벽 등반 초보자 가이드', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '전라북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (80, '암벽 등반 팁', '초보자를 위한 가이드를 제공합니다.', 0, '경기도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (81, '등반 파트너 찾기', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '부산광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (82, '클라이밍의 이점', '등반 기술을 연습하는 법을 알아보세요.', 0, '서울특별시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (83, '암벽 등반 팁', '등반할 때 좋은 파트너를 찾는 방법을 설명합니다.', 0, '대구광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (84, '암벽 등반 대회 준비하기', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '전라남도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (85, '최고의 클라이밍 루트', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '광주광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (86, '등반 기술 배우기', '초보자를 위한 가이드를 제공합니다.', 0, '전라북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (87, '자연 속 암벽 등반', '실내 클라이밍 체험 후기를 공유합니다.', 0, '울산광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (88, '최고의 클라이밍 루트', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '경상남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (89, '등반 파트너 찾기', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '경기도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (90, '실내 클라이밍 체험기', '등반 기술을 연습하는 법을 알아보세요.', 0, '경상북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (91, '등반 기술 배우기', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '광주광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (92, '실내 클라이밍 체험기', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '서울특별시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (93, '실내 클라이밍 체험기', '등반할 때 좋은 파트너를 찾는 방법을 설명합니다.', 0, '대전광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (94, '등반 기술 배우기', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '부산광역시', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (95, '실내 클라이밍 체험기', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '충청남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (96, '등반 기술 배우기', '최고의 등반 기술을 배워보세요.', 0, '경상북도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (97, '암벽 등반 팁', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '부산광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (98, '실내 클라이밍 체험기', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '경상북도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (99, '클라이밍의 이점', '등반 장비를 추천합니다.', 0, '경상북도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (100, '암벽 등반 초보자 가이드', '암벽 등반 대회 준비를 위한 팁입니다.', 0, '부산광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (101, '최고의 클라이밍 루트', '자연에서 암벽 등반을 즐기는 방법입니다.', 0, '광주광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (102, '암벽 등반 대회 준비하기', '최고의 등반 기술을 배워보세요.', 0, '경상북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (103, '암벽 등반 대회 준비하기', '초보자를 위한 가이드를 제공합니다.', 0, '경기도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (104, '클라이밍 장비 추천', '초보자를 위한 가이드를 제공합니다.', 0, '부산광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (105, '실내 클라이밍 체험기', '등반 장비를 추천합니다.', 0, '경기도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (106, '등반 기술 배우기', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '대전광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (107, '클라이밍 장비 추천', '등반 기술을 연습하는 법을 알아보세요.', 0, '강원도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (108, '클라이밍의 이점', '최고의 등반 기술을 배워보세요.', 0, '세종특별자치도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (109, '암벽 등반 초보자 가이드', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '전라남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (110, '클라이밍의 이점', '실내 클라이밍 체험 후기를 공유합니다.', 0, '광주광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (111, '암벽 등반 팁', '최고의 등반 기술을 배워보세요.', 0, '경상남도', 'coma3@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (112, '등반 파트너 찾기', '클라이밍이 주는 건강상의 이점을 소개합니다.', 0, '서울특별시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (113, '등반 파트너 찾기', '등반 장비를 추천합니다.', 0, '충청북도', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (114, '암벽 등반 팁', '등반 장비를 추천합니다.', 0, '대구광역시', 'coma2@naver.com');
INSERT INTO BOARD (BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_CNT, BOARD_LOCATION, BOARD_WRITER_ID) VALUES (115, '등반 기술 배우기', '대한민국에서 최고로 평가받는 클라이밍 루트입니다.', 0, '충청북도', 'coma2@naver.com');
--

