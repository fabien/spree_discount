class AddDiscountPercentageToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :discount_percent, :integer, :null => false, :default => 0
  end
 
  def self.down
    remove_column :products, :discount_percent
  end
end
