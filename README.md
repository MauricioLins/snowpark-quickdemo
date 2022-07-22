![Alt text](images/Snowflake_Logo.svg.png)
![Alt text](images/welcome.jpg)

This repository is a quick introduction to **Snowpark** that was triggered by the Snowpark Day organised by Snowflake and its partners such as NTT DATA.

The data used in this demo was dowloaded from the UK Gov and this data is about the NHS COVID-19 Hospital Cases and Admimissions. The data is available in data folder, but it also can be downloaded **[here](https://coronavirus.data.gov.uk/details/download)**.


## Docker Build
```
sudo DOCKER_BUILDKIT=1 docker build .  --tag my-snowpark
```
## Docker Run
docker run -it --rm --name my-snowpark --network host -p 8888:8888 -v ${PWD}/workspace/:/worskpace my-snowpark


## ----
jupyter-lab --allow-root
