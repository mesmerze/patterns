class ProductsController
  # include Singleton - right way to do that

  @instance = new

  private_class_method :new

  attr_accessor :product

  def self.instance
    @instance
  end

  def show
    @product = PRODUCT
  end
end
