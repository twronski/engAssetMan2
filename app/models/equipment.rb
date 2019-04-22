class Equipment < ApplicationRecord
  belongs_to :eqpt_type
  belongs_to :eqpt_model
  belongs_to :eqpt_function
end
