-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE user_info(
	id VARCHAR(100) CONSTRAINT user_info_id_pk PRIMARY KEY,
	pwd VARCHAR(100) CONSTRAINT user_info_pwd_nn NOT NULL,
	email VARCHAR(100),
	profile VARCHAR(100), -- 프로필 이미지 경로를 저장할 칼럼
	regdate DATE -- 가입일
);

-- 업로드된 파일의 정보를 저장할 테이블
CREATE TABLE board_file(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(100) NOT NULL,
	title VARCHAR2(100) NOT NULL,
	orgFileName VARCHAR2(100) NOT NULL, --원본파일명
	saveFileName VARCHAR2(100) NOT NULL,--서버에 실제로 저장된 파일명
	fileSize NUMBER NOT NULL,--파일의 크기
	regdate DATE
);

CREATE SEQUENCE board_file_seq;

-- 게시글을 저장할 테이블
CREATE TABLE board_cafe(
	num NUMBER PRIMARY KEY, --글번호
	writer VARCHAR2(100) not null, --작성자(로그인 된 아이디)
	title VARCHAR2(100) not null, -- 제목
	content CLOB, -- 글내용
	viewcount NUMBER,
	regdate DATE
);
-- 게시글의 번호를 얻어낼 시퀀스
CREATE SEQUENCE board_cafe_seq;

-- 어떤 세선에서 몇번 글을 읽었는지 정보를 저장할 테이블
CREATE TABLE readed_data(
	num NUMBER REFERENCES board_cafe(num),
	session_id VARCHAR2(50)
)