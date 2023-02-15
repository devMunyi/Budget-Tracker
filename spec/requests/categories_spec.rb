require 'rails_helper'

RSpec.describe CategoriesController, type: :request do
  let(:user) do
    User.create(
      name: 'Sam',
      email: 'johndoe@gmail.com',
      password: '123456'
    )
  end

  before do
    # stub the authenticate_user! method
    allow_any_instance_of(CategoriesController).to receive(:authenticate_user!).and_return(true)
    allow_any_instance_of(CategoriesController).to receive(:current_user).and_return(user)
  end

  context 'GET #index' do
    before(:example) { get categories_path } # get(:index)

    it 'is successful' do
      expect(response).to have_http_status(:ok)
    end

    context 'index template' do
      it 'is rendered' do
        expect(response).to render_template('index')
      end

      it 'has response body that include the correct placeholder text' do
        expect(response.body).to include('Categories')
      end
    end
  end

  context 'GET #new' do
    before(:example) { get new_category_path } # get(:index)

    it 'is successful' do
      expect(response).to have_http_status(:ok)
    end

    context 'new template' do
      it 'is rendered' do
        expect(response).to render_template('new')
      end

      it 'has response body that include the correct placeholder text' do
        expect(response.body).to include('Add Category')
      end
    end
  end
end
