CREATE DATABASE patient_clinic;
CREATE TABLE patients(id INT GENERATED ALWAYS AS IDENTITY, name VARCHAR(100), date_of_birth DATE, PRIMARY KEY(id));
CREATE TABLE medical_histories(id INT GENERATED ALWAYS AS IDENTITY, admitted_at TIMESTAMP, patient_id INT, status VARCHAR(100), PRIMARY KEY(id));
ALTER TABLE medical_histories ADD CONSTRAINT patient FOREIGN KEY(patient_id) REFERENCES patients(id);
CREATE TABLE invoices(id INT GENERATED ALWAYS AS IDENTITY, total_amount DECIMAL(10,2), generated_at TIMESTAMP, payed_at TIMESTAMP, medical_history_id INT, PRIMARY KEY(id));
ALTER TABLE invoices ADD CONSTRAINT history FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id);
CREATE TABLE invoice_items(id INT GENERATED ALWAYS AS IDENTITY, unit_price DECIMAL(10,2), quantity INT, total_price DECIMAL(10,2), invoice_id INT, treatment_id INT, PRIMARY KEY(id));
ALTER TABLE invoice_items ADD CONSTRAINT invoice FOREIGN KEY(invoice_id) REFERENCES invoices(id);
CREATE TABLE treatments(id INT GENERATED ALWAYS AS IDENTITY, type VARCHAR(100), name VARCHAR(100), PRIMARY KEY(id));
ALTER TABLE invoice_items ADD CONSTRAINT treatment FOREIGN KEY(treatment_id) REFERENCES treatments(id);
CREATE TABLE histories_treatments(medical_history_id INT, treatment_id INT);
ALTER TABLE histories_treatments ADD CONSTRAINT foreign_treatment FOREIGN KEY(treatment_id) REFERENCES treatments(id);
ALTER TABLE histories_treatments ADD CONSTRAINT foreign_history FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id);