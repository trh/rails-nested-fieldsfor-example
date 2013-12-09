json.array!(@whois_contacts) do |whois_contact|
  json.extract! whois_contact, :id, :domain_id, :first_name, :last_name, :street, :number, :postal_code, :city, :country_id, :phone_number, :email_address, :company_name, :company_type_id
  json.url whois_contact_url(whois_contact, format: :json)
end
