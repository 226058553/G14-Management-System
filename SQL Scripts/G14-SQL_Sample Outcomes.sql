/*
Show the total number of registered patients
*/
SELECT COUNT(*) AS total_patients
FROM PATIENTS;

/*
Show available rooms
*/
SELECT room_id, room_number
FROM ROOMS
WHERE room_availability = 'Available';

/*
Show patients that are admitted
*/
SELECT p.patient_id,
p.first_name,
p.last_name,
a.room_id
FROM PATIENTS p
JOIN ADMISSIONS a
ON p.patient_id = a.patient_id;


/*
shows the num of admissions per ward
*/
SELECT w.ward_name,
COUNT(a.admission_id) total_admissions
FROM WARD w
JOIN ROOMS r ON w.ward_id = r.ward_id
JOIN ADMISSIONS a ON r.room_id = a.room_id
GROUP BY w.ward_name;


/*
treatments performed by each staff member
*/
SELECT s.staff_id,
s.initials,
COUNT(t.treatment_id) treatments_done
FROM STAFF s
LEFT JOIN TREATMENTS t
ON s.staff_id = t.staff_id
GROUP BY s.staff_id,s.initials;

/*
most prescribed medicine
*/
SELECT m.medicine_name,
COUNT(*) times_prescribed
FROM MEDICINES m
JOIN PRESCRIPTIONS p
ON m.medicine_id = p.medicine_id
GROUP BY m.medicine_name
ORDER BY times_prescribed DESC;

/*
medicines with stock under 100
*/
SELECT medicine_id,
medicine_name,
stock
FROM MEDICINES
WHERE stock < 100;

/*
total revenue generated
*/
SELECT SUM(amount) AS total_revenue
FROM BILLING
WHERE payment_status = 'Paid';

/*
overdue bills
*/
SELECT *
FROM BILLING
WHERE payment_status = 'Overdue';

/*
grouping appointments by status
*/
SELECT appointment_status,
COUNT(*) total
FROM APPOINTMENTS
GROUP BY appointment_status;