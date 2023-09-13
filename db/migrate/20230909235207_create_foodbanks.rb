class CreateFoodbanks < ActiveRecord::Migration[7.0]
  def change
    create_table :foodbanks do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
