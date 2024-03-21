class AddStateToSection < ActiveRecord::Migration[7.1]
  def change
    add_column :sections, :state, :string
  end
end
