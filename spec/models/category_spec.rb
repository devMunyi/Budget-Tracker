require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    Category.create(
      name: 'Food',
      icon: 'https://media.tenor.com/erEq2OSqgKsAAAAM/mexican-cuisine-mexican-food.gif',
      author_id: 1
    )
  end

  it 'name should be present' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  it 'icon should be present' do
    subject.icon = nil
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
