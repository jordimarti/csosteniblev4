class AddVideoToCasPractics < ActiveRecord::Migration[5.2]
  def change
    add_column :cas_practics, :video_url, :string
  end
end
