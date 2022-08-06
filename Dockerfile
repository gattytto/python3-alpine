FROM docker.io/amd64/python:3.9-alpine
ENV CARGO_BUILD_JOBS=2
RUN pip install --upgrade pip
RUN pip install \
                solana \
                base58 \
                kubernetes \
                requests \
                debugpy \
                grpcio \
                grpcio-reflection \
                protobuf \
                grpcio-health-checking \
                google-api-core[grpc] \
                libcst==0.3.23 \
                googleapis-common-protos>=1.55.0 \
                proto-plus >= 1.19.7 \
                quart \
                pynacl \
                hypercorn
RUN apk add --no-cache \
                gcc \
                libffi-dev \
                musl-dev \
                openssl-dev

