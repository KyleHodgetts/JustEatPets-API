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
    @products =  Product.all
    @products.select do |product|
      product.pet = params[:pet]
    end
    render json: @products
  end


end
