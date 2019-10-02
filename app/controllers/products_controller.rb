class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  before_action :authenticate_admin!, only: [:edit]
  def edit
    @product = Product.find(params[:id])
  end

  before_action :authenticate_admin!, only: [:update]
  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  before_action :authenticate_admin!, only: [:destroy]
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end

  private 
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
