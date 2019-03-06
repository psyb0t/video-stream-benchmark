FROM ubuntu
RUN apt-get update && apt-get -y upgrade && apt-get install -y \
    python3 \
    ffmpeg
COPY app /app
WORKDIR /app
ENTRYPOINT ["python3", "benchmark"]
