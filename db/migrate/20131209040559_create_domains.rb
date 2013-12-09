class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :domain_name
      t.string :nameserver_first
      t.string :nameserver_second

      t.timestamps
    end
  end
end
