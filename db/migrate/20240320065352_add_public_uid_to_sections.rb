class AddPublicUidToSections < ActiveRecord::Migration[7.1]
  def change
    add_column :sections, :public_uid, :string
  end
end
