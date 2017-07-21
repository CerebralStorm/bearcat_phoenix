defmodule BearcatPhoenix do
  import Plug.Conn
  require BearcatPhoenix.Client.Course
  require BearcatPhoenix.Client.Report

  def parse_response(response) do
    if HTTPotion.Response.success?(response) do
      Poison.decode(response.body)
    else
      response
    end
  end

  def encode_params(params) do
    Plug.Conn.Query.encode(params)
  end
end
