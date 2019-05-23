class Equipment < ApplicationRecord
  include Friendlyable
  
  belongs_to :eqpt_type
  belongs_to :eqpt_model
  belongs_to :eqpt_function

  validates_presence_of :qty_total, on: :create, message: "can't be blank"
  validates_presence_of :qty_available_for_borrow, on: :create, message: "can't be blank"  
  validates_presence_of :lab_location, on: :create, message: "can't be blank"

end
