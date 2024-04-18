class AddPolymorphicReferenceToSubscriptions < ActiveRecord::Migration[7.1]
  def change
    unless column_exists?(:subscriptions, :subscribable_type)
      add_reference :subscriptions, :subscribable, polymorphic: true, null: false
    end
  end
end
