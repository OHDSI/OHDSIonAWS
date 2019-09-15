# Enterprise, Multi-User OHDSI on AWS

## Quick Start
This repository allows you to quickly deploy an enterprise class, multi-user, scalable and fault tolerant OHDSI environment on AWS using the latest OHDSI tools.  Choose **Internet Accessible** to launch an OHDSI environment that users can access over the Internet.  **Private Network Only** allows you to specify your own Amazon Virtual Private Cloud (VPC) making the OHDSI environment only accessible from your organization's private network.  If you are interested in a personal OHDSI learning environment you may be better served by the [OHDSI-in-a-box Project](https://github.com/OHDSI/OHDSI-in-a-Box).

| AWS Region Code | Name | Launch Internet Accessible Environment | Launch Private Network Only Environment |
| --- | --- | --- | --- |
| us-east-1 |US East (N. Virginia)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| us-east-2 |US East (Ohio)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| us-west-1 |US West (N. California)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| us-west-2 |US West (Oregon)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| ca-central-1 | Canada | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| eu-west-1 |EU (Ireland)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| eu-central-1 |EU (Frankfurt)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-central-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-central-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| eu-west-2 |EU (London)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| eu-west-3 |EU (Paris)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-3#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-3#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| eu-north-1 |EU (Stockholm)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-north-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-north-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| ap-southeast-2 |AP (Sydney)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-southeast-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-southeast-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| ap-northeast-2 |AP (Seoul)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-2#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| ap-southeast-1 |AP (Singapore)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-southeast-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-southeast-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| ap-northeast-1 |AP (Tokyo)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |
| ap-northeast-1 |AP (Tokyo)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsi.yaml) | [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/00-master-ohdsiprivate.yaml) |


### Included OHDSI Projects
| OHDSI Component | Version |
| --- | --- 
| OMOP Common Data Model | v5.3.1 |
| Atlas | v2.7.3 |
| WebAPI | v2.7.3 | 
| Achilles | v1.6.3 |
| PatientLevelPrediction | v3.0.6 |
| CohortMethod | v3.1.0 |
| SqlRender | v1.6.2 |
| DatabaseConnector | v2.4.0 |
| DatabaseConnectorJars | v1.0.0 |
| SqlRender | v1.6.2 |
| OhdsiRTools | v1.7.0 |
| FeatureExtraction | v2.2.5 |
| Cyclops | v2.0.2 |
| EmpiricalCalibration | v2.0.0 |
| OhdsiSharing | v0.1.3 |
| MethodEvaluation | v1.1.0 |
| Hydra | v0.0.5 |
| PredictionComparison | v1.0.0 |
| Eunomia | v1.0.0 |

