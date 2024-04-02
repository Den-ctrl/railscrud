class RemoveCreatorFromSchedules < ActiveRecord::Migration[7.1]
  def change
    remove_column :schedules, :creator, :string
  end
end
