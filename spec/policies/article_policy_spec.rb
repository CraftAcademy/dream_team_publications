# require 'rails_helper'
#
# RSpec.describe ArticlePolicy do
#   subject { described_class.new(user, article) }
#
#   let(:article) { create(:article) }
#
#   context 'user is a visitor' do
#     let(:user) { create(:user, role: 'visitor') }
#
#     it { is_expected.to permit_actions [:show, :index] }
#     it { is_expected.to forbid_new_and_create_actions }
#   end
#
#   context 'user is an author' do
#     let(:user) { create(:user, role: 'author') }
#
#     it { is_expected.to permit_new_and_create_actions }
#   end
# end
