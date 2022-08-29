FROM rodolpheche/wiremock

COPY mappings ./mappings
COPY __files ./__files

# adding "--verbose" to the exact same CMD found in rodolpheche/wiremock
CMD java $JAVA_OPTS -cp /var/wiremock/lib/*:/var/wiremock/extensions/* com.github.tomakehurst.wiremock.standalone.WireMockServerRunner --verbose --local-response-templating
