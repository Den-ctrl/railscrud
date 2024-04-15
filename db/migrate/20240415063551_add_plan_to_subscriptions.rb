class AddPlanToSubscriptions < ActiveRecord::Migration[7.1]
  def change
    add_column :subscriptions, :plan, :integer
  end
end
