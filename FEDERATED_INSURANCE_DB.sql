CREATE DATABASE PROJECT;
USE PROJECT;
CREATE TABLE EMPLOYEE(
EMP_ID     INT          NOT NULL,
EMP_FNAME   VARCHAR(20),
EMP_LNAME   VARCHAR(20),
EMP_MI      VARCHAR(5),
EMP_SSN    VARCHAR(20),
EMP_STREET VARCHAR(20),
EMP_CITY   VARCHAR(20),
EMP_STATE  VARCHAR(5),   
EMP_ZIPCODE   INT,
EMP_PHONE   VARCHAR(15),
EMP_EMAIL  VARCHAR(30),
EMP_DOB    VARCHAR(10),
EMP_TYPE    VARCHAR(10),
EMP_POSITION  VARCHAR(10),
DEPT_ID    INT,
PRIMARY KEY(EMP_ID)
);

CREATE TABLE DEPARTMENT(
DEPT_ID    INT    NOT NULL,
DEPT_NAME   VARCHAR(30),
DEPT_MANAGER   VARCHAR(20),
EMP_ID     INT,
PRIMARY KEY(DEPT_ID),
FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);
CREATE TABLE TEAM(
TEAM_ID    INT    NOT NULL,
TEAM_NAME   VARCHAR(20),
TEAM_SUPERVISOR   VARCHAR(20),
EMP_ID     INT,
PRIMARY KEY(TEAM_ID),
FOREIGN KEY(EMP_ID) REFERENCES Employee(EMP_ID)
);
CREATE TABLE SALARY(
SAL_ID    INT    NOT NULL,
SAL_DESC   VARCHAR(20),
PROJECTED_SALARY DECIMAL(8,2),
ACTUAL_SALARY    DECIMAL(8,2),
SAL_RANGE      VARCHAR(20),
EMP_ID         INT,
GRADE_RATE     VARCHAR(10),
PRIMARY KEY(sal_id),
FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);
CREATE TABLE PROMOTION(
PROMO_ID    INT    NOT NULL,
PROMO_TITLE   VARCHAR(20),
LAST_PROMO_DATE   VARCHAR(10),
PROMO_DATE     VARCHAR(10),
EMP_ID       INT,
PRIMARY KEY(PROMO_ID),
FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);

CREATE TABLE PERFORMANCEREVIEW(
PR_ID    INT    NOT NULL,
CURRENTREVIEW_DATE   VARCHAR(10),
PREVIOUSREVIEW_DATE   VARCHAR(10),
FUTUREREVIEW_DATE   VARCHAR(10),
CURRENTREVIEW_GRADE   VARCHAR(10),
PREVIOUSREVIEW_GRADE   VARCHAR(10),
OVERALLPERFORMANCE_RATING     VARCHAR(10),
PERFORMANCE_FACTORS    VARCHAR(10),
PERFORMANCE_RESULT     VARCHAR(10),
PERFORMANCE_FEEDBACK   VARCHAR(30),
EMP_ID     INT,
PRIMARY KEY(PR_ID),
FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);


CREATE TABLE REPORT(
REPORT_ID    INT    NOT NULL,
REPORT_TITLE   VARCHAR(20),
PAY_AMOUNT   DECIMAL(8,2),
REPORT_GRADE     VARCHAR(10),
EMP_ID       INT,
PRIMARY KEY(REPORT_ID),
FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(emp_id)
);
CREATE TABLE PAYMENT(
PAY_ID    INT    NOT NULL,
PAY_DATE   VARCHAR(10), 
PAY_DESC     VARCHAR(10),
PAY_AMOUNT   DECIMAL(8,2),
EMP_ID       INT,
PRIMARY KEY(PAY_ID),
FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);

