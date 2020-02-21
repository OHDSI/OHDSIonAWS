--CMS DE-SynPUF 1000 person dataset in OMOP v5.3.1 schema
--SET search_path assigns the SCHEMA for this data, which must be the same at the filename of this file.
--Patient Level Tables
SET search_path to cmsdesynpuf1kpostgres;
CREATE TABLE public.temp();

COPY public.temp FROM PROGRAM 'mkdir /tmp/tempdata/';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_CARE_SITE.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_CARE_SITE.csv.bz2';
COPY CARE_SITE FROM '/tmp/tempdata/CDM_CARE_SITE.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_CARE_SITE.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_CONDITION_OCCURRENCE.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_CONDITION_OCCURRENCE.csv.bz2';
COPY CONDITION_OCCURRENCE(CONDITION_OCCURRENCE_ID,PERSON_ID,CONDITION_CONCEPT_ID,CONDITION_START_DATE,CONDITION_START_DATETIME,CONDITION_END_DATE,CONDITION_END_DATETIME,CONDITION_TYPE_CONCEPT_ID,STOP_REASON,PROVIDER_ID,VISIT_OCCURRENCE_ID,CONDITION_SOURCE_VALUE,CONDITION_SOURCE_CONCEPT_ID) FROM  '/tmp/tempdata/CDM_CONDITION_OCCURRENCE.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_CONDITION_OCCURRENCE.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_DEATH.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_DEATH.csv.bz2';
COPY DEATH FROM '/tmp/tempdata/CDM_DEATH.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_DEATH.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_DRUG_EXPOSURE5.2.2.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_DRUG_EXPOSURE5.2.2.csv.bz2';
COPY DRUG_EXPOSURE(DRUG_EXPOSURE_ID,PERSON_ID,DRUG_CONCEPT_ID,DRUG_EXPOSURE_START_DATE,DRUG_EXPOSURE_START_DATETIME,DRUG_EXPOSURE_END_DATE,DRUG_EXPOSURE_END_DATETIME,DRUG_TYPE_CONCEPT_ID,STOP_REASON,REFILLS,QUANTITY,DAYS_SUPPLY,SIG,ROUTE_CONCEPT_ID,LOT_NUMBER,PROVIDER_ID,VISIT_OCCURRENCE_ID,DRUG_SOURCE_VALUE,DRUG_SOURCE_CONCEPT_ID,ROUTE_SOURCE_VALUE,DOSE_UNIT_SOURCE_VALUE) FROM '/tmp/tempdata/CDM_DRUG_EXPOSURE5.2.2.csv.bz2' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_DRUG_EXPOSURE5.2.2.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_DEVICE_EXPOSURE.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_DEVICE_EXPOSURE.csv.bz2';
COPY DEVICE_EXPOSURE(DEVICE_EXPOSURE_ID,PERSON_ID,DEVICE_CONCEPT_ID,DEVICE_EXPOSURE_START_DATE,DEVICE_EXPOSURE_START_DATETIME,DEVICE_EXPOSURE_END_DATE,DEVICE_EXPOSURE_END_DATETIME,DEVICE_TYPE_CONCEPT_ID,UNIQUE_DEVICE_ID,QUANTITY,PROVIDER_ID,VISIT_OCCURRENCE_ID,DEVICE_SOURCE_VALUE,DEVICE_SOURCE_CONCEPT_ID) FROM '/tmp/tempdata/CDM_DEVICE_EXPOSURE.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_DEVICE_EXPOSURE.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_LOCATION.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_LOCATION.csv.bz2';
COPY LOCATION FROM '/tmp/tempdata/CDM_LOCATION.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_LOCATION.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_MEASUREMENT5.2.2.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_MEASUREMENT5.2.2.csv.bz2';
COPY MEASUREMENT FROM '/tmp/tempdata/CDM_MEASUREMENT5.2.2.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_MEASUREMENT5.2.2.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_OBSERVATION5.2.2.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_OBSERVATION5.2.2.csv.bz2';
COPY OBSERVATION FROM '/tmp/tempdata/CDM_OBSERVATION5.2.2.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_OBSERVATION5.2.2.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_OBSERVATION_PERIOD5.3.1.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_OBSERVATION_PERIOD5.3.1.csv.bz2';
COPY OBSERVATION_PERIOD(OBSERVATION_PERIOD_ID,PERSON_ID,OBSERVATION_PERIOD_START_DATE,OBSERVATION_PERIOD_END_DATE,PERIOD_TYPE_CONCEPT_ID) FROM '/tmp/tempdata/CDM_OBSERVATION_PERIOD5.3.1.csv' WITH DELIMITER ',' CSV HEADER;
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_OBSERVATION_PERIOD5.3.1.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_PERSON.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_PERSON.csv.bz2';
COPY PERSON FROM '/tmp/tempdata/CDM_PERSON.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_PERSON.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_PROCEDURE_OCCURRENCE5.3.1.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_PROCEDURE_OCCURRENCE5.3.1.csv.bz2';
COPY PROCEDURE_OCCURRENCE(PROCEDURE_OCCURRENCE_ID,PERSON_ID,PROCEDURE_CONCEPT_ID,PROCEDURE_DATE,PROCEDURE_DATETIME,PROCEDURE_TYPE_CONCEPT_ID,MODIFIER_CONCEPT_ID,QUANTITY,PROVIDER_ID,VISIT_OCCURRENCE_ID,VISIT_DETAIL_ID,PROCEDURE_SOURCE_VALUE,PROCEDURE_SOURCE_CONCEPT_ID,MODIFIER_SOURCE_VALUE) FROM '/tmp/tempdata/CDM_PROCEDURE_OCCURRENCE5.3.1.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_PROCEDURE_OCCURRENCE5.3.1.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_PROVIDER.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_PROVIDER.csv.bz2';
COPY PROVIDER FROM '/tmp/tempdata/CDM_PROVIDER.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_PROVIDER.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_VISIT_OCCURRENCE.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_VISIT_OCCURRENCE.csv.bz2';
COPY VISIT_OCCURRENCE(VISIT_OCCURRENCE_ID,PERSON_ID,VISIT_CONCEPT_ID,VISIT_START_DATE,VISIT_START_DATETIME,VISIT_END_DATE,VISIT_END_DATETIME,VISIT_TYPE_CONCEPT_ID,PROVIDER_ID,CARE_SITE_ID,VISIT_SOURCE_VALUE,VISIT_SOURCE_CONCEPT_ID) FROM '/tmp/tempdata/CDM_VISIT_OCCURRENCE.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_VISIT_OCCURRENCE.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_DRUG_ERA.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_DRUG_ERA.csv.bz2';
COPY DRUG_ERA FROM '/tmp/tempdata/CDM_DRUG_ERA.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_DRUG_ERA.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cms-cdm/CDM_CONDITION_ERA.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CDM_CONDITION_ERA.csv.bz2';
COPY CONDITION_ERA FROM '/tmp/tempdata/CDM_CONDITION_ERA.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CDM_CONDITION_ERA.csv';

