# ElixirApp

## Pré-requisitos

- Elixir >= 1.14
- Erlang/OTP
- PostgreSQL (banco de dados)

## Instalação

1. **Instalar dependências:**
   ```bash
   mix setup
   ```

2. **Configurar o banco de dados:**
   
   Edite `config/dev.exs` e ajuste as credenciais do PostgreSQL:
   ```elixir
   config :elixir_app, ElixirApp.Repo,
     username: "postgres",
     password: "postgres",
     hostname: "localhost",
     database: "elixir_app_dev"
   ```

3. **Criar o banco de dados:**
   ```bash
   mix ecto.create
   ```

4. **Rodar migrations (opcional):**
   ```bash
   mix ecto.migrate
   ```

## Executar o projeto

```bash
mix phx.server
```

Ou no IEx interativo:

```bash
iex -S mix phx.server
```

Acesse em [`localhost:4000`](http://localhost:4000)

## Comandos úteis

| Comando | Descrição |
|---------|-----------|
| `mix phx.server` | Iniciar servidor |
| `mix ecto.create` | Criar banco de dados |
| `mix ecto.migrate` | Executar migrations |
| `mix test` | Rodar testes |
| `mix phx.gen.live` | Gerar LiveView |

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
