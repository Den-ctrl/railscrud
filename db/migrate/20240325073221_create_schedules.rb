class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.string :event
      t.datetime :start_date
      t.datetime :end_date
      t.string :public_uid

      t.timestamps
    end
  end
end
