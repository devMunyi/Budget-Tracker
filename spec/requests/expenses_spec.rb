require 'rails_helper'

RSpec.describe ExpensesController, type: :request do
  let(:user) do
    User.create(
      name: 'Sam',
      email: 'johndoe@gmail.com',
      password: '123456'
    )
  end

  before do
    # stub the authenticate_user! method
    allow_any_instance_of(ExpensesController).to receive(:authenticate_user!).and_return(true)
    allow_any_instance_of(ExpensesController).to receive(:current_user).and_return(user)
  end

  let(:category) do
    Category.create(
      name: 'Food',
      author_id: user.id
    )
  end

  context 'GET #index' do
    before(:example) { get category_expenses_path(category) } # get(:index)

    it 'is successful' do
      expect(response).to have_http_status(:ok)
    end

    context 'index template' do
      it 'is rendered' do
        expect(response).to render_template('index')
      end

      it 'has response body that include the correct placeholder text' do
        expect(response.body).to include('Total')
      end
    end
  end

  context 'GET #new' do
    before(:example) { get new_category_expense_path(category) } # get(:index)

    it 'is successful' do
      expect(response).to have_http_status(:ok)
    end

    context 'new template' do
      it 'is rendered' do
        expect(response).to render_template('new')
      end

      it 'has response body that include the correct placeholder text' do
        expect(response.body).to include('Add Transaction')
      end
    end
  end
end
