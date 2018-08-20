class Heroine < ApplicationRecord
  belongs_to :power, optional: true
  validates :name, uniqueness: true
end
