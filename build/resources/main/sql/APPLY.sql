-- apply 테이블 삭제(초기화)
DROP TABLE APPLY;


-- 테이블 생성
CREATE TABLE APPLY
(
    APPLY_NUM      INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    APPLY_MENTORID VARCHAR(20) NOT NULL UNIQUE KEY,
    APPLY_MENTEEID VARCHAR(20),
    APPLY_MSG      VARCHAR(1000),
    APPLY_AOR      INT DEFAULT 0
);

-- 테이블 체크
SELECT *
FROM APPLY;

COMMIT;

-- 테스트
INSERT INTO APPLY
    (APPLY_MENTORID, APPLY_MENTEEID, APPLY_MSG)
VALUES ('mentor', 'mentee', '안녕하세요')