
class ProductsController < ApplicationController
  def index
    @products = Rails.cache.fetch("all_products", expires_in: 7.days) do
      Product.all.to_a
    end
  end
end
