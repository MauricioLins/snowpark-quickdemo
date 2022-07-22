![Alt text](images/Snowflake_Logo.svg.png)


## Docker Build
sudo DOCKER_BUILDKIT=1 docker build .  --tag my-snowpark

## Docker Run
docker run -it --rm --name my-snowpark --network host -p 8888:8888 -v ${PWD}/workspace/:/worskpace my-snowpark


## ----
jupyter-lab --allow-root
