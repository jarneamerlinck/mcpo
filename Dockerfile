FROM nikolaik/python-nodejs:python3.13-nodejs22-slim as base
WORKDIR /app
RUN pip install mcpo uv mcp-server-fetch mcp-nixos


LABEL org.opencontainers.image.source=https://github.com/jarneamerlinck/mcpo
LABEL org.opencontainers.image.description="mcpo container with support for all my personal mcp services "
LABEL org.opencontainers.image.licenses=MIT


CMD ["mcpo", "--config", "/config.json"]
