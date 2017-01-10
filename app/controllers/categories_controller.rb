class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def edit
  end

  def update
    @category = Category.assign_attributes(name: params[:name], description: params[:description], admin_name: params[:admin_name], thing1: params[:thing1], thing2: params[:thing2], thing3: params[:thing3])
    @category.save
    redirect to "/categories/#{@category.id}"
  end

  def show
    @category = Category.find(:id)
  end

  def new
  end

  def create
    @category = Category.new(name: params[:name], description: params[:description], admin_name: params[:admin_name], thing1: params[:thing1], thing2: params[:thing2], thing3: params[:thing3])
    @category.save
    redirect to "/categories/#{@category.id}"
  end

  def destroy
    @category = Category.find(:id)
    @category.destroy
    redirect to "/categories"
  end
end
