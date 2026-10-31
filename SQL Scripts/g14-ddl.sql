REM   Script: G14-DDL
REM   Creates tables, links and constraints


-- STEP: 1.null



CREATE TABLE PATIENTS (
    patient_id      VARCHAR(10) NOT NULL,
    first_name      VARCHAR(50) NOT NULL,
    last_name       VARCHAR(50) NOT NULL,
    phone_number    VARCHAR(10) NOT NULL,
    CONSTRAINT PATIENTS_PK
        PRIMARY KEY (patient_id)
);




-- STEP: 2.null



CREATE TABLE STAFF (
    staff_id        VARCHAR(10) NOT NULL,
    staff_type      VARCHAR(40) NOT NULL,
    initials        VARCHAR(30) NOT NULL,
    phone_number    VARCHAR(10),
    CONSTRAINT STAFF_PK
        PRIMARY KEY (staff_id)
);




-- STEP: 3.null



CREATE TABLE WARD (
    ward_id         VARCHAR(10) NOT NULL,
    ward_name       VARCHAR(50) NOT NULL,
    CONSTRAINT WARD_PK
        PRIMARY KEY (ward_id)
);




-- STEP: 4.null



CREATE TABLE TREATMENTS (
    treatment_id            VARCHAR(10) NOT NULL,
    appointment_id          VARCHAR(10) NOT NULL,
    staff_id                VARCHAR(10) NOT NULL,
    diagnosis               VARCHAR(100) NOT NULL,
    treatment_description   VARCHAR(200) NOT NULL,
    CONSTRAINT TREATMENTS_PK
        PRIMARY KEY (treatment_id),
    CONSTRAINT TREATMENTS_APPOINTMENT_FK
        FOREIGN KEY (appointment_id)
        REFERENCES APPOINTMENTS (appointment_id),
    CONSTRAINT TREATMENTS_STAFF_FK
        FOREIGN KEY (staff_id)
        REFERENCES STAFF (staff_id)
);




-- STEP: 5.null



CREATE TABLE ADMISSIONS (
    admission_id        VARCHAR(10) NOT NULL,
    appointment_id      VARCHAR(10) NOT NULL,
    patient_id          VARCHAR(10) NOT NULL,
    room_id             VARCHAR(10) NOT NULL,
    admission_date      DATE NOT NULL,
    discharge_date      DATE NOT NULL,
    CONSTRAINT ADMISSIONS_PK
        PRIMARY KEY (admission_id),
    CONSTRAINT ADMISSIONS_APPOINTMENT_FK
        FOREIGN KEY (appointment_id)
        REFERENCES APPOINTMENTS (appointment_id),
    CONSTRAINT ADMISSIONS_PATIENT_FK
        FOREIGN KEY (patient_id)
        REFERENCES PATIENTS (patient_id),
    CONSTRAINT ADMISSIONS_ROOM_FK
        FOREIGN KEY (room_id)
        REFERENCES ROOMS (room_id)
);




-- STEP: 6.null



CREATE TABLE ROOMS (
    room_id VARCHAR(10) NOT NULL,
    room_number VARCHAR(15) NOT NULL,
    ward_id VARCHAR(10) NOT NULL,
    room_availability VARCHAR(50) NOT NULL,
    CONSTRAINT ROOMS_PK
        PRIMARY KEY (room_id),
    CONSTRAINT ROOMS_WARD_FK
        FOREIGN KEY (ward_id)
        REFERENCES WARD (ward_id),
    CONSTRAINT ROOM_STATUS_CHK
        CHECK (
            room_availability IN (
                'Available',
                'Occupied'
            )
        )
);




-- STEP: 7.null



CREATE TABLE APPOINTMENTS (
    appointment_id      VARCHAR(10) NOT NULL,
    patient_id          VARCHAR(10) NOT NULL,
    appointment_date    DATE NOT NULL,
    appointment_time    VARCHAR(20) NOT NULL,
    appointment_status  VARCHAR(50) NOT NULL,
    CONSTRAINT APPOINTMENTS_PK
        PRIMARY KEY (appointment_id),
    CONSTRAINT APPOINTMENTS_PATIENT_FK
        FOREIGN KEY (patient_id)
        REFERENCES PATIENTS (patient_id)
);




-- STEP: 8.null



CREATE TABLE BILLING (
    bill_id             VARCHAR(10) NOT NULL,
    patient_id          VARCHAR(10) NOT NULL,
    amount              NUMBER(10,2) NOT NULL,
    payment_status      VARCHAR(25) NOT NULL,
    CONSTRAINT BILLING_PK
        PRIMARY KEY (bill_id),
    CONSTRAINT BILLING_PATIENT_FK
        FOREIGN KEY (patient_id)
        REFERENCES PATIENTS (patient_id)
);




-- STEP: 9.null



CREATE TABLE MEDICINES (
    medicine_id     VARCHAR(10) NOT NULL,
    medicine_name   VARCHAR(50) NOT NULL,
    stock           NUMBER NOT NULL,
    CONSTRAINT MEDICINES_PK
        PRIMARY KEY (medicine_id)
);




-- STEP: 10.null



CREATE TABLE PRESCRIPTIONS (
    prescription_id     VARCHAR(10) NOT NULL,
    appointment_id      VARCHAR(10) NOT NULL,
    medicine_id         VARCHAR(10) NOT NULL,
    dosage              VARCHAR(50) NOT NULL,
    CONSTRAINT PRESCRIPTIONS_PK
        PRIMARY KEY (prescription_id),
    CONSTRAINT PRESCRIPTIONS_APPOINTMENT_FK
        FOREIGN KEY (appointment_id)
        REFERENCES APPOINTMENTS (appointment_id),
    CONSTRAINT PRESCRIPTIONS_MEDICINE_FK
        FOREIGN KEY (medicine_id)
        REFERENCES MEDICINES (medicine_id)
);




-- STEP: 11.null



ALTER TABLE BILLING
ADD CONSTRAINT PAYMENT_STATUS_CHK
CHECK (
    payment_status IN
    (
        'Paid',
        'Pending',
        'Overdue'
    )
);




-- STEP: 12.null



ALTER TABLE STAFF
ADD CONSTRAINT STAFF_TYPE_CHK
CHECK (
    staff_type IN
    (
        'Doctor',
        'Nurse',
        'Receptionist',
        'Administrator'
    )
);




