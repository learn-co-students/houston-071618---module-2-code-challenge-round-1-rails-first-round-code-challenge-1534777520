class Heroine < ApplicationRecord
  validates :name, presence: true
  validates :super_name, presence: true, uniqueness: true
end
