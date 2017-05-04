FROM jetbrains/teamcity-server

# In order to modify teamcity configuration we need to relocated the data folder to a new path 
# since the one specified in the parent container is already used in a volume and is immutable.
ENV TEAMCITY_DATA_PATH /data/teamcity

# Enable Postgres ODBC driver.
ADD https://jdbc.postgresql.org/download/postgresql-42.0.0.jar ${TEAMCITY_DATA_PATH}/lib/jdbc/postgresql-42.0.0.jar

VOLUME $TEAMCITY_DATA_PATH

EXPOSE 8111
