class AddCreatorToSchedule < ActiveRecord::Migration[7.1]
  def change
    add_column :schedules, :creator, :string
  end
end
