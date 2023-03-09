class CategoriesController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin, only: [:new, :edit, :create, :update, :destroy]
  
    def index
      @categories = Category.all
    end
  
    def new
      @category = Category.new
    end
  
    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to categories_path
      else
        render 'new'
      end
    end
  
    def edit
      @category = Category.find(params[:id])
    end
  
    def update
      @category = Category.find(params[:id])
      if @category.update(category_params)
        redirect_to categories_path
      else
        render 'edit'
      end
    end
  
    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      redirect_to categories_path
    end
  
    private
  
    def category_params
      params.require(:category).permit(:name)
    end
  
    def authorize_admin
      redirect_to root_path unless current_user.email == "jorge.chavarriaga@gmail.com"
    end
    
  end
  