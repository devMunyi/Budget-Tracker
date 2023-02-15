require 'rails_helper'

RSpec.describe 'category', type: :feature do
  before(:example) do
    @user = User.create(
      name: 'Sam',
      email: 'johndoe@gmail.com',
      password: '123456'
    )

    # stub the authenticate_user! method
    allow_any_instance_of(CategoriesController).to receive(:authenticate_user!).and_return(true)

    @category = Category.create!(
      name: 'Food',
      icon: 'https://media.tenor.com/erEq2OSqgKsAAAAM/mexican-cuisine-mexican-food.gif',
      author_id: @user.id
    )
  end

  context 'index page' do
    before { visit categories_path }

    it 'shows category name' do
      expect(page).to have_content(@category.name)
    end

    it "shows the category's icon picture" do
      expect(page).to have_css("img[src*='https://media.tenor.com/erEq2OSqgKsAAAAM/mexican-cuisine-mexican-food']")
    end
  end

  context 'new page' do
    before { visit new_category_path }

    it 'shows correct heading' do
      expect(page).to have_content('Add Category')
    end

    it 'shows back button' do
      expect(page).to have_content('Back')
    end
  end
end
