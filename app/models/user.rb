class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Friendlyable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
