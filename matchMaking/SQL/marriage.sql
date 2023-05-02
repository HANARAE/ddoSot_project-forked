DROP TABLE men;

CREATE TABLE men (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    age NUMBER(3) NOT NULL,
    job VARCHAR(50) NOT NULL,
    salary NUMBER(15) NOT NULL,
    grade VARCHAR2(20) NOT NULL,
    count NUMBER(1) DEFAULT 3 NULL,
    partner_id VARCHAR2(20) DEFAULT null,
    manager_num NUMBER(3)
);

DROP SEQUENCE men_seq;

CREATE SEQUENCE men_seq
    START WITH 106
    NOCACHE;

DROP TABLE women;

CREATE TABLE women (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    age NUMBER(3) NOT NULL,
    job VARCHAR(50) NOT NULL,
    salary NUMBER(15) NOT NULL,
    grade VARCHAR2(20) NOT NULL,
    count NUMBER(1) DEFAULT 3 NULL,
    partner_id VARCHAR2(20) DEFAULT null,
    manager_num NUMBER(3)
);

DROP SEQUENCE women_seq;

CREATE SEQUENCE women_seq
    START WITH 106
    NOCACHE;

DROP TABLE matching;

CREATE TABLE matching (
    match_num NUMBER PRIMARY KEY,
    men_id VARCHAR(255) UNIQUE NOT NULL,
    women_id VARCHAR(255) UNIQUE NOT NULL,
    manager_num NUMBER NOT NULL
);

CREATE SEQUENCE matching_seq
    NOCACHE;

DROP TABLE manager;

CREATE TABLE manager (
    manager_num NUMBER PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    performance NUMBER NULL
);

DROP SEQUENCE manager_seq;
CREATE SEQUENCE manager_seq
    START WITH 4
    NOCACHE;

--ALTER TABLE men ADD FOREIGN KEY(partner_id) REFERENCES matching(women_id);
--
--ALTER TABLE women ADD FOREIGN KEY(partner_id) REFERENCES matching(men_id);
--
--ALTER TABLE matching ADD FOREIGN KEY(men_id) REFERENCES men(id);
--
--ALTER TABLE matching ADD FOREIGN KEY(women_id) REFERENCES women(id);
--
--ALTER TABLE matching ADD FOREIGN KEY(manager_num) REFERENCES manager(manager_num);

INSERT INTO men
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'A-101',
    '��ö��',
    28,
    '������',
    60000000,
    '���',
    3,
    1);
    
INSERT INTO men
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'A-102',
    'ȫ�浿',
    30,
    '����',
    0,
    '���',
    3,
    2);
INSERT INTO men
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'A-103',
    '�����',
    30,
    '�л�',
    0,
    '�����',
    3,
    3);
INSERT INTO men
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'A-104',
    '�ڼ���',
    27,
    '�౸����',
    30000000,
    '���',
    3);
INSERT INTO men
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'A-105',
    '������',
    30,
    'CEO',
    1000000000,
    '���̾�',
    3,
    1);
INSERT INTO women
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'B-101',
    '�迵��',
    30,
    '�繫��',
    50000000,
    '���',
    3,
    2);
INSERT INTO women
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'B-102',
    '���ǻ�',
    33,
    '�ǻ�',
    80000000,
    '���̾�',
    3,
    3);
INSERT INTO women
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'B-103',
    '������',
    28,
    '����',
    4000000,
    '���',
    3,
    1);
INSERT INTO women
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'B-104',
    '������',
    25,
    '���',
    30000000,
    '���',
    3,
    2);
INSERT INTO women
(id, name, age, job, salary, grade, count, manager_num)
VALUES (
    'B-105',
    '�̳���',
    28,
    '������',
    40000000,
    '���',
    3,
    3);

INSERT INTO manager
VALUES (1, '����', 3);
INSERT INTO manager
VALUES (2, '������', 2);
INSERT INTO manager
VALUES (3, '������', 3);

<<<<<<< HEAD
commit;
=======
COMMIT;
>>>>>>> d3e37dc47ec838c931194a445e6257b4cd9db801
