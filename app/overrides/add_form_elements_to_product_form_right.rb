Deface::Override.new(
  :virtual_path => "admin/products/_form",
  :name => "add_form_elements_to_product_form_right",
  :insert_after => "code[erb-loud]:contains('f.error_message_on :cost_price')",
  :partial => "admin/products/discount_form_elements",
  :disabled => false)
