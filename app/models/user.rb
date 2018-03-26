class User < ApplicationRecord
  after_initialize :set_default_role, if: :new_record?

  enum role: [:visitor, :author, :subscriber, :admin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def set_default_role
    self.role ||= :visitor
  end
end
