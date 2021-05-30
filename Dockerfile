FROM bitwalker/alpine-elixir-phoenix:latest

WORKDIR /app

COPY lib ./lib

COPY mix.exs .
COPY mix.lock .

RUN mix local.hex --force

CMD mix deps.get  && mix run --no-halt
