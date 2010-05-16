class CreatePersonals < ActiveRecord::Migration
  def self.up
    create_table :personals do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :address
      t.string :city
      t.integer :pin
      t.integer :mob
      t.references :professional
      t.timestamps
    end
  end

  def self.down

    drop_table :personals
    drop_table :professionals
  end
end
