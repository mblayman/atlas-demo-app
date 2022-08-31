FROM nickblah/lua:5.4.3-luarocks

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake

COPY app-1-1.rockspec luarocks.lock /app/

WORKDIR /app

RUN luarocks make
