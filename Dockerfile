FROM python3-alpine 
RUN apk add --no-cache gcc libffi-dev musl-dev && pip install flask pynacl python-dotenv

