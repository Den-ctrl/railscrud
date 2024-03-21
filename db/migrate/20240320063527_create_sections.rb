class CreateSections < ActiveRecord::Migration[7.1]
  def change
    create_table :sections do |t|
      t.string :name, null: false, default: ""
      t.string :short_name, null: false, default: ""

      t.timestamps
    end
  end
end
