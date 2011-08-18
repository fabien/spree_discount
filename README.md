# Spree Discount extension

The Spree Discount extension enables a simple way to display percentage discounts.

It aids in the display of reduction percentages and original/recommended pricing vs. the current price:

Product#discount_percentage and Product#discount?

Product#pre__discount__price and Product#reduced_price? (delegated to Master)

Variant#pre__discount__price and Variant#reduced_price?

Prices are intentionally left to the admin to update accordingly.

**WORK IN PROGRESS**

## Installation

1. Add the following to your Gemfile
  gem 'spree\_discount', :git => 'git://github.com/fabien/spree_discount.git'

2. Run `bundle install`

3. To setup the asset pipeline includes and copy migrations run: `rails g spree_discount:install`

