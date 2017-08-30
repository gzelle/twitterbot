class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :gender
      t.string :area

      t.timestamps
    end
  end
end
