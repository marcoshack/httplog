class NetHTTPAdapter < HTTPBaseAdapter
  def send_get_request
    Net::HTTP.get_response(@host, @path, @port)
  end

  def send_post_request(data)
    http = Net::HTTP.new(@host, @port)
    resp = http.post(@path, data)
  end

  def send_post_form_request(params)
    res = Net::HTTP.post_form(parse_uri, params)
  end
end
