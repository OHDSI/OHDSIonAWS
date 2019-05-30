--Synthea v2.4.0, all modules, 1,000 person dataset in OMOP v5.3.1 schema
--SET search_path assigns the SCHEMA for this data, which must be the same at the filename of this file.
--The end of every copy statement must contain iam_role 'RS_ROLE_ARN';  This will be replaced with the actual IAM Role used by Redshift.
--Patient Level Tables
SET search_path to synthea100k;
COPY CONDITION_ERA FROM 's3://ohdsi-sample-data/synthea100k/condition_era.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY CONDITION_OCCURRENCE FROM 's3://ohdsi-sample-data/synthea100k/condition_occurrence.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 DATEFORMAT AS 'YYYY-MM-DD' TIMEFORMAT AS 'YYYY-MM-DD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY DRUG_ERA FROM 's3://ohdsi-sample-data/synthea100k/drug_era.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY DRUG_EXPOSURE FROM 's3://ohdsi-sample-data/synthea100k/drug_exposure.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 DATEFORMAT AS 'YYYY-MM-DD' TIMEFORMAT AS 'YYYY-MM-DD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY MEASUREMENT FROM 's3://ohdsi-sample-data/synthea100k/measurement.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 DATEFORMAT AS 'YYYY-MM-DD' TIMEFORMAT AS 'YYYY-MM-DD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY OBSERVATION FROM 's3://ohdsi-sample-data/synthea100k/observation.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 DATEFORMAT AS 'YYYY-MM-DD' TIMEFORMAT AS 'YYYY-MM-DD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY OBSERVATION_PERIOD FROM 's3://ohdsi-sample-data/synthea100k/observation_period.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 DATEFORMAT AS 'YYYY-MM-DD' TIMEFORMAT AS 'YYYY-MM-DD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY PERSON FROM 's3://ohdsi-sample-data/synthea100k/person.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY PROCEDURE_OCCURRENCE FROM 's3://ohdsi-sample-data/synthea100k/procedure_occurrence.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 DATEFORMAT AS 'YYYY-MM-DD' TIMEFORMAT AS 'YYYY-MM-DD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY VISIT_OCCURRENCE FROM 's3://ohdsi-sample-data/synthea100k/visit_occurrence.csv.lzo' WITH DELIMITER ',' CSV REGION 'us-east-1' lzop IGNOREHEADER 1 DATEFORMAT AS 'YYYY-MM-DD' TIMEFORMAT AS 'YYYY-MM-DD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';

--Vocabulary Tables
COPY CONCEPT_ANCESTOR FROM 's3://ohdsi-sample-data/vocab/CONCEPT_ANCESTOR.csv.bz2' WITH DELIMITER '\t' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY CONCEPT_CLASS FROM 's3://ohdsi-sample-data/vocab/CONCEPT_CLASS.csv.bz2' WITH DELIMITER '\t' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY CONCEPT FROM 's3://ohdsi-sample-data/vocab/CONCEPT.csv.bz2' WITH DELIMITER '\t' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY CONCEPT_RELATIONSHIP FROM 's3://ohdsi-sample-data/vocab/CONCEPT_RELATIONSHIP.csv.bz2' WITH DELIMITER '\t' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull DATEFORMAT AS 'YYYYMMDD' iam_role 'RS_ROLE_ARN';
COPY CONCEPT_SYNONYM FROM 's3://ohdsi-sample-data/vocab/CONCEPT_SYNONYM.csv.bz2' WITH DELIMITER '\t' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' iam_role 'RS_ROLE_ARN';
COPY DOMAIN FROM 's3://ohdsi-sample-data/vocab/DOMAIN.csv.bz2' WITH DELIMITER '\t' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY RELATIONSHIP FROM 's3://ohdsi-sample-data/vocab/RELATIONSHIP.csv.bz2' WITH DELIMITER '\t' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY VOCABULARY FROM 's3://ohdsi-sample-data/vocab/VOCABULARY.csv.bz2' WITH DELIMITER '\t' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
