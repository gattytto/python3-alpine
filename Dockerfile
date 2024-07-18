FROM docker.io/amd64/python:3.12.4-alpine3.20

RUN apk add --no-cache \
                aws-cli

