require 'rails_helper'

RSpec.describe Activity, type: :model do
  before :each do
    user = User.new(id: 1, name: 'Juanito')
    user.email = 'foo0@foo.com'
    user.password = '123456'
    user.password_confirmation = '123456'
    user.save
  end

  subject do
    Activity.new(
      name: 'Buy food',
      amount: 1.22,
      author_id: 1
    )
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid name attribute' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid amount attribute' do
    subject.amount = -1
    expect(subject).to_not be_valid
  end

  it 'is valid with valid amount attribute' do
    subject.amount = 2.5
    expect(subject).to be_valid
  end
end
