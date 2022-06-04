FROM docker.io/amd64/python:3-alpine
RUN apk add --no-cache gcc libffi-dev musl-dev && pip install flask pynacl python-dotenv && 
    pip install solana base58 kubernetes requests debugpy
