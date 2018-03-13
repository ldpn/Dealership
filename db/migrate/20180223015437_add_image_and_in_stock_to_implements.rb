class AddImageAndInStockToImplements < ActiveRecord::Migration[5.0]
  def change
  	add_column :implements, :image_file_name, :string, default:" "
  	add_column :implements, :in_stock, :integer, default: 0
  end
end
