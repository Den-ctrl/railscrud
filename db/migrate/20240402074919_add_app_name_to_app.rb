class AddAppNameToApp < ActiveRecord::Migration[7.1]
  def change
    add_column :apps, :app_name, :string
  end
end
