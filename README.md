# Video Stream Benchmark

Starts a given number of concurrent connections of a given duration on a given stream URL(RTSP/RTMP/HLS)

## Setup

**Install Docker**

https://docs.docker.com/install/

**Pull docker image from hub.docker.com**

`docker pull psyb0t/video-stream-benchmark:latest`

## Usage

`docker run --rm psyb0t/video-stream-benchmark [connection_length] [connection_num] [benchmark_url]`

* connection_length - the time to spend on a ongoing connection in seconds
* connection_num - the number of concurrent connections to start
* benchmark_url - the stream URL to benchmark

**Example Command**

`docker run --rm psyb0t/video-stream-benchmark 60 100 http://streaming-server.net/stream/playlist.m3u8`

**Example Output**

```
{
  "benchmark_url": "http://streaming-server.net/stream/playlist.m3u8",
  "connection_length": 60,
  "connection_number": 100,
  "elapsed_time": "62016ms",
  "success_count": 100,
  "error_count": 0
}
```