### Included Sample Data Sources
| Sample Data Source | Size | Schema Name |
| --- | --- | ---
| [Synthea](https://github.com/synthetichealth/synthea) | 1,000 persons | synthea1k |
| [Synthea](https://github.com/synthetichealth/synthea) | 100,000 persons | synthea100k |
| [Synthea](https://github.com/synthetichealth/synthea) | >2,000,000 persons | synthea23m |
| [CMS DeSynPUF](https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DE_Syn_PUF.html) | 1,000 persons | CMSDESynPUF1k |
| [CMS DeSynPUF](https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DE_Syn_PUF.html) | 100,000 persons | CMSDESynPUF100k |
| [CMS DeSynPUF](https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DE_Syn_PUF.html) | >2,000,000 persons | CMSDESynPUF23m |


## Topics
* [OHDSI on AWS architecture and features](#ohdsi-on-aws-architecture-and-features)
* [OHDSI on AWS deployment instructions](#ohdsi-on-aws-deployment-instructions)
* [Using RStudio](#using-rstudio)
* [Troubleshooting Deployments](#troubleshooting-deployments)
* [Ongoing Operations](#on-going-operations)

## OHDSI on AWS architecture and features
The features of using this architecture are as follows:
* It’s deployed in an isolated, three-tier Amazon Virtual Private Cloud (Amazon VPC).
* Can be deployed with access from the public Internet, or accessible only from within your organization's private network.
* It deploys the OMOP CDM with clinical and vocabulary data, Atlas, WebAPI, Achilles, and RStudio with PatientLevelPrediction, CohortMethod, and many other R libraries.
* Provides role-based access control for Atlas and RStudio
* It uses data-at-rest and in-flight encryption to respect the requirements of HIPAA.
* It uses managed services from AWS; OS, middleware, and database patching and maintenance is largely automatic.
* It creates automated backups for operational and disaster recovery.
* It’s built automatically in just a few hours.
* Environments can be configured from very small to peta-byte scale, geographically redundant implementations by providing different deployment parameters.
* [The design results in a reasonable monthly cost](https://calculator.s3.amazonaws.com/index.html#r=IAD&key=files/calc-c9b38d98bce4e14c47294b62c554b76590423670&v=ver20190718a0) 

A high-level diagram showing how the different components of OHDSI map to AWS Services is shown below.  
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/ohdsi_architecture_block_diagram.png "AWS OHDSI High-Level Diagram")

##### Internet Accessible v. Private Network Only Architectures
There are two versions of the OHDSIonAWS architecture, one that allows access to your OHDSI environment from the Internet and the other that only allows access from your organization's private network.  These two versions use the same underlying technical architecture for OHDSI and only vary in the way they access to the tool web interfaces.

With the **Internet Accessible** version, the OHDSIonAWS architecture is deployed in an AWS three-tiered VPC, with Internet access, using network address ranges that you specify.  You can restrict who can access your OHDSI environment over the Internet by providing an allowed public IP address range as a parameter when the environment is deployed.  This version is useful for environments with non-sensitive data, public-facing demonstrations, training environments, or test deployments.

With the **Private Network Only** version, the OHDSIonAWS architecture is deployed into a pre-existing AWS VPC that you specify during deployment.  This can be a VPC that you designed and deployed or one provided to you from your organization's central IT team.  The VPC you specify can be connected back to your organization's on-premises internal network using a [VPN connection](https://docs.aws.amazon.com/vpc/latest/userguide/vpn-connections.html) or [AWS Direct Connect connection](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html).  The OHDSI environment is then deployed using only internal, private IP addressing and can only be accessed from within your organization's internal, private network.  This version is useful for production analytics environments containing sensitive data. 

##### General Architecture Description

Starting from the user, public Internet DNS services are (optionally) provided by **Amazon Route 53**.  This gives you the ability to automatically add a domain to an existing hosted zone in Route 53 (i.e. ohdsi.example.edu if example.edu is already hosted in Route 53).  In addition, if you are deploying a new domain to Route 53, an SSL certificate can be automatically generated and applied using **AWS Certificate Manager (ACM)**.  This enables HTTPS communication and ensures the data sent from the users is encrypted in-transit (in accordance with HIPAA).  HTTPS communication is also used between the Application Load Balancers and the Atlas/WebAPI servers.

The default configuration of this environment is to have your Atlas and RStudio instances accessible over the public Internet.  A parameter is provided to limit the source IP addresses that can access these resources, but for use with sensitive data this environment should be deployed in a completely private network and only accessed via [VPN connection](https://docs.aws.amazon.com/vpc/latest/userguide/vpn-connections.html), [AWS Direct Connect connection](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html), or [VPC Peering connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html).  For more information about how to configure your deployment in this way, please reach out to [James Wiggins at wiggjame@amazon.com](mailto:wiggjame@amazon.com).

**AWS Elastic Beanstalk** is used to deploy the OHDSI application onto Apache/Tomcat Linux servers.  Elastic Beanstalk is an easy-to-use service for deploying and scaling web applications. It covers everything from capacity provisioning, load balancing, regular OS and middleware updates, autoscaling, and high availability, to application health monitoring. Using a feature of Elastic Beanstalk called ebextensions, the Atlas/WebAPI servers are customized to use an encrypted storage volume for the middleware application logs.

**Amazon Relational Database Service (RDS)** with Amazon Aurora PostgreSQL is used to provide an (optionally) highly available database for the WebAPI database.  Amazon Aurora is a relational database built for the cloud that combines the performance and availability of high-end commercial databases with the simplicity and cost-effectiveness of open-source databases. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching, and backups. It is configured for high availability and uses encryption at rest for the database and backups, and encryption in flight for the JDBC connections.  The data stored inside this database is also encrypted at rest.

**Amazon Redshift** is used to store the OMOP CDM that contains your patient-level observational health data as well as your vocabulary tables.  Amazon Redshift is a fast, fully managed data warehouse that allows you to run complex analytic queries against petabytes of structured data. It uses using sophisticated query optimization, columnar storage on high-performance local disks, and massively parallel query execution. 

**Amazon Elastic Compute Cloud (EC2)** is used host a multi-user RStudio Server Open Source Edition instance.  RStudio is an web-based, integrated development environment (IDE) for working with R. It can be licensed either [commercially](https://aws.amazon.com/marketplace/pp/B06W2G9PRY?qid=1521764031094&sr=0-1&ref_=srh_res_product_title) or under [AGPLv3](https://www.rstudio.com/products/rstudio/download-server/).  On the RStudio instance, an encrypted AWS Elastic Block Store (EBS) volume is mounted as the home directory for all RStudio user’s files.

**Amazon SageMaker** is used to build, train, and deploy machine learning models to predict patient health outcomes developed with the OHDSI PatientLevelPrediction R package.  Amazon SageMaker is a fully-managed service that covers the entire machine learning workflow to label and prepare your data, choose an algorithm, train the algorithm, tune and optimize it for deployment, make predictions, and take action. Your models get to production faster with much less effort and lower cost.

A more detailed, network-oriented diagram of this environment is shown following.
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/ohdsi_architecture_network_diagram.png "AWS OHDSI Network Diagram")

## OHDSI on AWS deployment instructions
Before deploying an application on AWS that transmits, processes, or stores protected health information (PHI) or personally identifiable information (PII), address your organization's compliance concerns. Make sure that you have worked with your internal compliance and legal team to ensure compliance with the laws and regulations that govern your organization. To understand how you can use AWS services as a part of your overall compliance program, see the [AWS HIPAA Compliance whitepaper](https://d0.awsstatic.com/whitepapers/compliance/AWS_HIPAA_Compliance_Whitepaper.pdf). With that said, we paid careful attention to the HIPAA control set during the design of this solution.

#### Pre-flight check
##### If you intend to use Route 53 for DNS or ACM to provide an SSL certificate
Automatically provisioning and applying an SSL certificate with this CloudFormation template using ACM requires the use of Route 53 for your DNS service.  If you have not already done so, [create a new Route 53 Hosted Zone](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/CreatingHostedZone.html), [transfer registration of an existing domain to Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html), or [transfer just your DNS service to Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html).

If you do not intend to use Route 53 and ACM to automatically generate and provide an SSL certificate, [an SSL certificate can be applied to your environment after it is deployed](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/configuring-https-elb.html).

##### Ensure you have appropriate permissions and limits
0.1. This template must be run by an AWS IAM User who has sufficient permission to create the required resources.  These resources include:  VPC, IAM User and Roles, S3 Bucket, EC2 Instance, ALB, Elastic Beanstalk, Redshift Clusters, SageMaker models, Route53 entries, and ACM certificates.  If you are not an Administrator of the AWS account you are using, please check with them before running this template to ensure you have sufficient permission.  

0.2. This template will create two S3 buckets.  By default, AWS accounts have a limit of 100 S3 buckets.  If you are near that limit, please either delete some unused S3 buckets or [request a limit increase](https://console.aws.amazon.com/support/cases#/create?issueType=service-limit-increase) before running this template.

#### Begin deployment
1. Begin the deployment process by clicking the **Launch Stack** button at the top of this page that matches the AWS Region you'd like to use.  This will take you to the [CloudFormation Manage Console](https://console.aws.amazon.com/cloudformation/) and specify the OHDSI Cloudformation template.  Then click the **Next** button in the lower-right corner. 

2. The next screen will take in all of the parameters for your OHDSI environment.  A description is provided for each parameter to help explain its function, but following is also a detailed description of how to use each parameter.  At the top, provide a unique **Stack Name**.    

##### General AWS parameters
|Parameter Name| Description|
|---------------|-----------|
| EC2 Key Pair | **Required** You must choose a key pair.  This will allow you SSH access into your WebAPI/Atlas and RStudio instances.  To learn more about administering the instances in this OHDSI environment, see the **On-going Operations** section below.|
| Limit access to IP address range? | **Required** This parameter allows you to limit the IP address range that can access your Atlas and RStudio servers.  It uses [CIDR notation](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).  The default of 0.0.0.0/0 will allow access from any address.|

##### DNS and SSL parameters
|Parameter Name| Description|
|--------------|------------|
| Elastic Beanstalk Endpoint Name | **Required** This unique name will be combined with [AWS Region identifier](https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region) (i.e. ```us-east-1```) to determine the web address for your Atlas and RStudio servers.  The Elastic Beanstalk URL (will be rendered http://(EBEndpointName).(region).elasticbeanstalk.com).  You can check to see if an endpoint name is in use by checking for an existing DNS entry using the 'nslookup' command from your Windows, MacOS, or Linux terminal: ```# nslookup (EBEndpoint).(region).elasticbeanstalk.com```.  If nslookup returns an IP address, that means that the name is in use and you should pick a different name. You need to pick an Elastic Beanstalk Endpoint Name even if you are using a Route53 DNS entry. |
| Use Route 53? | If you select **True**, a DNS record will automatically be created using the Route53 parameters below.  If you select **False**, then the Elastic Beanstalk assigned domain name will be used. |
| Apply SSL Certificate? | Requires the use of Route53.  If you select **True**, an SSL certificate will be automatically generated for your domain name using AWS Certificate Manager (ACM). If you select **False**, HTTP will be used and an SSL certificate can be applied after deployment. |
| Route53 Hosted Zone ID | Optional, only needed if using Route53.  The Route 53 hosted zone ID to create the site domain in (e.g. Z2FDTNDATAQYW2).  You can find this value by looking up your Hosted Zone in the [Route53 Management Console](https://console.aws.amazon.com/route53/). |
| Route53 Hosted Zone Domain Name | Optional, only needed if using Route53.  The Route 53 hosted zone domain name to create the site domain in (e.g. example.edu).  You can find this value by looking up your Hosted Zone in the [Route53 Management Console](https://console.aws.amazon.com/route53/). |
| Route53 Site Domain | Optional, only needed if using Route53.  The sub-domain name you want to use for your OHDSI implementation. This name will be prepended your specified Hosted Zone Domain Name (e.g. ohdsi in ohdsi.example.edu). |

##### Database Tier parameters
|Parameter Name| Description|
|--------------|------------|
| Use Primary and Standy Database Instances? | Specifies whether to deploy the AWS Aurora PostgreSQL WebAPI database in a Multi-AZ configuration.  This provides a stand-by database for high availability in the event the primary database fails. |
| DB Instance Type | Determines processing power and memory capacity of the WebAPI database.  The default of ```r4.large``` should be sufficient for most environments.  Details of other instance types can be found in the [Amazon Aurora documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.DBInstanceClass.html).|
| Instance Type for Redshift cluster nodes | Determines the processing power and storage capacity of OMOP CDM data warehouse.  Additional speed and space can be added by choosing a larger Instance Type or by increasing the number of nodes (parameter below).  Additional scaling details can be found in [the Redshift documentation](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes). |
| Number of nodes in your Redshift cluster | **Required** The number of nodes determines the overall processing power and storage space of your OMOP CDM data warehouse.  Additional scaling details can be found in [the Redshift documentation](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes). |
| Aurora PostgreSQL and Redshift master password | **Required** This password will be used for the ```master``` user of the Aurora PostgreSQL WebAPI database and the Redshift OMOP CDM data warehouse.  It must have a length of 8-41 and be letters (upper or lower), numbers, and/or these special characters ```~#%^*_+,-```.

##### OMOP Sources parameters
These parameters allow you to specify any number of OMOP formatted data sources that will be automatically loaded into your OHDSI environment.  After they are loaded, the Achilles project will be used to populate a Results schema for each source enabling population-level visualizations within Atlas and also data quality feedback from Achilles Heel.

|Parameter Name| Description|
|--------------|------------|
| Comma-delimited list of OMOP CDM schema sources to load into the Redshift datawarehouse | Comma-delimited list of OMOP CDM schema sources to load into the Redshift datawarehouse.  By default, this is set to ```CMSDESynPUF23m,CMSDESynPUF100k,CMSDESynPUF1k,synthea23m,synthea100k,synthea1k``` which will load all six of the sample data sources.  Edit this list to include only the data sources you want in your environment.  This is also where you can specify your own custom data sources. |
| S3 Bucket that contains DDL SQL files name after each 'Source'.sql that will be executed to load data into the OMOP CDM schema sources. | S3 Bucket that contains DDL SQL files name after each 'Source'.sql that will be executed to load data into the OMOP CDM schema sources. |

###### Included sample data sources
Ultimately, you will want to provide your own custom data sources, but to get started there are several sample, synthetic data sources available for you to use.  They are listed in the table below.

| Sample Data Source | Size | Schema Name |
| --- | --- | ---
| [Synthea](https://github.com/synthetichealth/synthea) | 1,000 persons | synthea1k |
| [Synthea](https://github.com/synthetichealth/synthea) | 100,000 persons | synthea100k |
| [Synthea](https://github.com/synthetichealth/synthea) | >2,000,000 persons | synthea23m |
| [CMS DeSynPUF](https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DE_Syn_PUF.html) | 1,000 persons | CMSDESynPUF1k |
| [CMS DeSynPUF](https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DE_Syn_PUF.html) | 100,000 persons | CMSDESynPUF100k |
| [CMS DeSynPUF](https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DE_Syn_PUF.html) | >2,000,000 persons | CMSDESynPUF23m |

###### Using your own custom data sources
To configure your own custom data source, provide the schema names you want to use (i.e. CMSDESynPUF1k) and an S3 bucket that contains matching named files (i.e. CMSDESynPUF1k.sql) with Redshift-compatible SQL statements to load the OMOP tables.  Examples of these load files can be found in this repository [CMSDESynPUF1k.sql](https://github.com/JamesSWiggins/ohdsi-cfn/blob/master/CMSDESynPUF1k.sql) and [CMSDESynPUF23m](https://github.com/JamesSWiggins/ohdsi-cfn/blob/master/CMSDESynPUF23m.sql).  Please note the top of the files must set the search path to the specified schema name (i.e. ```SET search_path to CMSDESynPUF1k;```).  Documnetation provides more information on [using the Redshift COPY command](https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html).

Creating and S3 bucket and uploading the 'Source'.sql files:
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/upload_data_sources.gif "Uploading OMOP data sources.")

##### RStudio parameters
|Parameter Name| Description|
|--------------|------------|
| Instance Type for RStudio | This determines the processing power of your multi-user RStudio instance.  About 0.75GB per concurrent user is recommended.  For more information, see the [list of available EC2 instnance types](https://aws.amazon.com/ec2/instance-types/). |
| Home Directory size for RStudio instance | The amount of encrypted disk space, in GBs, allocated to store RStudio user's local data. |
| Comma-delimited user list for RStudio | Provide a comma separated list of usernames and passwords (user1,pass1,user2,pass2) to create on the RStudio Server. The first user in the list will be given sudoers access. |
| Bucket for PatientLevelPrediction SageMaker Models | Name of the S3 bucket you want to use to hold the PatientLevelPrediction training data and model output for SageMaker.  If you leave this blank a bucket will be generated for you. |

##### Web Tier parameters
The web tier contains the Atlas/WebAPI Apache and Tomcat auto-scaling instances behind a load balancer.  This allows Atlas/WebAPI to be fault tolerant and highly available while also growing and shrinking the number of instances based on load.

|Parameter Name| Description|
|--------------|------------|
| Web Tier Instance Type | This determines the processing power of your Atlas/WebAPI instances.  ```t2.micro``` should be sufficient for small implementations (5 or less concurrent users).  For more information, see the [list of available EC2 instnance types](https://aws.amazon.com/ec2/instance-types/). |
| Minimum Atlas/WebAPI Instances | **Required** Specifies the minimum number of EC2 instances in the Web Autoscaling Group. A value of >1 will create a highly available environment by placing instances in multiple availability zones. |
| Minimum Atlas/WebAPI Instances | **Required** Specifies the maximum number of EC2 instances in the Web Autoscaling Group. Must be greater than or equal to the Minimum Atlas/WebAPI Instances. |
| Enable Authentication For Atlas? | If true, this will use the comma-delimited list of usernames and passwords provided for RStudio to control access to Atlas.  The first user in the list will be an 'admin' |


##### OHDSI Project Versions parameters
This parameters section contains a list of the OHDSI components that will be deployed in your environment and allows you to provide the version number as a parameter.  Default versions are provided that work well together, but you can provide your own version numbers if you desire.  The version number here must map to a **tagged release** or **branch** for that component in it's GitHub repository.  For instance, this is the [list of tagged releases for the OHDSI WebAPI project](https://github.com/OHDSI/WebAPI/tags).
<p align="center">
<img src="https://github.com/OHDSI/OHDSIonAWS/blob/master/images/latest_versions.png">
</p>

##### VPC Networking parameters (Internet Accessible version)
As a part of this deployment, a new [AWS Virtual Private Cloud (VPC)](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html) is created using the IP address ranges that you specify.  This VPC provides a public tier that is accessible from the Internet and contains a load balancer.  The application and data tiers, which contain the OHDSI applications and databases respectively, are not accessible directly from the Internet.  

##### VPC Networking parameters (Private Network Only version)
As a part of this deployment, you specify and existing VPC and subnets within that VPC to use for each tier of the OHDSIonAWS architecture (presentation, application, and database).  For each tier, you provide two subnets, giving you the ability to spread your deployment over two [AWS Availability Zones within the AWS Region](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html) you chose.  The Presentation Tier in this architecture, as well as the Application and Data tiers, only use private IP addressing, so none of the resources are accessible from the Internet.  This environment is only accessible from your internal, private network.  This private VPC can also be connected back to your internal, on-premises network using a [VPN connection](https://docs.aws.amazon.com/vpc/latest/userguide/vpn-connections.html) or [AWS Direct Connect connection](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html).

When you've provided appropriate values for the **Parameters**, choose **Next**.

3. On the next screen, you can provide some other optional information like Tags, alternative Permissions, etc. at your discretion.  This information isn't necessary for typical deployments. Then choose **Next**.

4. On the next screen, you can review what will be deployed. At the bottom of the screen, there is a check box for you to acknowledge that **AWS CloudFormation might create IAM resources with custom names** and **AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND**. This is correct; the template being deployed creates four custom roles that give permission for the AWS services involved to communicate with each other. Details of these permissions are inside the CloudFormation template referenced in the URL given in the first step. Check the box acknowledging this and choose **Next**.

5. You can watch as CloudFormation builds out your OHDSI environment. A CloudFormation deployment is called a *stack*. The parent stack creates several child stacks depending on the parameters you provided.  When all the stacks have reached the green CREATE_COMPLETE status, as shown in the screenshot following, then the OHDSI architecture has been deployed.  Select the **Outputs** tab to find your OHDSI environment URLs.

**NOTE:** Even though Atlas and RStudio are now accessible, in the background, the data sources you specified are still being loaded and the results schema is still being populated by Achilles.  Until the first source is added, you will see an [error message in Atlas](./images/nosources.png) indicating that there are no sources.  The process of adding all of your data sources can take anywhere from 30 minutes to several hours to complete depending on the number and size of data sources you specified and the size of your Redshift cluster.  During this time, browsing Data Sources in Atlas may not be successful and performance will be slow.  You can check the progress of your data sources by looking in the [Redshift Management Console](https://us-west-2.console.aws.amazon.com/redshift/home#cluster-list:), clicking on your cluster, and looking at the **Queries tab**.

![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/click_outputs.gif "Clicking OHDSI Urls")


## Using RStudio
Inside of each user's home directory in RStudio is a file called **ConnectionDetails.R**.  It contains all of the connection parameters needed to use OHDSI components like [PatientLevelPrediction](https://github.com/OHDSI/PatientLevelPrediction), [CohortMethod](https://github.com/OHDSI/CohortMethod), or [Achilles](https://github.com/OHDSI/Achilles).  
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/rstudio_connection_details.png "ConnectionDetails.R")

These components and all of their dependencies are also pre-installed and can be invoke simply by issueing the command ```library(PatientLevelPrediction)```, ```library(CohortMethod)```, or ```library(Achilles)```.
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/rstudio_ohdsi_libraries.png "ConnectionDetails.R")

Users can change their passwords after logging in by going to the **Terminal** and using the Linux ``# passwd`` command as shown following.
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/change_password.png "Change Password")

New users can also be added to the RStudio server by logging in with a user who has sudo access and using the Linux ``# adduser`` command as shown following.  Recall that the first user you provided in the RStudio user list parameter was given sudo access.  
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/adduser.png "Add User")


## Troubleshooting Deployments

#### CloudFormation Events
A CloudFormation deployment is called a *stack*.  The OHDSI template deploys a number of child or *nested* stacks depending on which options you choose.  If one of the steps in any of these stacks fail during deployment, all of the stacks will be *rolled back*, meaning that they will be deleted in the reverse order that they were deployed.  In order to understand why a deployment rolled back, it can be helpful to look at the *events* that CloudFormation recorded during deployment.  You can do this by looking at the Events tab of each stack.  If a stack has already been rolled back, you will have to change the *filter* in the upper-left corner of the CloudFormation Management Console from it's default of *Active* to *Deleted* to see it's event log.  A demonstration of this is shown following.
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/cloudformation_events.gif "Browsing CloudFormation Events")

#### Build Log
During the build process a temporary Linux instance is created that compiles WebAPI, combines it with Atlas, loads all of your OMOP data sets into Redshift, runs Achilles, and performs various other configuration functions.  You can see a log of the work that it did by looking in the [**CloudWatch Logs Management Console** under the *Log Group* ```ohdsi-temporary-ec2-instance-build-log```](https://console.aws.amazon.com/cloudwatch/home?logs%3A=#logStream:group=ohdsi-temporary-ec2-instance-build-log).
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/cloudwatch_logs.gif "Browsing Cloudwatch Logs")

## On-going Operations
At this point, you have a fully functioning and robust OHDSI environment to begin using.  Following are some helpful points to consider regarding how to support this environment on-going.

#### Upgrading Atlas/WebAPI

<a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?templateURL=https://s3.amazonaws.com/ohdsi-rstudio/upgrade_atlas_webapi.yaml" target="_blank"><img src="https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png"/></a> 

Click the above **Launch Stack** button to deploy a CloudFormation template that will allow you to specify a new version of Atlas and WebAPI.  It will then download and compile this new version with the parameters you supply and replace your current version running within Elastic Beanstalk.

#### Web Security
If your OHDSI implementation will be accessible over the public Internet, consider implementing a [AWS Web Application Firewall (WAF)](https://aws.amazon.com/waf/) to help protect against common web exploits that could affect availability, compromise security or consume excessive resources.  You can use AWS WAF to create custom rules that block common attack patterns, such as SQL injection or cross-site scripting.  Learn more in the whitepaper ["Use AWS WAF to Mitigate OWASP’s Top 10 Web Application Vulnerabilities"](https://d0.awsstatic.com/whitepapers/Security/aws-waf-owasp.pdf) .  You can deploy AWS WAF on either Amazon CloudFront as part of your CDN solution or on the Application Load Balancer (ALB) that was deployed as a part of this solution.

#### Pull logs, view monitoring data, get alerts, and apply patches
Using the Elastic Beanstalk service you can [pull log files from one or more of your instances](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.logging.html).  You can also [view monitoring data](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environments-health.html) including CPU utilization, network utilization, HTTP response codes, and more.  From this monitoring data, you can [configure alarms](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.alarms.html) to notify you of events within your Atlas/WebAPI application environment.  Elastic Beanstalk also makes [managed platform updates available](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-platform-update-managed.html), including Linux, Tomcat, and Apache upgrades that you can apply during maintanence windows your define.

Using AWS Relational Database Services (RDS) you can [pull log files from you Aurora PostgreSQL database](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html).  You can also [view monitoring data and create alarms on metrics](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Monitoring.html) including disk space, CPU utilization, memory utilization, and more.  RDS also makes available [Aurora MySQL DB Engine upgrades](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Updates.html) that are applied automatically during a maintenance window you define.

Using Amazon Redshift you can [implement audit logging](https://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html) for your OMOP CDM.  You can also [view performance data](https://docs.aws.amazon.com/redshift/latest/mgmt/metrics.html) about overall cluster cpu and disk space utilization, across nodes, and [view the performance of individual queries](https://docs.aws.amazon.com/redshift/latest/mgmt/performance-metrics-queries.html).  Redshift also gives you the ability to execute queries against you OMOP CDM [from within the Redshift Management Console](https://docs.aws.amazon.com/redshift/latest/mgmt/query-editor.html).  Redshift cluster maintenance, such as cluster patching, is also [automatically applied during maintenance windows that you define](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-cluster-maintenance). 

#### Access Running Atlas/WebAPI and RStudio Instances
If you need to access the command line on the running Atlas/WebAPI or RStudio instances, this can be done by using the [AWS Systems Manager Session Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html).   It lets you manage your Amazon EC2 instances through an interactive one-click browser-based shell or through the AWS CLI. Session Manager provides secure and auditable instance management without the need to open inbound ports, maintain bastion hosts, or manage SSH keys.  Just go to the the [AWS Systems Manager Session Manager Console](https://console.aws.amazon.com/systems-manager/session-manager/) and **click Start session**.  You'll then see a list of your OHDSI instances.  Select the one that you want to access and **click Start session**.  Now you have a shell with sudoers access.
![alt-text](https://github.com/OHDSI/OHDSIonAWS/blob/master/images/ohdsi-session-manager.gif "OHDSI Session Manager demo") 

#### Fault tolerance and backups
Elastic Beanstalk keeps a highly available copy of your current and previous Atlas/WebAPI application versions as well as your environment configuration.  This can be used to re-deploy or re-create your Atlas/WebAPI application environment at any time and serves as a 'backup'.  You can also [clone an Elastic Beanstalk environment](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.managing.clone.html) if you want a temporary environment for testing or as a part of a recovery exercise.  High availability and fault tolerance are provided are achieved by [configuring your environment to have a minimum of 2 instances](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.managing.as.html).  Elastic Beanstalk will deploy these Atlas/WebAPI application instances over multiple availability zones.  If an instance is unhealthy it will automatically be removed and replaced.

The AWS Relational Database Service (RDS) automatically takes backups of your database that you can use to restore or "roll-back" the state of your application.  You can [configure how long they are retained and when they are taken using the RDS management console](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html).  These backups can also be used to create a copy of your database for use in testing or as a part of a recovery exercise.  High availability and fault tolerance are provided by using the ['Multi-AZ' deployment option for RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html).  This creates a primary and secondary copy of the database in two different availability zones.  

Amazon Redshift [automatically takes snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html) of your OMOP data warehouse that can be used to recover it in the event of a disaster or roll-back to a previous state.  You have the ability to restore the entire OMOP database or single tables.  You can also change the interval at which snapshots are taken and change their retention period.

#### Scalability
Your Elastic Beanstalk environment is configured to scale automatically based on CPU utilization within the minimum and maximum instance parameters you provided during deployment.  [You can change this configuration](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.managing.as.html) to specify a larger minimum footprint, a larger maximum footprint, different instance sizes, or different scaling parameters.  This allows your Atlas/WebAPI application environment to respond automatically to the amount of load seen from your users.

Your Relational Database Environment can be scaled by [selecting a larger instance type](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Managing.Performance.html#AuroraMySQL.Managing.Performance.InstanceScaling) or increasing the storage capacity of your instances.

Your Redshift data warehouse can be scaled for larger storage or more performance.  This is done by [resizing your Redshift cluster](https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html) to either use larger nodes, more nodes, or both.
