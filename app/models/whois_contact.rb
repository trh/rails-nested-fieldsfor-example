class WhoisContact < ActiveRecord::Base
  belongs_to :domain
  belongs_to :country
  belongs_to :company_type
end
