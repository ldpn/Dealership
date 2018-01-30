class AddFieldsToImplements < ActiveRecord::Migration[5.0]
  def change
    add_column :implements, :equipment_category, :text
    add_column :implements, :special_offers, :decimal
  end
end
