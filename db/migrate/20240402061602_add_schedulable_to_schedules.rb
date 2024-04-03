class AddSchedulableToSchedules < ActiveRecord::Migration[7.1]
  def change
    add_reference :schedules, :schedulable, polymorphic: true, index: true
  end
end
