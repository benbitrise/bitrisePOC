#!/bin/bash

VERSION=2.27.2
PORT=8080

cd -- "$(dirname "$BASH_SOURCE")"


java -jar wiremock-standalone-2.27.2.jar --verbose --enable-browser-proxying --local-response-templating
