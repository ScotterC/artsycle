defmodule Artsycle.PrettyPoisonEncoder do

  @moduledoc """
  Wraps Poison to pretty print JSON.
  https://stackoverflow.com/questions/38278274/make-phoenix-controller-to-output-pretty-json
  """

  def encode_to_iodata!(data) do
    Poison.encode_to_iodata!(data, pretty: true)
  end
end
