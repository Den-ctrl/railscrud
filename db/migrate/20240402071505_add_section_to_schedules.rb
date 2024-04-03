class AddSectionToSchedules < ActiveRecord::Migration[7.1]
  def change
    add_reference :schedules, :section, null: false, default: 1
  end
end
