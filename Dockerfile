FROM docker.io/amd64/python:3.9-alpine
RUN apk add --no-cache gcc libffi-dev musl-dev && pip install flask pynacl python-dotenv cargo
RUN pip install solana base58 kubernetes requests debugpy grpcio grpcio-reflection protobuf grpcio-health-checking
