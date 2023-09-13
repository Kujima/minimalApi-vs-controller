# Wait to be sure that SQL Server came up
sleep 20s

# Run the setup script to create the DB and the schema in the DB
# Note: make sure that your password matches what is in the Dockerfile
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 34gm05izGGN0vAA83k59C3hg3WK7jX -d master -i 00-Init.sql