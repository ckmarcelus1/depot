class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
        @products = Product.order (:title)
        logger.debug(@products.length)
  end
end