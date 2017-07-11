defmodule BearcatPhoenix.Client.Report do

  def start(api_key, base_url, account_id, report_name, params \\ "") do
    response = HTTPotion.post base_url <> "/api/v1/accounts/" <> account_id <> "/reports/" <> report_name, body: params, headers: ["Authorization": "Bearer " <> api_key]
    BearcatPhoenix.parse_response(response)
  end


  def status(api_key, base_url, account_id, report_name, report_id) do
    response = HTTPotion.get base_url <> "/api/v1/accounts/" <> account_id <> "/reports/" <> report_name <> "/" <> report_id, headers: ["Authorization": "Bearer " <> api_key]
    BearcatPhoenix.parse_response(response)
  end

end