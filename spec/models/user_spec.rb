require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'should have an email' do
      user = User.create!(email: 'johnwick@cia.gov', password: '#XPD!THjf2MDk7#d', password_confirmation: '#XPD!THjf2MDk7#d')
      should validate_presence_of(:email)
    end
    it 'should have a password' do
      user = User.create!(email: 'johnwick@cia.gov', password: '#XPD!THjf2MDk7#d', password_confirmation: '#XPD!THjf2MDk7#d')
      should validate_presence_of(:password)
    end
    it 'should have password confirmation' do
      user = User.create!(email: 'johnwick@cia.gov', password: '#XPD!THjf2MDk7#d', password_confirmation: '#XPD!THjf2MDk7#d')
      # expect(user).to eq(false)
      # should validate_presence_of(:password_confirmation)
      # is_expected.to validate_presence_of(:password_confirmation)
      should validate_confirmation_of(:password).on(:create)
    end
    it 'should have a minimum password length of 8' do
      user = User.create!(email: 'johnwick@cia.gov', password: '#XPD!THjf2MDk7#d', password_confirmation: '#XPD!THjf2MDk7#d')
      should validate_length_of(:password).is_at_least(8).on(:create)
    end
    it 'should have a unique email' do
      user = User.create!(email: 'johnwick@cia.gov', password: '#XPD!THjf2MDk7#d', password_confirmation: '#XPD!THjf2MDk7#d')
      should validate_uniqueness_of(:email).ignoring_case_sensitivity
    end
    it 'should save' do
      user = User.create!(email: 'johnwick@cia.gov', password: '#XPD!THjf2MDk7#d', password_confirmation: '#XPD!THjf2MDk7#d').save
      expect(user).to eq(true)
    end
  end

end


# # Minitest (Shoulda)
# class MenuItemTest < ActiveSupport::TestCase
#   context 'associations' do
#     should belong_to(:category).class_name('MenuCategory')
#   end
#
#   context 'validations' do
#     should validate_presence_of(:name)
#     should validate_uniqueness_of(:name).scoped_to(:category_id)
#   end
# end

# RSpec.describe User, type: :model do
#   context 'validation test' do
#     it 'double-checks the presence of an existing email' do
#       user = User.new(
#         encrypted_password: '123',
#         password_confirmation: '123',
#         email: 'nicolas.genest@codeboxx.biz',
#         created_at: '2021-07-14 15:31:34',
#         updated_at: '2021-07-14 15:31:35').save
#       expect(user).to eq(false)
#       pp user
#     end
#   end
# end