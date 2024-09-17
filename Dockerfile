FROM python:3.12.6-slim-bookworm
ENV DEBIAN_FRONTEND=noninteractive

RUN python -m pip install streamlit==1.37.0 requests==2.32.3
WORKDIR /app
COPY o_o.py /app

EXPOSE 8501

CMD ["streamlit", "run", "/app/o_o.py", "--server.port", "8501", "--server.address", "0.0.0.0"]


