require 'rails_helper'

RSpec.describe 'expenses', type: :feature do
  before(:example) do
    @user = User.create(
      name: 'Sam',
      email: 'johndoe@gmail.com',
      password: '123456'
    )

    # stub the authenticate_user! method
    allow_any_instance_of(ExpensesController).to receive(:authenticate_user!).and_return(true)

    @category = Category.create!(
      name: 'Food',
      author_id: @user.id
    )

    @expense = Expense.create!(
      name: 'Sugar',
      amount: 20,
      author_id: @user.id
    )

    CategoryExpense.create!(
      category_id: @category.id,
      expense_id: @expense.id
    )
  end

  context 'index page' do
    before { visit category_expenses_path(@category) }

    it 'shows correct heading' do
      expect(page).to have_content('Total')
    end

    it 'shows expense name' do
      expect(page).to have_content(@expense.name)
    end

    it 'shows expense amount' do
      expect(page).to have_content(@expense.amount)
    end
  end

  context 'new page' do
    before { visit new_category_expense_path(@category) }

    it 'shows correct heading' do
      expect(page).to have_content('Add Transaction')
    end

    it 'shows back button' do
      expect(page).to have_content('Back')
    end
  end
end
