Product.class_eval do
  
  def discount?
    discount_percentage > 0
  end
  
end