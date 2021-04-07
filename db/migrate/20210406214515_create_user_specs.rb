class CreateUserSpecs < ActiveRecord::Migration
  def change
    create_table :user_specs do |t|
      t.string :g
      t.string :is
      t.string :for
      t.string :generate

      t.timestamps null: false
    end
  end
end
