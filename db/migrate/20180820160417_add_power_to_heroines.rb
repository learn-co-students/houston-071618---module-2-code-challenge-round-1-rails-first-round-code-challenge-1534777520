class AddPowerToHeroines < ActiveRecord::Migration[5.1]
  def change
    add_reference :heroines, :power, index:true
  end
end
