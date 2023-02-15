class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: %i[index create new]

  def index
    @expenses = @category.expenses.order(created_at: :desc)
    @expenses_sum = @expenses.sum(:amount)
  end

  def new
    @new_expense = Expense.new
    @categories = Category.all
  end

  def create
    @expense = Expense.new(author_id: current_user.id, **expense_params)

    if @expense.save
      CategoryExpense.create!(category_id: @category.id, expense_id: @expense.id)
      flash[:notice] = 'Transaction recorded successfully'
      redirect_to category_expenses_path(@category)
    else
      flash.now[:alert] = 'Transaction could not be saved'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
