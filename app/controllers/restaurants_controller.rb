class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end

  def products
    render json: restaurant_products
  end

  def products_for_pet
    @products = restaurant_products
    @products.select do |product|
      product.pet = params[:pet]
    end
    render json: @products
  end

  private

  def restaurant_products
    if restaurant = Restaurant.find(params[:restaurant_id])
      restaurant.products
    end || []
  end
end
