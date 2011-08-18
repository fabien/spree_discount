Product.class_eval do
  
  validates_numericality_of :discount_percentage, :only_integer => true, 
                            :greater_than_or_equal_to => 0,
                            :less_than_or_equal_to => 100

  delegate_belongs_to :master, :pre_discount_price if Variant.table_exists? && Variant.column_names.include?("pre_discount_price")
                            
  def discount?
    discount_percentage > 0
  end
  
  def reduced_price?
    price < pre_discount_price
  end
  
end