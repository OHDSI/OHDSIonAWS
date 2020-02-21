--Synthea v2.4.0, all modules, 1,000 person dataset in OMOP v5.3.1 schema
--SET search_path assigns the SCHEMA for this data, which must be the same at the filename of this file.
--The end of every copy statement must contain iam_role 'RS_ROLE_ARN';  This will be replaced with the actual IAM Role used by Redshift.
--Patient Level Tables
SET search_path to synthea1kpostgres;
CREATE TABLE public.temp();

COPY public.temp FROM PROGRAM 'mkdir /tmp/tempdata/';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/condition_era.csv /tmp/tempdata/';
COPY CONDITION_ERA FROM '/tmp/tempdata/condition_era.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/condition_era.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/condition_occurrence.csv /tmp/tempdata/';
COPY CONDITION_OCCURRENCE FROM '/tmp/tempdata/condition_occurrence.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/condition_occurrence.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/drug_era.csv /tmp/tempdata/';
COPY DRUG_ERA FROM '/tmp/tempdata/drug_era.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/drug_era.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/drug_exposure.csv /tmp/tempdata/';
COPY DRUG_EXPOSURE FROM '/tmp/tempdata/drug_exposure.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/drug_exposure.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/measurement.csv /tmp/tempdata/';
COPY MEASUREMENT FROM '/tmp/tempdata/measurement.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/measurement.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/observation.csv /tmp/tempdata/';
COPY OBSERVATION FROM '/tmp/tempdata/observation.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/observation.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/observation_period.csv /tmp/tempdata/';
COPY OBSERVATION_PERIOD FROM '/tmp/tempdata/observation_period.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/observation_period.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/person.csv /tmp/tempdata/';
COPY PERSON FROM '/tmp/tempdata/person.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/person.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/procedure_occurrence.csv /tmp/tempdata/';
COPY PROCEDURE_OCCURRENCE FROM '/tmp/tempdata/procedure_occurrence.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/procedure_occurrence.csv';

COPY public.temp FROM PROGRAM 'aws s3 cp s3://ohdsi-sample-data/synthea1k/visit_occurrence.csv /tmp/tempdata/';
COPY VISIT_OCCURRENCE FROM '/tmp/tempdata/visit_occurrence.csv' WITH DELIMITER ',' CSV HEADER QUOTE E'\b';
COPY public.temp FROM PROGRAM 'rm /tmp/tempdata/visit_occurrence.csv';

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