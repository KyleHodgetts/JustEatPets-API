class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def products_for_pet
    @products = Product.all
    products_to_return = []
    @products.each do |product|
      if product.pet == params[:pet]
        products_to_return << product
      end
    end
    render json: products_to_return
  end
end
