defmodule MeuModulo.Arquivos do
  def ler(arquivo) do
    case File.read(arquivo) do
        {:ok, file } -> file
        {:error, :enoent} -> "Arquivo inexistente"
        {:error, :eacces} -> "Arquivo sem permissão de leitura"
          _ -> "Erro desconhecido"
    end
    |> IO.puts()
  end
  def ler!(arquivo) do
    File.read!(arquivo)
  end
end
