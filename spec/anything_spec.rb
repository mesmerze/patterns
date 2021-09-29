require 'spec_hepler'
require 'pry'

require 'product'
require 'products_controller'

PRODUCT = Product.new :potato

describe ProductsController do
  it 'cannot be instantiated via :new' do
    expect{ ProductsController.new }.to raise_error NoMethodError
  end

  it 'can be instantiated only once' do
    expect(ProductsController.instance.object_id).to eq(ProductsController.instance.object_id)
  end

  it 'does some work' do
    ProductsController.instance.show
    expect(ProductsController.instance.product).to be(PRODUCT)
  end
end
