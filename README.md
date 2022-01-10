# Docker image with http_proxy_connect installed

# Build
- `docker build -t nginx-upload:v1 . -f Dockerfile`

# Run
- ``docker run -p 8080:8080 -v "$(pwd)/nginx.conf":/etc/nginx/nginx.conf:ro --name nginx-forward andarius/nginx_proxy:latest`

# Test
- `curl https://github.com/ -v -x localhost:8080` to make an https request using the proxy
