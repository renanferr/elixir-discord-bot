FROM elixir
WORKDIR /app
COPY . .
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
RUN mix compile
EXPOSE 3000
CMD ['iex', '-S', 'mix']