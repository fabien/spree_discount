class AddDiscountPercentageToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :discount_percentage, :integer, :null => false, :default => 0
  end
 
  def self.down
    remove_column :products, :discount_percentage
  end
end
