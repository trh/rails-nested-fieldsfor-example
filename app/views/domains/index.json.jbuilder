json.array!(@domains) do |domain|
  json.extract! domain, :id, :domain_name, :nameserver_first, :nameserver_second
  json.url domain_url(domain, format: :json)
end
