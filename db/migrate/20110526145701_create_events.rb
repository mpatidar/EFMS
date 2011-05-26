class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :event_name
      t.integer :event_amount
      t.date :event_date
      t.integer :spend_amount
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
