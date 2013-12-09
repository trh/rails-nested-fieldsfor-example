class CreateWhoisContacts < ActiveRecord::Migration
  def change
    create_table :whois_contacts do |t|
      t.belongs_to :domain, index: true
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :number
      t.string :postal_code
      t.string :city
      t.belongs_to :country, index: true
      t.string :phone_number
      t.string :email_address
      t.string :company_name
      t.belongs_to :company_type, index: true

      t.timestamps
    end
  end
end
