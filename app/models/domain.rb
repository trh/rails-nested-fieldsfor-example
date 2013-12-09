class Domain < ActiveRecord::Base
  has_many :whois_contacts
  accepts_nested_attributes_for :whois_contacts

end
