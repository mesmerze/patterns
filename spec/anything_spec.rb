require 'spec_hepler'
require 'pry'

require 'product'
require 'products_controller'

PRODUCT = Product.new :potato

describe ProductsController do
  it 'cannot be instantiated via :new' do
  end

  it 'can be instantiated only once' do
  end

  it 'does some work' do
  end
end
