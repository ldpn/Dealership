class CreateImplements < ActiveRecord::Migration[5.0]
  def change
    create_table :implements do |t|
      t.string :model
      t.decimal :list_price
      t.decimal :hp

      t.timestamps
    end
  end
end
