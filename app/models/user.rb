class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_inclusion_of :role, in: %w[admin author visitor subscriber]

  def author?
    role == 'author'
  end

  def visitor?
    role == 'visitor'
  end

  def admin?
    role == 'admin'
  end

  def subscriber?
    role == 'subscriber'
  end
end
