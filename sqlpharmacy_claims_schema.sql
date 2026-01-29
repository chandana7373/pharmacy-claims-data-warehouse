create database FinalProject;
use FinalProject;

-- Members table
ALTER TABLE dim_member_details
ADD PRIMARY KEY (member_id);

-- Drugs table
ALTER TABLE dim_drugs
ADD PRIMARY KEY (drug_ndc);

-- Drug Form table
ALTER TABLE dim_drug_form
MODIFY drug_form_code VARCHAR(100) NOT NULL,
ADD PRIMARY KEY (drug_form_code);

-- Drug Generic table
ALTER TABLE dim_drugs_generic
ADD PRIMARY KEY (drug_brand_generic_code);

-- Prescriptions table
ALTER TABLE fact_prescription
ADD prescription_id INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE fact_prescription
ADD FOREIGN KEY fact_prescription_member_id_fk(member_id)
REFERENCES dim_member_details(member_id)
ON DELETE SET NULL
ON UPDATE SET NULL;

ALTER TABLE fact_prescription
ADD FOREIGN KEY fact_prescription_drug_ndc_fk(drug_ndc)
REFERENCES dim_drugs(drug_ndc)
ON DELETE SET NULL
ON UPDATE SET NULL;

ALTER TABLE fact_prescription 
CHANGE COLUMN drug_form_code drug_form_code VARCHAR(100) NULL DEFAULT NULL ;

ALTER TABLE fact_prescription
ADD FOREIGN KEY fact_prescription_drug_form_code_fk(drug_form_code)
REFERENCES dim_drug_form(drug_form_code)
ON DELETE SET NULL
ON UPDATE SET NULL;

ALTER TABLE fact_prescription
ADD FOREIGN KEY fact_prescription_drug_brand_generic_code_fk(drug_brand_generic_code)
REFERENCES dim_drugs_generic(drug_brand_generic_code)
ON DELETE SET NULL
ON UPDATE SET NULL;