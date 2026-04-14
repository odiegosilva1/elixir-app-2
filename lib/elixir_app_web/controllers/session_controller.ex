defmodule ElixirAppWeb.SessionController do
  use ElixirAppWeb, :controller

  def new(conn, _params) do
    render(conn, :new)
  end

  def create(conn, %{"email" => email, "password" => password}) do
    if email == "admin@example.com" and password == "admin123" do
      conn
      |> put_session(:user_email, email)
      |> configure_session(drop: false)
      |> put_flash(:info, "Login realizado com sucesso!")
      |> redirect(to: "/dashboard")
    else
      conn
      |> put_flash(:error, "Email ou senha inválidos")
      |> render(:new)
    end
  end

  def delete(conn, _params) do
    conn
    |> clear_session()
    |> redirect(to: "/")
  end
end
