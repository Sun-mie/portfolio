-- 테이블 삭제(초기화)
DROP TABLE HOMEWORK;

-- 테이블 생성
CREATE TABLE HOMEWORK
(
	HW_NUM INT AUTO_INCREMENT, -- PK
    HW_STUDY_NUM INT, -- 스터디룸 번호
    HW_USER_ID VARCHAR(30), -- HomeWork 제출자
    HW_CONTENT VARCHAR(3000), -- 내용
    HW_REG_DATE DATETIME, -- 제출일, 수정일
    HW_UUID VARCHAR(200), -- 파일명 중복방지 id
    HW_FILENAME VARCHAR(200), -- 제출 파일 이름
    HW_UPLOAD_PATH VARCHAR(200), -- 서버에 저장된 경로
    PRIMARY KEY(HW_NUM)
);
SELECT * FROM HOMEWORK WHERE HW_UPLOAD_PATH like '%2022\\%';
-- 테이블 확인
SELECT * FROM HOMEWORK;

SELECT DATE_FORMAT(NOW(), '%Y\%m\%d');

-- 오늘 저장된 파일 가져오기
SELECT * FROM HOMEWORK WHERE HW_UPLOAD_PATH LIKE CONCAT('%',  DATE_FORMAT(NOW(), '%Y\\%m\\%d'), '%') ESCAPE '|';

-- 어제 저장된 파일 가져오기
SELECT * FROM HOMEWORK WHERE HW_UPLOAD_PATH LIKE CONCAT('%',  DATE_FORMAT(DATE_ADD(NOW(), INTERVAL -1 DAY), '%Y\\%m\\%d'), '%') ESCAPE '|';

-- 커밋
COMMIT;
