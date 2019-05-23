# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :extwitter, :oauth, [
  consumer_key:        System.get_env("CONSUMER_KEY")        || "${CONSUMER_KEY}",
  consumer_secret:     System.get_env("CONSUMER_SECRET")     || "${CONSUMER_SECRET}",
  access_token:        System.get_env("ACCESS_TOKEN")        || "${ACCESS_TOKEN}",
  access_token_secret: System.get_env("ACCESS_TOKEN_SECRET") || "${ACCESS_TOKEN_SECRET}"
]