--Vocabulary Tables
COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/vocab/CONCEPT_ANCESTOR.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CONCEPT_ANCESTOR.csv.bz2';
COPY CONCEPT_ANCESTOR FROM '/tmp/tempdata/CONCEPT_ANCESTOR.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CONCEPT_ANCESTOR.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/vocab/CONCEPT_CLASS.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CONCEPT_CLASS.csv.bz2';
COPY CONCEPT_CLASS FROM '/tmp/tempdata/CONCEPT_CLASS.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CONCEPT_CLASS.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/vocab/CONCEPT.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CONCEPT.csv.bz2';
COPY CONCEPT FROM '/tmp/tempdata/CONCEPT.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CONCEPT.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/vocab/CONCEPT_RELATIONSHIP.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CONCEPT_RELATIONSHIP.csv.bz2';
COPY CONCEPT_RELATIONSHIP FROM '/tmp/tempdata/CONCEPT_RELATIONSHIP.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CONCEPT_RELATIONSHIP.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/vocab/CONCEPT_SYNONYM.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/CONCEPT_SYNONYM.csv.bz2';
COPY CONCEPT_SYNONYM FROM '/tmp/tempdata/CONCEPT_SYNONYM.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/CONCEPT_SYNONYM.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/vocab/DOMAIN.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/DOMAIN.csv.bz2';
COPY DOMAIN FROM '/tmp/tempdata/DOMAIN.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/DOMAIN.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/vocab/RELATIONSHIP.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/RELATIONSHIP.csv.bz2';
COPY RELATIONSHIP FROM '/tmp/tempdata/RELATIONSHIP.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/RELATIONSHIP.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/vocab/VOCABULARY.csv.bz2 /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'bzip2 -d /tmp/tempdata/VOCABULARY.csv.bz2';
COPY VOCABULARY FROM '/tmp/tempdata/VOCABULARY.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/VOCABULARY.csv';