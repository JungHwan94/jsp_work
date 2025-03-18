create table member(
    id varchar2(20) primary key,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    gender char(1),
    birthday char(6),
    email varchar2(30),
    zipcode char(5),
    address varchar2(100),
    detailAddress varchar2(50),
    hobby char(5),
    job varchar2(30)
);
INSERT INTO member (id, pwd, name, gender, birthday, email, zipcode, address, detailAddress, hobby, job)  
VALUES ('user01', 'pass1234', '홍길동', 'M', '990101', 'hong@example.com', '12345', '서울시 강남구', '101호', '축구', '개발자');

INSERT INTO member (id, pwd, name, gender, birthday, email, zipcode, address, detailAddress, hobby, job)  
VALUES ('user02', 'secure5678', '김영희', 'F', '020305', 'kim@example.com', '54321', '부산시 해운대구', '202호', '독서', '디자이너');

INSERT INTO member (id, pwd, name, gender, birthday, email, zipcode, address, detailAddress, hobby, job)  
VALUES ('user03', 'test9999', '박철수', 'M', '950712', 'park@example.com', '67890', '대구시 중구', '303호', '음악', '교사');

commit;

ALTER TABLE MEMBER MODIFY HOBBY VARCHAR2(100);