---------------------------------------------------------------
-- DATA FOR TABLE EMPLOYEE
---------------------------------------------------------------
-- INSERTING into EMPLOYEE
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (10045, 'Jones', 'Bryan', 'T','234121234', '210 Briargate Rd', 'Mankato', 'MN', 56001, '345-234-2344', 'jonesB@gmail.com', '02-12-1991', 'Salary', 'Supervisor', 300 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (10242, 'Kevin', 'Hart','', '235678645', '410 Rita Rd', 'Coon Rapids', 'MN', 55433, '234-987-0954', 'hartsK@gmail.com', '11-05-1998', 'Salary', 'CIO', 100 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (23423, 'Jimmy', 'Jones', 'A', '654345234', '10 Barzerk Dr', 'Manakto', 'MN', 56001, '453-204-7934', 'jimmyj@gmail.com', '05-22-1990', 'Hourly', 'Supervisor', 300 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (54674, 'Bryan', 'Delt','', '786567345', '44 Stadium Rd', 'Mankato', 'MN', 56001, '211-455-7554', 'bryanD@gmail.com', '02-20-1989', 'Salary', 'Staff', 400 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (23445, 'Kode', 'Gulf', 'T', '983234234', '221 Fancher Dr', 'Brooklyn Park', 'MN', 55429,'567-345-4544', 'KGulf@gmail.com', '01-24-1992', 'Salary', 'Supervisor', 300 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (34666, 'Rocky', 'Halt','', '876345976', '456 Kings Ave', 'Brooklyn Center', 'MN', 55430, '785-567-3454', 'rocky67@gmail.com', '04-20-1981', 'Hourly', 'Manager', 200 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (67434, 'Hanna', 'Roy','', '983246863', '643 Cypress Dr', 'Coon Rapids', 'MN', 55433, '678-896-3454', 'hannaR@gmail.com', '02-23-1983', 'Salary', 'Supervisor', 300 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (98213, 'Luke', 'Worm', 'C', '974245675', '234 Highland Rd', 'Mankato', 'MN', 56001, '123-456-7899', 'Worm00@gmail.com', '11-12-1986', 'Salary', 'Supervisor', 300 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (67812, 'Kane', 'Lost','', '974224578', '456 Lane Rd', 'Bloomington', 'MN', 55122, '645-345-6787', 'kane_sa@gmail.com', '02-12-1967', 'Salary', 'Staff', 400 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (23421, 'Jenny', 'Forest','', '239432764', '879 Drive Ave', 'Bloomington', 'MN', 55122, '344-456-4332', 'forest-wood@gmail.com', '06-22-1987', 'Salary', 'Supervisor', 400 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (13432, 'Love', 'Taylor','', '630083435', '213 Single Dr', 'Anoka', 'MN', 55303, '678-965-3455', 'taylor_love@gmail.com', '12-04-1992', 'Salary', 'Supervisor', 100 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (99332, 'Matte', 'Black', 'R', '983245093', '23 Farland Rd', 'Maple Groove', 'MN', 55311, '675-234-5655', 'matte12B@gmail.com', '03-21-1990', 'Hourly', 'Manager', 300 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (40023, 'King', 'Cole','', '673356986', '235 Antonio Ave', 'Houston', 'TX',34005, '546-345-2354', 'King0C@gmail.com', '04-09-1999', 'Salary', 'Staff', 400 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (53234, 'Yen', 'Coral','', '123987453', '980 Green Dr', 'Coon Rapids', 'MN', 55433, '675-675-5633', 'yen_coral@gmail.com', '11-19-1982', 'salary', 'Manager', 100 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (80933, 'Zen', 'Dale', '','568345937', '212 Larry Rd', 'Brooklyn Center', 'MN', 55430, '434-657-5688', 'zendale46@gmail.com', '10-26-1987', 'Salary', 'Supervisor', 200 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (79232, 'William', 'Amen','', '980393733', '675 Cory Rd', 'Maple Groove', 'MN', 55311, '987-454-3443', 'william@gmail.com', '04-29-1988', 'Hourly', 'Supervisor', 100 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (34233, 'Astro', 'World','', '456234234', '323 Lopez Ave', 'Brooklyn Park', 'MN', 55429, '234-456-5671', 'astroWorld@gmail.com', '08-06-1993', 'Salary', 'Staff', 100 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (89734, 'Nick', 'Seth','', '682453467', '455 Irving Rd', 'Brooklyn Center', 'MN', 55430, '654-546-8767', 'nick_seth46@gmail.com', '03-25-1990', 'Salary', 'Staff', 200 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (33200, 'Hellen', 'Akini','', '830808472', '5900 65th Ave N', 'brooklyn Park', 'MN', 55429, '7633005541', 'akinihellen@gmail.com', '03-15-1990', 'Salary', 'Staff', 200 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (89735, 'Dudee', 'Philips', 'H','635986452', '750 Zane Ave', 'Brooklyn Park', 'MN', 55430, '7632993471', 'philipsdudee@gmail.com', '10-31-1990', 'Salary', 'Staff', 200 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (89654, 'Joan',  'Sonpon', 'W', '530675421', '1323 Pohl Rd', 'Mankato', 'MN', 56001, '7635540271', 'sonponjoan@gmail.com', '09-20-1994', 'Salary', 'Staff', 200 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (89655, 'Hawa', 'Philips', 'A', '4352229453', '1517 80th Ave N', 'Brooklyn Park', 'MN', 55444, '7632915024', 'philipshawa@gmail.com', '09-10-1992', 'Salary', 'Staff', 200 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (89331, 'Theodosia', 'Woto', 'B', '230409856', '7200 Brooklyn BLVD', 'Brooklyn Center', 'MN', 55428, '6125538360', 'theodosiawoto@gmail.com', '11-04-1985', 'Salary', 'Staff', 200 );
INSERT INTO EMPLOYEE(EMP_ID, EMP_FNAME, EMP_LNAME, EMP_MI, EMP_SSN, EMP_STREET, EMP_CITY, EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID)
VALUES (89332, 'Anderw', 'Anderson','', '1385507486', '7950 Zane Ave', 'Brooklyn Park', 'MN', 55429, '6122284538', 'ananderson@gmail.com', '09-28-1983', 'Salary', 'Staff', 200 );

-----------------------------------------------------------
-- END DATA FOR TABLE EMPLOYEE

------------------------------------------------------------
-- DATA FOR TABLE DEPARTMENT
-------------------------------------------------------------
-- INSERTING into DEPARTMENT
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (300, 'Human Resource', 'Jones Kollie', 10045 );
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (100, 'Customer Service', 'Alexandra Anderson', 10242);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (301, 'Human Resource', 'Jones Kollie', 23423);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (402, 'Information Technology', 'Micheal Wells', 54674);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (304, 'Human Resource', 'Jones Kollie', 23445);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (206, 'Advertising', 'Sarah Wells', 34666);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (367, 'Human Resource', 'Jones Kollie',  67434);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (334, 'Human Resource', 'Jones Kollie', 98213);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (479, 'Information Technology', 'Micheal wells', 67812);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (445, 'Information Technology', 'Micheal Wells', 23421);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (133, 'Customer Service', 'Alexandra Anderson', 13432);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (356, 'Human resource', 'Jones Kollie', 99332);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (455, 'Information Technology', 'Micheal Wells', 40023);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (106, 'Customer Service', 'Alexandra Anderson', 53234);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (278, 'Advertising', 'Sarah Wells', 80933);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (198, 'Customer Service', 'Alexandra Anderson', 79232 );
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (134, 'Customer Service', 'Alexandra Anderson', 34233);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (224, 'Advertising', 'Sarah Wells', 89734);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (266, 'Advertising', 'Sarah Wells', 33200);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (388, 'Human Resource', 'Jones Kollie',89735);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (333, 'Human Resource', 'Jones Kollie', 89654);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (320, 'Human Resource', 'Jones Kollie', 89655);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (444, 'Information Technology', 'Micheal Wells', 89331);
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_NAME, DEPT_MANAGER, EMP_ID)
VALUES (434, 'Information Technology', 'Micheal Wells', 89332);

-----------------------------------------------
-- END DATA FOR TABLE DEPARTMENT

------------------------------------------------
-- DATA FOR TABLE TEAM
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (545, 'Brute Force', 'Bruce Johnson', 10045 );
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (228, 'Chaos', 'Mary kamara', 10242);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (128, 'Defenders', 'Johnson Fallah', 23423);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (127, 'Defenders', 'Johnson Fallah', 54674);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (222, 'Chaos', 'Mary kamara', 23445);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (540, 'Brute Force', 'Bruce Johnson', 34666);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (354, 'Enforcers', 'Thomas Wells',  67434);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (486, 'Tech Warriors', 'Jonathan Hardwick', 98213);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (481, 'Tech Warriors', 'Jonathan Hardwick', 67812);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (351, 'Enforcers', 'Thomas Wells', 23421);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (121, 'Defenders', 'Johnson Fallah', 13432);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (123, 'Defenders', 'Johnson Fallah', 99332);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (558, 'Brute Force', 'Bruce Johnson', 40023);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (587, 'Brute Force', 'Bruce Johnson', 53234);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (289, 'Chaos', 'Mary Kamara', 80933);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (254, 'Chaos', 'Mary Kamara', 79232 );
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (488, 'Tech Warriors', 'Jonathan Hardwick', 34233);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (321, 'Enforcers', 'Thomas Wells', 89734);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (334, 'Enforcers', 'Thomas Wells', 33200);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (487, 'Tech Warriors', 'Jonathan Hardwick',89735);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (100, 'Defenders', 'Johnson Fallah', 89654);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (542, 'Brute Force', 'Bruce Johnson', 89655);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (543, 'Brute Force', 'Bruce Johnson', 89331);
INSERT INTO TEAM(TEAM_ID, TEAM_NAME, TEAM_SUPERVISOR, EMP_ID )
VALUES (549, 'Brute Force', 'Bruce Johnson', 89332);
--------------------------------------------------------------
-- END DATA FOR TABLE TEAM

---------------------------------------------------------------
-- DATA FOR TABLE SALARY
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (001, '', 55000, 45000, '41,000-64,000', 10045,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (002, '', 50000, 40000,'39,000-51,000', 10242,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (003, '',25000, 20000, '15,000-30,000',23423,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (004, '', 35000, 30000, '40,000-60,000', 54674,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (005, '', 55000, 45000, '39,000-73,000', 23445,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (006, '', 45000, 40000, '39,000-55,000', 34666,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (007, '', 55000, 45000, '41,000-64,000', 67434,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (008, '', 60000, 50000, '39,000-73,000', 98213,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (009, '', 60000, 50000, '39,000-60,000', 67812,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (010, '', 45000, 35000, '39,000-50,000', 23421,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (011, '', 35000, 25000, '15,000-40,000', 13432,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (012, '', 40000, 30000, '25,000-50,000', 99332,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY,ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (013, '', 880000, 50000, '40,000-85,000', 40023,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (014, '', 45000, 40000, '30,000-50,000', 53234,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (015, '', 30000, 25000, '15,000-35,000', 80933,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (016, '', 55000, 40000, '39,000-55,000', 79232,'' );
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (017, '', 55000, 45000, '39,000-60,000', 34233,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (018, '', 60000, 55000, '40,000-70,000',  89734,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (019, '', 50000, 40000, '39,000-60,000', 33200,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (020, '', 60000, 50000, '40,000-65,000', 89735,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (021, '', 45000,40000, '40,000-60,000',  89654,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (022, '', 35000, 30000, '29,000-40,000', 89655,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (023, '', 55000, 50000, '50,000-70,000', 89331,'');
INSERT INTO SALARY(SAL_ID, SAL_DESC, PROJECTED_SALARY, ACTUAL_SALARY, SAL_RANGE, EMP_ID, GRADE_RATE)
VALUES (024, '', 60000, 55000, '50,000-80,000', 89332,'');
-----------------------------------------------------------------
-- END DATA FOR TABLE SALARY
-----------------------------------------------------------------

------------------------------------------------------------------
-- DATA FOR TABLE PROMOTION
------------------------------------------------------------------
-- INSERTING into PROMOTION
INSERT INTO PROMOTION(PROMO_ID, PROMO_TITLE, LAST_PROMO_DATE, PROMO_DATE, EMP_ID)
VALUES(10052,'', '09-20-2019', '01-15-2020', 89331);
INSERT INTO PROMOTION(PROMO_ID, PROMO_TITLE, LAST_PROMO_DATE, PROMO_DATE, EMP_ID)
VALUES(10050, '', '07-05-2019', '03-05-2020', 89655);
INSERT INTO PROMOTION(PROMO_ID, PROMO_TITLE, LAST_PROMO_DATE, PROMO_DATE, EMP_ID)
VALUES(10051, '', '07-05-2019', '03-05-2020', 89654);
INSERT INTO PROMOTION(PROMO_ID, PROMO_TITLE, LAST_PROMO_DATE, PROMO_DATE, EMP_ID)
VALUES(10053, '','09-20-2019', '01-15-2020', 89735);

----------------------------------------------------------------
-- END DATA FOR TABLE PROMOTION
----------------------------------------------------------------


----------------------------------------------------------------
-- DATA FOR TABLE PERFORMANCE_REVIEW
-----------------------------------------------------------------
-- INSERTING into PERFORMANCE_REVIEW 
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES(221, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'SC','','','','',10045);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES(222, '01-05-18', '11-12-17', '07-15-2019', 'NI', 'EC', '', '','','', 10242);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (223, '01-05-18', '11-12-17', '07-15-2019', 'OP', 'SC','','','','',23423);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (220, '01-05-18', '11-12-17', '07-15-2019', 'SC', 'SC+','','','','', 54674);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (225, '01-05-18', '11-12-17', '07-15-2019', 'RC', 'SC','','','','',23445);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (226, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'SC-','','','','',34666);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (227, '01-05-18', '11-12-17', '07-15-2019', 'OP', 'SC','','','','',67434);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (228, '01-05-18', '11-12-17', '07-15-2019', 'SC', 'SC','','','','',98213);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (229, '01-05-18', '11-12-17', '07-15-2019', 'SC', 'SC','','','','',67812);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (230, '01-05-18', '11-12-17', '07-15-2019', 'OP', 'NI','','','','',23421);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (231, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'SC','','','','',13432);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (232, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'SP','','','','',99332);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (233, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'EC','','','','',40023);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (234, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'EC','','','','',53234);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (235, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'OP','','','','',80933);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (236, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'SC','','','','',79232);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (237, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'EC','','','','',34233);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (238, '01-05-18', '11-12-17', '07-15-2019', 'SC', 'SC','','','','',89734);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (239, '01-05-18', '11-12-17', '07-15-2019', 'SP', 'NI','','','','',33200);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (240, '01-05-18', '11-12-17', '07-15-2019', 'UP', 'SC','','','','',89735);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (241, '01-05-18', '11-12-17', '07-15-2019', 'SC-', 'SC','','','','',89654);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (242, '01-05-18', '11-12-17', '07-15-2019', 'SC+', 'SC','','','','',89655);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (243, '01-05-18', '11-12-17', '07-15-2019', 'EC', 'SC','','','','',89331);
INSERT INTO PERFORMANCEREVIEW(PR_ID, CURRENTREVIEW_DATE, PREVIOUSREVIEW_DATE, FUTUREREVIEW_DATE, CURRENTREVIEW_GRADE, PREVIOUSREVIEW_GRADE, OVERALLPERFORMANCE_RATING, PERFORMANCE_FACTORS, PERFORMANCE_RESULT, PERFORMANCE_FEEDBACK, EMP_ID)
VALUES (244, '01-05-18', '11-12-17', '07-15-2019', 'SC', 'SC-','','','','',89332);


---------------------------------------------------------------
-- END DATA FOR TABLE PERFORMANCE_REVIEW
---------------------------------------------------------------

----------------------------------------------------------------
-- DATA FOR TABLE REPORT 
-----------------------------------------------------------------
-- INSERTING into REPORT
INSERT INTO REPORT(REPORT_ID, REPORT_TITLE, PAY_AMOUNT, REPORT_GRADE, EMP_ID )
VALUES(101, 'Salary Report');
INSERT INTO REPORT(REPORT_ID, REPORT_TITLE, PAY_AMOUNT, REPORT_GRADE, EMP_ID )
VALUES(102, 'Overall Performance Rating');
INSERT INTO REPORT(REPORT_ID, REPORT_TITLE, PAY_AMOUNT, REPORT_GRADE, EMP_ID )
VALUES(103, 'Performance Review Report');
INSERT INTO REPORT(REPORT_ID, REPORT_TITLE, PAY_AMOUNT, REPORT_GRADE, EMP_ID )
VALUES(101, 'Salary Report');

---------------------------------------------------------------
-- END DATA FOR TABLE REPORT
---------------------------------------------------------------

----------------------------------------------------------------

-- DATA FOR TABLE PAYMENT
---------------------------------------------------------------
-- INSERTING into PAYMENT
INSERT INTO PAYMENT(PAY_ID, PAY_DATE, PAY_DESC, PAY_AMOUNT, EMP_ID)
VALUES(10170, '30-JAN-2016','','');

----------------------------------------------------------------
-- END DATA FOR TABLE PAYMENT
-----------------------------------------------------------------

-----------------------------------------------------------------

     




SELECT EMP_FNAME,EMP_LNAME, EMP_MI, EMP_FNAME+' '+COALESCE(EMP_MI,'')+' '+EMP_LNAME AS EMP_NAME FROM EMPLOYEE;



/**List employee INFO**/
SELECT EMP_ID, EMP_FNAME,EMP_MI,EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE,EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE;

/**List all employees whith their TEAMS**/
SELECT DISTINCT E.EMP_ID,T.TEAM_ID, E.EMP_FNAME,E.EMP_MI,E.EMP_LNAME, T.TEAM_NAME, T.TEAM_SUPERVISOR
FROM EMPLOYEE E
INNER JOIN TEAM T 
ON T.EMP_ID = E.EMP_ID;

/**List all employees whith their SALARY**/
SELECT DISTINCT E.EMP_ID,S.SAL_ID, E.EMP_FNAME,E.EMP_MI,E.EMP_LNAME, S.SAL_DESC, S.PROJECTED_SALARY, S.ACTUAL_SALARY, S.SAL_RANGE
FROM EMPLOYEE E
INNER JOIN SALARY S 
ON E.EMP_ID = S.EMP_ID;

/**List all employees whith their PERFORMANCE REVIEW**/
SELECT DISTINCT E.EMP_ID,P.PR_ID, E.EMP_FNAME,E.EMP_MI,E.EMP_LNAME, P.CURRENTREVIEW_DATE, P.PREVIOUSREVIEW_DATE,P.FUTUREREVIEW_DATE,P.CURRENTREVIEW_GRADE,P.PREVIOUSREVIEW_GRADE
FROM EMPLOYEE E
INNER JOIN PERFORMANCEREVIEW P
ON E.EMP_ID = P.EMP_ID;

/**List all employees with their DEPARTMENT**/
SELECT DISTINCT E.EMP_ID, E.EMP_FNAME,E.EMP_MI,E.EMP_LNAME,D.DEPT_ID, D.DEPT_NAME,D.DEPT_MANAGER
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D 
ON E.EMP_ID = D.EMP_ID;

/**List all employee with employee type salary**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE EMP_TYPE= 'SALARY';

/**List all employee with employee type hourly**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE EMP_TYPE= 'HOURLY';

/**List all employee with employee position CIO**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE EMP_POSITION= 'CIO';

/**List all employee with employee position as manager**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE EMP_POSITION= 'MANAGER';

/**List all employee with employee type supervisor**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE EMP_POSITION= 'SUPERVISOR';

/**List all employee with employee position staff**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE EMP_POSITION= 'STAFF';

/**List all employee whose department is 100**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE DEPT_ID= '100';

/**List all employee whose department is 200**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE DEPT_ID= '200';

/**List all employee whose department is 300**/
SELECT EMP_ID,  EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE DEPT_ID= '300';

/**List all employee whose department is 400**/
SELECT EMP_ID, EMP_FNAME,EMP_MI, EMP_LNAME,EMP_STREET,EMP_CITY,EMP_STATE, EMP_ZIPCODE, EMP_PHONE, EMP_EMAIL, EMP_DOB, EMP_TYPE, EMP_POSITION, DEPT_ID
FROM EMPLOYEE
WHERE DEPT_ID LIKE '4%';

/**EMPLOYEE information**/
SELECT EMP_ID,EMP_FNAME,EMP_LNAME,EMP_MI,EMP_STREET,EMP_CITY,EMP_STATE,EMP_ZIPCODE   ,EMP_PHONE,EMP_EMAIL,EMP_DOB,EMP_TYPE,EMP_POSITION
FROM Employee;

SELECT EMP_FNAME,EMP_LNAME, EMP_MI, EMP_FNAME+' '+COALESCE(EMP_MI,'')+' '+EMP_LNAME AS EMP_NAME FROM EMPLOYEE;

/**VIEW PERFORMANCE REPORT**/
SELECT E.EMP_ID,E.EMP_FNAME,E.EMP_MI,E.EMP_LNAME,E.EMP_DOB, E.EMP_TYPE, E.EMP_POSITION, P.CURRENTREVIEW_GRADE, P.PREVIOUSREVIEW_GRADE, P.CURRENTREVIEW_DATE
FROM EMPLOYEE E
INNER JOIN PERFORMANCEREVIEW P 
ON E.EMP_ID = E.EMP_ID;

