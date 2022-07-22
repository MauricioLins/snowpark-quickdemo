![Alt text](images/Snowflake_Logo.svg.png)
![Alt text](images/welcome.jpg)


This repository is a quick introduction to **Snowpark** that was triggered by the Snowpark Day organised by Snowflake and its partners such as NTT DATA.

The data used in this demo was dowloaded from the UK Gov and this data is about the NHS COVID-19 Hospital Cases and Admimissions. The data is available in data folder, but it also can be downloaded **[here](https://coronavirus.data.gov.uk/details/download)**.


## Snowflake Dataset Preparation
As these datasets are in JSON format we must have a table with a variant column to proceed with the JSON parsing in Snowflake.

To run this demo you will need to prepare these items in Snowflake:

1. Create a storage location to copy the files (Azure, AWS, GCP). In this case we have used Azure as below:
![Azure Storage](images/azure_storage.png)

2. Create an Azure Integration (in this case), you can look at the Snowflake documentation to know more **[here](https://docs.snowflake.com/en/sql-reference/sql/create-storage-integration.html)**:
![Azure Integration](images/azure_integration.png)

3. Create a Snowflake File Format and Stage:
![Azure Stage](images/azure_stage.png)

4. For this demonstration was created a table that will be consumed by the Snowpark notebook:
![Snowflake Table](images/snowflake_table.png)


## Docker Preparation

To run this a docker has been prepared to simplify the libraries installation and to help us to focus on the data straight away. To run this docker image please **clone this repository and follow the instructions below**.

### Docker Build
```
DOCKER_BUILDKIT=1 docker build .  --tag snowpark-quickstart
```
### Docker Run
```
docker run -it --rm --name my-snowpark  -p 8888:8888  -v ${PWD}/workspace:/worskpace snowpark-quickstart
```

### Run the Jupyter Lab
Once you are in the docker just run the command below to enable the Jupyter Lab notebook:

* Docker container prompt
```
*root@92fda7eba3fe:/workspace#*
```
* Run the command below:
```
jupyter-lab --allow-root
```