class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.string :email, :null => false

      t.timestamps
    end
		add_index :subscriptions, :email, :unique => true
  end

  def self.down
    drop_table :subscriptions
  end
end
