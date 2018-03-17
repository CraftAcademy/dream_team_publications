require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column(:subject).of_type(:string)}
  end
end
