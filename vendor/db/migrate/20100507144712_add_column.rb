class AddColumn < ActiveRecord::Migration
  def self.up
	add_column :personals, :personal_id, :integer
	add_column :professionals, :professional_id, :integer
  end

  def self.down
  end
end
