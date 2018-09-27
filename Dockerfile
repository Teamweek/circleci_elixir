FROM circleci/elixir:1.6

USER root

RUN apt-get update; \
    apt-get install -y \
      postgresql-client-9.6 \
      wkhtmltopdf

RUN mix local.rebar --force; \
    mix local.hex --force
      
USER circleci
