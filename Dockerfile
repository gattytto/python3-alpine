FROM docker.io/amd64/python:3.10.14-alpine3.20
#3.12-rc-alpine3.17
ENV CARGO_BUILD_JOBS=2

#RUN apk add build-base \
            #linux-headers

RUN pip install --upgrade pip

RUN pip install \
                grpcio==1.52.0 \
                boto3 \
                solana \
                base58 \
                kubernetes \
                requests \
                debugpy \
                grpcio-reflection \
                protobuf \
                grpcio-health-checking \
                google-api-core[grpc] \
                libcst==0.3.23 \
                googleapis-common-protos>=1.55.0 \
                proto-plus>=1.19.7 \
                quart \
                pynacl \
                hypercorn

RUN apk add --no-cache \
                gcc \
                libffi-dev \
                musl-dev \
                openssl-dev \
                aws-cli \
                jq

RUN pip list
