class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products.each do |p|
      append_zero(p.price)
    end
    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    @product.price = append_zero(@product.price)
    render json: @product
  end

  def products_for_pet
    @products = Product.all
    products_to_return = []
    @products.each do |product|
      if product.pet == params[:pet]
        product.price = append_zero(product.price)
        products_to_return << product
      end
    end
    render json: products_to_return
  end

  private

  def append_zero(x)
    format('%.2f', x)
  end
end
