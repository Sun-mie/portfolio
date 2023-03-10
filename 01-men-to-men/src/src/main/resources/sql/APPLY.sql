-- apply 테이블 삭제(초기화)
DROP TABLE APPLY;


-- 테이블 생성
CREATE TABLE APPLY
(
    APPLY_NUM      INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    APPLY_MENTORID VARCHAR(20) NOT NULL,
    APPLY_MENTEEID VARCHAR(20) NOT NULL,
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


SELECT A.APPLY_NUM, A.APPLY_MENTEEID, A.APPLY_AOR, A.APPLY_MSG  FROM APPLY A INNER JOIN STUDY B ON A.APPLY_MENTORID = B.STUDY_USER_ID WHERE A.APPLY_MENTORID = 'mentor' AND A.APPLY_AOR = 1 ORDER BY A.APPLY_MENTEEID DESC

SELECT COUNT(APPLY_NUM) FROM APPLY WHERE APPLY_MENTORID = 'mentor' AND APPLY_AOR = 1

SELECT COUNT(APPLY_NUM)  FROM APPLY A INNER JOIN STUDY B ON A.APPLY_MENTORID = B.STUDY_USER_ID WHERE B.STUDY_NUM = 243 AND A.APPLY_MENTEEID = 'user03'