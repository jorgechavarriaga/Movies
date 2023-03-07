class User < ActiveRecord::Base
  has_many :plays
  has_many :reviews

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
