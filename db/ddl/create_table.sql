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
    p_number tinyint,
    problem blob
);
