class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name
      t.float :price
      t.text :image
      t.text :description

      t.timestamps
    end
  end
end
