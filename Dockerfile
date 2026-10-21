FROM python:3.11-alpine

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN adduser -D -g '' secopsuser

WORKDIR /app

COPY parser.py report.json ./

RUN chown -R secopsuser:secopsuser /app

USER secopsuser

ENTRYPOINT ["python", "parser.py"]
CMD ["-i", "report.json", "-o", "for_repair.json"]