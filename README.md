# TwitterCloneElixir

A Twitter Clone to start learning Elixir and Phoenix.

Based on a [Youtube Video](https://www.youtube.com/watch?v=MZvmYaFkNJI).

## Demo

This are the screenshots of the first stage of this Twitter Clone.

![alt text](./readme/demo.png)

https://user-images.githubusercontent.com/49988070/211148974-6b1468aa-6f11-40a3-806c-6b2b3ebb1060.mp4

## Ecto

To create the database run with Docker installed:

```
docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres
```

## Elixir Docs

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

# Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
