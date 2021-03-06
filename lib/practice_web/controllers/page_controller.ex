defmodule PracticeWeb.PageController do
  use PracticeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def double(conn, %{"x" => x}) do
    {x, _} = Integer.parse(x)
    y = Practice.double(x)
    render conn, "double.html", x: x, y: y
  end

  def calc(conn, %{"expr" => expr}) do
    y = Practice.calc(expr)
    render conn, "calc.html", expr: expr, y: y
  end

  def factor(conn, %{"x" => x}) do
    result = Practice.factor(x)
    render conn, "factor.html", x: x, result: result
  end

  def palindrome(conn, %{"input" => input}) do
    result = Practice.palindrome?(input)
    render conn, "palindrome.html", input: input, result: result
  end
end
