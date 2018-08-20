class Heroine < ApplicationRecord
	belongs_to :power

	validates :super_name, uniqueness: true

	# validate do |heroine|
 #    	heroine.errors.add_to_base("Can't use same name") if heroine.super_name.valid?
 #  	end

end
