defmodule MeuModulo.Tabuada do
  def calcula(multiplicador) when is_integer(multiplicador) and multiplicador > 0 do
    {:ok, tabuada(multiplicador, 1, [])}
  end

  def calcula(_), do: {:error, [0]}

  defp tabuada(_, 11, valores), do: valores

  defp tabuada(produto1, produto2, valores) do
    tabuada(produto1, produto2 + 1, valores ++ [produto1 * produto2])
  end

end
