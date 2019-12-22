FROM alpine:latest

LABEL "maintainer"="bpicode"
LABEL "com.github.actions.name"="action-upload-bintray"
LABEL "com.github.actions.description"="Upload files to JFrog Bintray"
LABEL "com.github.actions.icon"="upload"
LABEL "com.github.actions.color"="green"

RUN apk --no-cache add curl

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
