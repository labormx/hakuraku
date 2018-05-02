DROP TABLE IF EXISTS m_exam;
DROP TABLE IF EXISTS m_exam_problem_header;
DROP TABLE IF EXISTS m_exam_problem_detail;
DROP TABLE IF EXISTS t_practice_group;
DROP TABLE IF EXISTS t_practice_group_exam_rel;
DROP TABLE IF EXISTS t_practice;
DROP TABLE IF EXISTS t_practice_report;

-- 試験マスタ
CREATE TABLE m_exam
(
	id int NOT NULL,
	name varchar(100)
);
-- 試験問題マスタ
CREATE TABLE m_exam_problem_header
(
    id int NOT NULL,
    exam_id int NOT NULL,
    description varchar(100),
    year year,
    number tinyint
);
-- 試験問題詳細マスタ
CREATE TABLE m_exam_problem_detail
(
    id int NOT NULL,
    exam_problem_id int NOT NULL,
    part char(1),
    p_number tinyint,-- 問題番号
    problem blob,
    p_type char(1) -- 1:知識型, 2:推論型
);
-- 演習グループトラン
CREATE TABLE t_practice_group
(
    id int NOT NULL,
    desctiprion varchar(100)
);
-- 演習グループ問題関連トラン
CREATE TABLE t_practice_group_exam_rel
(
    id int NOT NULL,
    practice_group_id int NOT NULL,
    exam_problem_detail_id int NOT NULL
);

-- 演習トラン
CREATE TABLE t_practice
(
    id int NOT NULL,
    practice_group_id int NOT NULL,
    exam_problem_detail_id int NOT NULL,
    practice_date TIMESTAMP,
    result TINYINT -- 0:不正解, 1:正解
);
-- 演習レポート
CREATE TABLE t_practice_report
(
    exam_problem_detail_id int NOT NULL,
    total_times int NOT NULL,
    correct_times int NOT NULL,
    latest_practice_id int NOT NULL,
    stataus char(1)
);