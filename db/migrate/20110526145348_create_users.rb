class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name
      t.string :user_address
      t.string :user_email
      t.references :city
      t.references :user_role

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
