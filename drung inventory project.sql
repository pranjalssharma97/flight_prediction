create database project
use project  
#we will create 4 tables 
drug_info
supplier_info
inventory_levels
shipment_info
CREATE TABLE drug_info (
  drug_id INT NOT NULL AUTO_INCREMENT,
  drug_name VARCHAR(255) NOT NULL,
  brand_name VARCHAR(255) NOT NULL,
  generic_name VARCHAR(255) NOT NULL,
  dosage_form VARCHAR(255) NOT NULL,
  strength VARCHAR(255) NOT NULL,
  manufacturer VARCHAR(255) NOT NULL,
  PRIMARY KEY (drug_id)
);
CREATE TABLE supplier_info (
  supplier_id INT NOT NULL AUTO_INCREMENT,
  supplier_name VARCHAR(255) NOT NULL,
  supplier_address VARCHAR(255) NOT NULL,
  supplier_contact VARCHAR(255) NOT NULL,
  PRIMARY KEY (supplier_id)
);
CREATE TABLE inventory_levels (
  inventory_id INT NOT NULL AUTO_INCREMENT,
  drug_id INT NOT NULL,
  supplier_id INT NOT NULL,
  quantity INT NOT NULL,
  expiry_date DATE NOT NULL,
  PRIMARY KEY (inventory_id),
  FOREIGN KEY (drug_id) REFERENCES drug_info(drug_id),
  FOREIGN KEY (supplier_id) REFERENCES supplier_info(supplier_id)
);

CREATE TABLE shipment_info (
  shipment_id INT NOT NULL AUTO_INCREMENT,
  inventory_id INT NOT NULL,
  shipment_date DATE NOT NULL,
  destination_address VARCHAR(255) NOT NULL,
  shipment_status VARCHAR(255) NOT NULL,
  PRIMARY KEY (shipment_id),
  FOREIGN KEY (inventory_id) REFERENCES inventory_levels(inventory_id)
);
INSERT INTO drug_info (drug_id, drug_name, brand_name, generic_name, dosage_form, strength, manufacturer) VALUES
(1, 'Paracetamol', 'Crocin', 'Paracetamol', 'Tablet', '500 mg', 'GlaxoSmithKline'),
(2, 'Ibuprofen', 'Advil', 'Ibuprofen', 'Capsule', '200 mg', 'Pfizer'),
(3, 'Lisinopril', 'Zestril', 'Lisinopril', 'Tablet', '10 mg', 'AstraZeneca'),
(4, 'Simvastatin', 'Zocor', 'Simvastatin', 'Tablet', '20 mg', 'Merck & Co.'),
(5, 'Amoxicillin', 'Amoxil', 'Amoxicillin', 'Capsule', '500 mg', 'GlaxoSmithKline'),
(6, 'Ciprofloxacin', 'Cipro', 'Ciprofloxacin', 'Tablet', '500 mg', 'Bayer AG'),
(7, 'Metoprolol', 'Lopressor', 'Metoprolol', 'Tablet', '50 mg', 'Novartis'),
(8, 'Amlodipine', 'Norvasc', 'Amlodipine', 'Tablet', '5 mg', 'Pfizer'),
(9, 'Tadalafil', 'Cialis', 'Tadalafil', 'Tablet', '20 mg', 'Eli Lilly and Company'),
(10, 'Levothyroxine', 'Synthroid', 'Levothyroxine', 'Tablet', '50 mcg', 'AbbVie'),
(11, 'Atorvastatin', 'Lipitor', 'Atorvastatin', 'Tablet', '40 mg', 'Pfizer'),
(12, 'Azithromycin', 'Zithromax', 'Azithromycin', 'Tablet', '500 mg', 'Pfizer'),
(13, 'Losartan', 'Cozaar', 'Losartan', 'Tablet', '50 mg', 'Merck & Co.'),
(14, 'Hydrochlorothiazide', 'Microzide', 'Hydrochlorothiazide', 'Capsule', '12.5 mg', 'Pfizer'),
(15, 'Furosemide', 'Lasix', 'Furosemide', 'Tablet', '40 mg', 'Sanofi'),
(16, 'Pregabalin', 'Lyrica', 'Pregabalin', 'Capsule', '150 mg', 'Pfizer'),
(17, 'Omeprazole', 'Prilosec', 'Omeprazole', 'Capsule', '20 mg', 'AstraZeneca'),
(18, 'Venlafaxine', 'Effexor', 'Venlafaxine', 'Tablet', '75 mg', 'Pfizer'),
(19, 'Tramadol', 'Ultram', 'Tramadol', 'Capsule', '50 mg', 'Johnson & Johnson'),
(20, 'Clonazepam', 'Klonopin', 'Clonazepam', 'Tablet', '1 mg', 'Roche');

