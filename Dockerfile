FROM python:3.11-slim-bullseye

ADD checklink ./checklink
RUN pip install -U dumb-init
RUN pip install -e ./checklink

CMD ["dumb-init", "python3", "-m", "uvicorn", "checklink:app", "--host", "0.0.0.0", "--port", "8000", "--forwarded-allow-ips='*'", "--proxy-headers"]
