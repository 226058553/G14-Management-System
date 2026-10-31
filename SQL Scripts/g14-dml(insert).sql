REM   Script: G14-DML(INSERT)
REM   Script that inserts values into G14 tables

-- STEP: 1.null



INSERT INTO PATIENTS
VALUES ('P002','JANE','DOE','0620017894');




-- STEP: 2.null



INSERT INTO PATIENTS
VALUES ('P001','JOHN','DOE','0720017896');




-- STEP: 3.null



INSERT INTO PATIENTS
VALUES ('P004','LILY','SMITH','0147852369');




-- STEP: 4.null



INSERT INTO PATIENTS
VALUES ('P003','JOSE','FLICK','0745236987');




-- STEP: 5.null



INSERT INTO PATIENTS
VALUES ('P006','KATLEGO','DUBE','369963258');




-- STEP: 6.null



INSERT INTO PATIENTS
VALUES ('P005','WILL','FOSTER','3216547899');




-- STEP: 7.null



INSERT INTO PATIENTS
VALUES ('P009','BIG','JOHN','3217896540');




-- STEP: 8.null



INSERT INTO PATIENTS
VALUES ('P008','KATE','NDLOVU','2587419630');




-- STEP: 9.null



INSERT INTO PATIENTS
VALUES ('P007','MINKATEKO','MAHLANGU','1478523690');




-- STEP: 10.null



INSERT INTO STAFF
VALUES ('SD001', 'Doctor', 'DR N NAIDOO', '1478523690');




-- STEP: 11.null



INSERT INTO STAFF
VALUES ('SN001 ', 'Nurse', 'L.MAHLANGU ', '0789825530');




-- STEP: 12.null



INSERT INTO STAFF
VALUES ('SN002 ', 'Nurse', 'MN.SMITH ', '0780789681');




-- STEP: 13.null



INSERT INTO STAFF
VALUES (' SN003', 'Nurse', 'G.OLESENG ', '0748596321');




-- STEP: 14.null



INSERT INTO STAFF
VALUES (' SD003', 'Dcotor', 'DR J.DOE ', '3698520147');




-- STEP: 15.null



INSERT INTO STAFF
VALUES (' SD002', 'Doctor', 'DR.L.SMITH ', '0147741025');




-- STEP: 16.null



INSERT INTO STAFF
VALUES (' SA002', 'Administrator', 'K.NAUME ', '3217896691');




-- STEP: 17.null



INSERT INTO STAFF
VALUES (' SR001', 'Receptionist', 'L.HOLLY ', '9632587410');




-- STEP: 18.null



INSERT INTO STAFF
VALUES (' SA001', 'Administrator', 'N.MOKOENA ', '3698520147');




-- STEP: 19.null



INSERT INTO WARD VALUES ('W01', 'General');




-- STEP: 20.null



INSERT INTO WARD VALUES ('W02', 'Surgical');




-- STEP: 21.null



INSERT INTO WARD VALUES ('W03', 'ICU');




-- STEP: 22.null



INSERT INTO ROOMS VALUES ('R01', '101', 'W01', 'Occupied');




-- STEP: 23.null



INSERT INTO ROOMS VALUES ('R03', '102', 'W01', 'Available');




-- STEP: 24.null



INSERT INTO ROOMS VALUES ('R02', '201', 'W02', 'Occupied');




-- STEP: 25.null



INSERT INTO ROOMS VALUES ('R04', '301', 'W03', 'Occupied');




-- STEP: 26.null



INSERT INTO ROOMS VALUES ('R05', '202', 'W02', 'Available');




-- STEP: 27.null



INSERT INTO APPOINTMENTS
VALUES ('A001','P001',TO_DATE('01-04-2026','DD-MM-YYYY'),'08:00','Completed');




-- STEP: 28.null



INSERT INTO APPOINTMENTS
VALUES ('A002','P002',TO_DATE('03-04-2026','DD-MM-YYYY'),'09:30','Completed');




-- STEP: 29.null



INSERT INTO APPOINTMENTS
VALUES ('A003','P003',TO_DATE('05-04-2026','DD-MM-YYYY'),'10:00','Completed');




-- STEP: 30.null



INSERT INTO APPOINTMENTS
VALUES ('A004','P004',TO_DATE('08-04-2026','DD-MM-YYYY'),'11:00','Scheduled');




-- STEP: 31.null



INSERT INTO APPOINTMENTS
VALUES ('A007','P007',TO_DATE('11-04-2026','DD-MM-YYYY'),'15:00','Cancelled');




-- STEP: 32.null



