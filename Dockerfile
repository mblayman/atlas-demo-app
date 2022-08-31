FROM nickblah/lua:5.4.3-luarocks

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake

COPY app-1-1.rockspec luarocks.lock /srv/

WORKDIR /srv

RUN luarocks make

COPY app /srv/app/

CMD ["/usr/local/bin/atlas", "serve", "--host", "0.0.0.0", "app.main:app"]
