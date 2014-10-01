class ProductsController < ApplicationController
  def index
    puts 'Elasticsearch explodes here:'

    # This is just an example. Please don't reindex on request :)
    Product.reindex
    product = Product.create name: 'Milk'

    @products = Product.search('milk', boost_by: [:name])

    product.destroy
  end
end
