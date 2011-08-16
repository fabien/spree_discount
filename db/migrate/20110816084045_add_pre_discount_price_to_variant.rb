class AddPreDiscountPriceToVariant < ActiveRecord::Migration
  def self.up
    add_column :variants, :pre_discount_price, :decimal, :precision => 8, :scale => 2, :null => false
  end
 
  def self.down
    remove_column :variants, :pre_discount_price
  end
end
