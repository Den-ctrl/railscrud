class AddAttributesToProfile < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :last_name, :string
    add_column :profiles, :address, :text
    add_column :profiles, :contact_number, :string
    add_column :profiles, :birthday, :date
  end
end
