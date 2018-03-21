class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def author? 
     self.role == 'author'
    end

    def visitor?
      self.role == 'visitor'
    end

    def admin?
      self.role == 'admin'
    end

    def subscriber?
      self.role == 'subscriber'
    end

    
end
