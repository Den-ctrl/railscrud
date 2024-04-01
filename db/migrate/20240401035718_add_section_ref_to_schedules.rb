class AddSectionRefToSchedules < ActiveRecord::Migration[7.1]
  def change
    add_reference :schedules, :section, foreign_key: true
    
    # Update existing schedules with a valid section_id
    Schedule.update_all(section_id: Section.first.id)
  end
end