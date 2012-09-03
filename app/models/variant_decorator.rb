Spree::Variant.class_eval do
  
  attr_accessible :discount_percentage, :pre_discount_price
  
  validate :pre_discount_price_cannot_be_less_than_price
  
  # spree_currency_exchange compatibility
  
  currency_exchange :pre_discount_price if respond_to?(:currency_exchange)
  
  def reduced_price?
    price < pre_discount_price
  end
  
  # spree_variant_options compatibility
  
  if method_defined? :variant_options_hash
  
  alias_method(:variant_options_hash_without_discount, :variant_options_hash) unless method_defined?(:variant_options_hash_without_discount)
  def variant_options_hash
    hsh = reduced_price? ? { :pre_discount_price => Spree::Money.new(self.pre_discount_price).to_s } : {}
    variant_options_hash_without_discount.merge(hsh)
  end
  
  end
  
  protected
  
  def pre_discount_price_cannot_be_less_than_price
    if pre_discount_price > 0 and pre_discount_price < price
      errors.add(:pre_discount_price, errors.generate_message(:pre_discount_price, :lower_than_price))
    end
  end
    
end