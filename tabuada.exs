defmodule MeuModulo.Tabuada do
  def calcula(multiplicador) when is_integer(multiplicador) and multiplicador > 0 do
    {:ok, tabuada(multiplicador, 1)}
  end

  def calcula(_), do: {:error, [0]}

  defp tabuada(_, 11), do: []

  defp tabuada(produto1, produto2) do
    [produto1 * produto2] ++ tabuada(produto1, produto2 + 1)
  end

end
