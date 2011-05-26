class CreateFines < ActiveRecord::Migration
  def self.up
    create_table :fines do |t|
      t.integer :fine_amount
      t.string :comment
      t.references :user
      t.references :event

      t.timestamps
    end
  end

  def self.down
    drop_table :fines
  end
end
