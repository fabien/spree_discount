Deface::Override.new(
  :virtual_path => "admin/variants/_form",
  :name => "add_form_elements_to_variants_form",
  :insert_after => "[data-hook='cost_price']",
  :partial => "admin/variants/discount_form_elements",
  :disabled => false)