INSERT INTO supplier_info (supplier_id, supplier_name, supplier_address, supplier_contact) VALUES
(1, 'ABC Pharmaceuticals', '123 Main Street, New York, NY 10001', '+1-123-456-7890'),
(2, 'XYZ Inc.', '456 Park Avenue, San Francisco, CA 94102', '+1-987-654-3210'),
(3, 'MediCorp', '789 Oak Street, Chicago, IL 60611', '+1-555-555-5555'),
(4, 'Health Solutions', '1111 Broadway, Seattle, WA 98101', '+1-888-888-8888'),
(5, 'PharmaGen', '321 Elm Street, Los Angeles, CA 90001', '+1-444-444-4444'),
(6, 'SavaMed', '555 Fifth Avenue, Miami, FL 33109', '+1-222-222-2222'),
(7, 'Medical Mart', '777 Seventh Street, Boston, MA 02108', '+1-777-777-7777'),
(8, 'Acme Pharmaceuticals', '888 Oak Lane, Dallas, TX 75201', '+1-666-666-6666'),
(9, 'PharmaPlus', '333 Chestnut Avenue, Philadelphia, PA 19104', '+1-333-333-3333'),
(10, 'BioPharm', '444 Maple Road, Denver, CO 80202', '+1-111-111-1111'),
(11, 'MediSource', '666 Pine Street, Houston, TX 77002', '+1-999-999-9999'),
(12, 'Wellness Solutions', '222 Market Street, Washington, DC 20001', '+1-222-111-1111'),
(13, 'PharmaLink', '999 Main Street, Phoenix, AZ 85001', '+1-444-444-4444'),
(14, 'MediBlend', '777 Fourth Avenue, San Diego, CA 92101', '+1-777-777-7777'),
(15, 'Healthy Life', '555 Peachtree Street, Atlanta, GA 30308', '+1-888-888-8888'),
(16, 'Universal Pharma', '123 Broad Street, Nashville, TN 37201', '+1-555-555-5555'),
(17, 'Lifeline', '456 State Street, New Orleans, LA 70112', '+1-111-111-1111'),
(18, 'PharmaNation', '789 Madison Avenue, Detroit, MI 48201', '+1-222-222-2222'),
(19, 'Global Health', '2222 Collins Street, Portland, OR 97204', '+1-333-333-3333'),
(20, 'SafeMed', '1111 Market Street, Las Vegas, NV 89101', '+1-999-999-9999');

