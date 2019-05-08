class AddMobileToMkMissatges < ActiveRecord::Migration[5.2]
  def change
  	add_column :mk_missatges, :mobile, :boolean
  end
end
