class AddSubscriberAndStripeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subscribed, :string
    add_column :users, :stripeid, :string
  end
end
