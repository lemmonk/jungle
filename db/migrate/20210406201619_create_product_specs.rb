class CreateProductSpecs < ActiveRecord::Migration
  def change
    create_table :product_specs do |t|
      t.string :g
      t.string :is
      t.string :for
      t.string :generate

      t.timestamps null: false
    end
  end
end
