# ElixirApp

## Pré-requisitos

- Elixir >= 1.14
- Erlang/OTP

## Instalação

1. **Instalar dependências:**
   ```bash
   mix setup
   ```

2. **Rodar migrations (se houver):**
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

## Banco de dados

Este projeto usa **SQLite** (não requer instalação de servidor).

Arquivos do banco:
- Desenvolvimento: `ecto_sqlite_elixir_app_dev.db`
- Teste: `ecto_sqlite_elixir_app_test.db`

Para resetar o banco de dados:
```bash
rm ecto_sqlite_elixir_app_dev.db
mix ecto.migrate
```

## Comandos úteis

| Comando | Descrição |
|---------|-----------|
| `mix phx.server` | Iniciar servidor |
| `mix ecto.migrate` | Executar migrations |
| `mix test` | Rodar testes |
| `mix phx.gen.live` | Gerar LiveView |
| `mix assets.build` | Compilar assets (JS/CSS) |

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
