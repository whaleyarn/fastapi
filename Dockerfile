FROM python:3.14.3-slim

WORKDIR /workspace

COPY requirements.txt /tmp/requirements.txt

RUN pip install --no-cache-dir -r /tmp/requirements.txt \
    && rm -f /tmp/requirements.txt

EXPOSE 8000

CMD ["uvicorn", "--host", "0.0.0.0", "--port", "8000"]