INSERT INTO APPOINTMENTS
VALUES ('A005','P005',TO_DATE('09-04-2026','DD-MM-YYYY'),'13:00','Completed');




-- STEP: 33.null



INSERT INTO APPOINTMENTS
VALUES ('A006','P006',TO_DATE('10-04-2026','DD-MM-YYYY'),'14:30','Scheduled');




-- STEP: 34.null



INSERT INTO ADMISSIONS
VALUES ('AD001','A001','P001','R01',
        TO_DATE('01-04-2026','DD-MM-YYYY'),
        TO_DATE('05-04-2026','DD-MM-YYYY'));




-- STEP: 35.null



INSERT INTO APPOINTMENTS
VALUES ('A008','P008',TO_DATE('12-04-2026','DD-MM-YYYY'),'09:00','Completed');




-- STEP: 36.null



INSERT INTO ADMISSIONS
VALUES ('AD002','A002','P002','R02',
        TO_DATE('03-04-2026','DD-MM-YYYY'),
        TO_DATE('07-04-2026','DD-MM-YYYY'));




-- STEP: 37.null



INSERT INTO ADMISSIONS
VALUES ('AD003','A005','P005','R04',
        TO_DATE('09-04-2026','DD-MM-YYYY'),
        TO_DATE('12-04-2026','DD-MM-YYYY'));




-- STEP: 38.null



INSERT INTO TREATMENTS
VALUES ('T001','A001','SD001',
        'Hypertension',
        'Blood pressure treatment and monitoring');




-- STEP: 39.null



INSERT INTO TREATMENTS
VALUES ('T002','A001','SN001',
        'Observation',
        'Patient vital signs monitored');




-- STEP: 40.null



INSERT INTO TREATMENTS
VALUES ('T003','A002','SD002',
        'Influenza',
        'Antiviral treatment prescribed');




-- STEP: 41.null



INSERT INTO TREATMENTS
VALUES ('T005','A005','SN002',
        'Post-operative Care',
        'Routine monitoring after surgery');




-- STEP: 42.null



INSERT INTO TREATMENTS
VALUES ('T004','A003','SD001',
        'Diabetes',
        'Blood glucose assessment');




-- STEP: 43.null



INSERT INTO MEDICINES
VALUES ('M001','Amlodipine',150);




-- STEP: 44.null



INSERT INTO TREATMENTS
VALUES ('T006','A008','SD002',
        'Respiratory Infection','monitor');




-- STEP: 45.null



INSERT INTO MEDICINES
VALUES ('M003','Paracetamol',500);




-- STEP: 46.null



INSERT INTO MEDICINES
VALUES ('M002','Aspirin',300);




-- STEP: 47.null



INSERT INTO MEDICINES
VALUES ('M005','Amoxicillin',200);




-- STEP: 48.null



INSERT INTO PRESCRIPTIONS
VALUES ('PR001','A001','M001','5mg Daily');




-- STEP: 49.null



INSERT INTO MEDICINES
VALUES ('M004','Metformin',250);




-- STEP: 50.null



INSERT INTO PRESCRIPTIONS
VALUES ('PR003','A002','M003','500mg Every 6 Hours');




-- STEP: 51.null



INSERT INTO PRESCRIPTIONS
VALUES ('PR002','A001','M002','100mg Daily');




-- STEP: 52.null



INSERT INTO PRESCRIPTIONS
VALUES ('PR004','A003','M004','500mg Twice Daily');




-- STEP: 53.null



INSERT INTO PRESCRIPTIONS
VALUES ('PR005','A005','M002','75mg Daily');




-- STEP: 54.null



INSERT INTO PRESCRIPTIONS
VALUES ('PR006','A008','M005','500mg Three Times Daily');




-- STEP: 55.null



INSERT INTO BILLING
VALUES ('B001','P001',1500.00,'Paid');




-- STEP: 56.null



INSERT INTO BILLING
VALUES ('B002','P002',2200.00,'Pending');




-- STEP: 57.null



INSERT INTO BILLING
VALUES ('B003','P003',1800.00,'Paid');




-- STEP: 58.null



INSERT INTO BILLING
VALUES ('B006','P006',600.00,'Pending');




-- STEP: 59.null



INSERT INTO BILLING
VALUES ('B004','P004',750.00,'Pending');




-- STEP: 60.null



INSERT INTO BILLING
VALUES ('B005','P005',3200.00,'Paid');




-- STEP: 61.null



INSERT INTO BILLING
VALUES ('B007','P008',1250.00,'Overdue');




-- STEP: 62.null



INSERT INTO BILLING
VALUES ('B008','P009',950.00,'Pending');




