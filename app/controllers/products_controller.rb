class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end
end
