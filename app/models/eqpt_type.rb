class EqptType < ApplicationRecord
    has_many :equipment, dependent: :destroy
    validates_presence_of :name, on: :create, message: "can't be blank"
end
