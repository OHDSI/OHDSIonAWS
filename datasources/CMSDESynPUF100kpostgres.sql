--CMS DE-SynPUF 100,000 person dataset in OMOP v5.3.1 schema
--SET search_path assigns the SCHEMA for this data, which must be the same at the filename of this file.
--The end of every copy statement must contain iam_role 'RS_ROLE_ARN';  This will be replaced with the actual IAM Role used by Redshift.
--Patient Level Tables
SET search_path to CMSDESynPUF100kpostgres;
CREATE TABLE public.temp();

COPY public.temp FROM PROGRAM 'mkdir /tmp/tempdata/';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/care_site.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/care_site.csv.gz';
COPY CARE_SITE FROM '/tmp/tempdata/care_site.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/care_site.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/condition_occurrence.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/condition_occurrence.csv.gz';
COPY CONDITION_OCCURRENCE(condition_occurrence_id,person_id,condition_concept_id,condition_start_date,condition_start_datetime,condition_end_date,condition_end_datetime,condition_type_concept_id,stop_reason,provider_id,visit_occurrence_id,condition_source_value,condition_source_concept_id,condition_status_source_value,condition_status_concept_id) FROM '/tmp/tempdata/condition_occurrence.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/condition_occurrence.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/death.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/death.csv.gz';
COPY DEATH FROM '/tmp/tempdata/death.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/death.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/device_exposure.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/device_exposure.csv.gz';
COPY DEVICE_EXPOSURE(DEVICE_EXPOSURE_ID,PERSON_ID,DEVICE_CONCEPT_ID,DEVICE_EXPOSURE_START_DATE,DEVICE_EXPOSURE_START_DATETIME,DEVICE_EXPOSURE_END_DATE,DEVICE_EXPOSURE_END_DATETIME,DEVICE_TYPE_CONCEPT_ID,UNIQUE_DEVICE_ID,QUANTITY,PROVIDER_ID,VISIT_OCCURRENCE_ID,DEVICE_SOURCE_VALUE,DEVICE_SOURCE_CONCEPT_ID) FROM '/tmp/tempdata/device_exposure.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/device_exposure.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/drug_exposure.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/drug_exposure.csv.gz';
COPY DRUG_EXPOSURE(drug_exposure_id,person_id,drug_concept_id,drug_exposure_start_date,drug_exposure_start_datetime,drug_exposure_end_date,drug_exposure_end_datetime,verbatim_end_date,drug_type_concept_id,stop_reason,refills,quantity,days_supply,sig,route_concept_id,lot_number,provider_id,visit_occurrence_id,drug_source_value,drug_source_concept_id,route_source_value,dose_unit_source_value) FROM '/tmp/tempdata/drug_exposure.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/drug_exposure.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/location.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/location.csv.gz';
COPY LOCATION FROM '/tmp/tempdata/location.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/location.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/measurement.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/measurement.csv.gz';
COPY MEASUREMENT(measurement_id,person_id,measurement_concept_id,measurement_date,measurement_datetime,measurement_type_concept_id,operator_concept_id,value_as_number,value_as_concept_id,unit_concept_id,range_low,range_high,measurement_source_value,measurement_source_concept_id,unit_source_value,value_source_value) FROM '/tmp/tempdata/measurement.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/measurement.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/observation.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/observation.csv.gz';
COPY OBSERVATION(OBSERVATION_ID,PERSON_ID,OBSERVATION_CONCEPT_ID,OBSERVATION_DATE,OBSERVATION_DATETIME,OBSERVATION_TYPE_CONCEPT_ID,VALUE_AS_NUMBER,VALUE_AS_STRING,VALUE_AS_CONCEPT_ID,QUALIFIER_CONCEPT_ID,UNIT_CONCEPT_ID,PROVIDER_ID,VISIT_OCCURRENCE_ID,OBSERVATION_SOURCE_VALUE,OBSERVATION_SOURCE_CONCEPT_ID,UNIT_SOURCE_VALUE,QUALIFIER_SOURCE_VALUE) FROM '/tmp/tempdata/observation.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/observation.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/observation_period.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/observation_period.csv.gz';
COPY OBSERVATION_PERIOD FROM '/tmp/tempdata/observation_period.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/observation_period.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/payer_plan_period.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/payer_plan_period.csv.gz';
COPY PAYER_PLAN_PERIOD(PAYER_PLAN_PERIOD_ID,PERSON_ID,PAYER_PLAN_PERIOD_START_DATE,PAYER_PLAN_PERIOD_END_DATE,PAYER_SOURCE_VALUE,PLAN_SOURCE_VALUE,FAMILY_SOURCE_VALUE) FROM '/tmp/tempdata/payer_plan_period.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/payer_plan_period.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/person.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/person.csv.gz';
COPY PERSON FROM '/tmp/tempdata/person.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/person.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/procedure_occurrence.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/procedure_occurrence.csv.gz';
COPY PROCEDURE_OCCURRENCE(PROCEDURE_OCCURRENCE_ID,PERSON_ID,PROCEDURE_CONCEPT_ID,PROCEDURE_DATE,PROCEDURE_DATETIME,PROCEDURE_TYPE_CONCEPT_ID,MODIFIER_CONCEPT_ID,QUANTITY,PROVIDER_ID,VISIT_OCCURRENCE_ID,PROCEDURE_SOURCE_VALUE,PROCEDURE_SOURCE_CONCEPT_ID,MODIFIER_SOURCE_VALUE) FROM '/tmp/tempdata/procedure_occurrence.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/procedure_occurrence.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/provider.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/provider.csv.gz';
COPY PROVIDER FROM '/tmp/tempdata/procedure_occurrence.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/provider.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/visit_occurrence.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/visit_occurrence.csv.gz';
COPY VISIT_OCCURRENCE FROM '/tmp/tempdata/visit_occurrence.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/visit_occurrence.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/condition_era.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/condition_era.csv.gz';
COPY CONDITION_ERA(CONDITION_ERA_ID,PERSON_ID,CONDITION_CONCEPT_ID,CONDITION_ERA_START_DATE,CONDITION_ERA_END_DATE,CONDITION_OCCURRENCE_COUNT) FROM '/tmp/tempdata/condition_era.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/condition_era.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/cmsdesynpuf100k/drug_era.csv.gz /tmp/tempdata/';
COPY public.temp FROM PROGRAM 'gzip -d /tmp/tempdata/drug_era.csv.gz';
COPY DRUG_ERA(person_id,drug_concept_id,drug_era_start_date,drug_era_end_date,drug_exposure_count,gap_days,drug_era_id) FROM '/tmp/tempdata/drug_era.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/drug_era.csv';

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