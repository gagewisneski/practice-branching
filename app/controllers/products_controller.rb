class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def create
   @product = Product.create(name: params[:name], description: params[:description], price: params[:price], quantity: params[:quantity],
                             supplier: params[:supplier], category_id: params[:category_id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end



  def update
    product = Product.find_by(id: params[:id])
    product.assign_attributes(name: params[:name], description: params[:description], price: params[:price], quantity: params[:quantity],
                              supplier: params[:supplier], category_id: params[:category_id])
    product.save
    # flash[:success] = "Product updated!"
    redirect_to "/products/#{product.id}"

  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    @product.save
    # flash[:danger] = "Product deleted!"
    redirect_to "/products/#{product.id}"
  end

end
