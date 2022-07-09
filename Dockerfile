FROM docker.io/amd64/python:3.9-alpine
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN pip install --upgrade pip
RUN pip install solana base58 kubernetes requests debugpy grpcio grpcio-reflection protobuf grpcio-health-checking
RUN apk add --no-cache gcc libffi-dev musl-dev openssl-dev cargo && pip install flask pynacl python-dotenv libcst

