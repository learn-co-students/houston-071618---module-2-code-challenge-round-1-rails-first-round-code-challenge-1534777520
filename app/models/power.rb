class Power < ApplicationRecord
  has_many :heroines

  def self.search(search)
    # if search
    #   find(:all, :conditions => ["name LIKE ?", "%#{search}%"])
    # else
    #   find(:all)
    # end
  end
end
