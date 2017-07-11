defmodule BearcatPhoenix.Client.Course do

  def get(api_key, base_url, course_id) do
    response = HTTPotion.get base_url <> "/api/v1/courses/" <> course_id, headers: ["Authorization": "Bearer " <> api_key]
    BearcatPhoenix.parse_response(response)
  end

end
