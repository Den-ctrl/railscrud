class AddPolymorphicAssociationToSchedules < ActiveRecord::Migration[7.1]
  def change
    unless column_exists?(:schedules, :subscription_type)
      add_reference :schedules, :subscription, polymorphic: true, index: true
    end
  end
end