INSERT INTO inventory_levels (inventory_id, drug_id, supplier_id, quantity, expiry_date)
VALUES
(1, 4, 9, 100, '2023-06-30'),
(2, 5, 12, 50, '2024-02-15'),
(3, 1, 7, 75, '2022-11-30'),
(4, 2, 10, 200, '2025-07-31'),
(5, 3, 8, 150, '2023-12-31'),
(6, 6, 9, 80, '2022-10-15'),
(7, 1, 11, 100, '2022-08-31'),
(8, 2, 12, 120, '2023-09-30'),
(9, 3, 7, 50, '2024-05-31'),
(10, 4, 10, 175, '2024-12-15'),
(11, 5, 8, 90, '2025-06-30'),
(12, 6, 11, 60, '2023-01-31'),
(13, 2, 9, 300, '2026-02-28'),
(14, 3, 12, 125, '2024-09-15'),
(15, 4, 7, 200, '2023-07-31'),
(16, 5, 10, 150, '2022-12-31'),
(17, 6, 8, 100, '2023-05-15'),
(18, 1, 9, 50, '2025-03-31'),
(19, 3, 11, 75, '2026-01-15'),
(20, 2, 7, 175, '2024-08-31');
INSERT INTO shipment_info (inventory_id, shipment_date, destination_address, shipment_status)
VALUES
  (1, '2023-05-01', '123 Main St, Anytown USA', 'Shipped'),
  (2, '2023-05-02', '456 Oak Ave, Anycity USA', 'In Transit'),
  (3, '2023-05-03', '789 Elm St, Anyvillage USA', 'Delivered'),
  (4, '2023-05-04', '321 Maple St, Anycity USA', 'In Transit'),
  (5, '2023-05-05', '654 Cedar Ave, Anytown USA', 'Shipped'),
  (6, '2023-05-06', '987 Pine St, Anyvillage USA', 'Delivered'),
  (7, '2023-05-07', '246 Walnut St, Anycity USA', 'In Transit'),
  (8, '2023-05-08', '369 Maple Ave, Anytown USA', 'Shipped'),
  (9, '2023-05-09', '480 Oak St, Anyvillage USA', 'Delivered'),
  (10, '2023-05-10', '591 Cedar Ave, Anycity USA', 'In Transit'),
  (11, '2023-05-11', '702 Pine St, Anytown USA', 'Shipped'),
  (12, '2023-05-12', '813 Maple St, Anyvillage USA', 'Delivered'),
  (13, '2023-05-13', '924 Walnut Ave, Anycity USA', 'In Transit'),
  (14, '2023-05-14', '135 Cedar St, Anytown USA', 'Shipped'),
  (15, '2023-05-15', '246 Pine Ave, Anyvillage USA', 'Delivered'),
  (16, '2023-05-16', '357 Maple St, Anycity USA', 'In Transit'),
  (17, '2023-05-17', '468 Oak Ave, Anytown USA', 'Shipped'),
  (18, '2023-05-18', '579 Cedar St, Anyvillage USA', 'Delivered'),
  (19, '2023-05-19', '690 Pine Ave, Anycity USA', 'In Transit'),
  (20, '2023-05-20', '701 Maple St, Anytown USA', 'Shipped');
  
  #drug_info
  select * from drug_info
  #supplier_info
  select * from supplier_info
  #iventory_levels
  select * from inventory_levels
  
  #shippment_info
  select * from shipment_info
  
  

#To update the quantity of a drug in inventory:
UPDATE inventory_levels
SET quantity = quantity - 10
WHERE drug_id = 1 AND supplier_id = 2;





#To delete a shipment record:
DELETE FROM shipment_info
WHERE shipment_id = 12345;



#To retrieve a list of all shipments that have not yet been delivered:
SELECT i.inventory_id, s.shipment_date, s.destination_address
FROM inventory_levels i
JOIN shipment_info s ON i.inventory_id = s.inventory_id
WHERE s.shipment_status = 'In Transit';



#list of all drigs that are out of stock
SELECT drug_name, brand_name, generic_name
FROM drug_info
WHERE drug_id NOT IN (
  SELECT drug_id FROM inventory_levels
  WHERE quantity > 0
);
#List all shipments that have not yet arrived at their destination:
SELECT shipment_id, shipment_date, shipment_status
FROM shipment_info
WHERE shipment_status != 'Arrived';

Query to retrieve the list of drugs that are low in stock:

SELECT di.drug_name, il.quantity
FROM drug_info di
JOIN inventory_levels il ON di.drug_id = il.drug_id
WHERE il.quantity < 10

#To retrieve the total quantity of a specific drug:
SELECT SUM(quantity) FROM inventory_levels WHERE drug_id = 3;

To retrieve all shipments that are currently in transit:

SELECT * FROM shipment_info WHERE shipment_status = 'In Transit';



#drugs that are low in stock
SELECT drug_name, SUM(quantity) AS total_quantity
FROM inventory_levels
JOIN drug_info ON inventory_levels.drug_id = drug_info.drug_id
GROUP BY drug_name
HAVING total_quantity < 100;

#Query to retrieve the list of suppliers and their contact information:
SELECT supplier_name, supplier_address, supplier_contact
FROM supplier_info;














