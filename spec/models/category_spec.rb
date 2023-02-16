require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) do
    User.create!(
      name: 'Sam',
      email: 'johndoe@gmail.com',
      password: '123456'
    )
  end

  subject do
    Category.create!(
      name: 'Food',
      author_id: user.id
    )
  end

  it 'name should be present' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  context '#format_date' do
    it 'formats time_with_zone correctly' do
      time_with_zone = Time.zone.local(2023, 2, 15, 12, 0, 0)
      formatted_date = subject.format_date(time_with_zone)

      expect(formatted_date).to eq('15 Feb 2023')
    end
  end
end
