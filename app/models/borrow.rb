class Borrow < ApplicationRecord
  belongs_to :equipment
  belongs_to :user
  validates :equipment_id, presence: true
  validates :user_id, presence: true  
end
