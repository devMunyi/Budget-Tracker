class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  before_action :set_category, only: [:show]

  def index
    @cats = Category.all.order(created_at: :desc).includes(:expenses)
  end

  def new
    @new_category = Category.new
  end

  def create
    @category = Category.new(author_id: current_user.id, **category_params)

    if @category.save
      flash[:notice] = 'Category added successfully'
      redirect_to categories_path
    else
      flash.now[:alert] = 'Category could not be saved!'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
