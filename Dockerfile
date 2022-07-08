FROM docker.io/amd64/python:3.9-alpine
RUN apk add --no-cache gcc libffi-dev musl-dev python3-dev libffi-dev openssl-dev cargo && pip install flask pynacl python-dotenv
RUN pip install solana base58 kubernetes requests debugpy grpcio grpcio-reflection protobuf grpcio-health-checking
