#syntax=docker/dockerfile:1
FROM swift
WORKDIR ./
COPY . .
ENV TERM xterm-256color
ENV CLICOLOR 1
CMD ["bash", "-l"]
CMD ["swift", "test"]
