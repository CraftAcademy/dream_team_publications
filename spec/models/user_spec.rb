require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :longitude }
    it { is_expected.to have_db_column :latitude }
    it { is_expected.to have_db_column :address }
    end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_presence_of :password }
    it { is_expected.to validate_length_of :password }
    it { is_expected.to validate_confirmation_of :password }
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
end
