Wiremock install instructions:

Install docker (https://hub.docker.com/editions/community/docker-ce-desktop-mac)
Download the latest wiremock rules repo (ssh://git@bitbucket.athenahealth.com:7999/ec/wiremock.git)

From the wiremock rules repo root, in terminal issue the following commands:

docker-compose build
docker-compose up

Once running you can verify you have mocks by typing the following into a browser or postman:

http://localhost:8080/__admin/

**How to Use Wiremock?**

*Steps*
-> Run to Get all mappings request to check all configured mock endpoints
    GET http://localhost:8080/__admin/mappings

-> Run Create stub mapping to create a mock endpoint, provide request properties to be configured in postman body

    POST  http://localhost:8080/__admin/mappings
    BODY {
            "request": {
            },
            "response": {
            }
         }

-> To update or change any properties , use Update a mapping by ID. Provide the properties in postman body as you did for create mapping

    POST http://localhost:8080/__admin/mappings/<ID>
    BODY {
            "request": {
            },
            "response": {
            }
         }

-> Test your end point by http://localhost:8080/<endpoint configured>

**Wiki**

https://athenaconfluence.athenahealth.com/display/CCS/Using+Wiremock
