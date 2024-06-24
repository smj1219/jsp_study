-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE user_info(
	id VARCHAR(100) CONSTRAINT user_info_id_pk PRIMARY KEY,
	pwd VARCHAR(100) CONSTRAINT user_info_pwd_nn NOT NULL,
	email VARCHAR(100),
	profile VARCHAR(100), -- 프로필 이미지 경로를 저장할 칼럼
	regdate DATE -- 가입일
);