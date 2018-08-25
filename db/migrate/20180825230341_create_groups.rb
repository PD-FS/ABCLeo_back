class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :institution, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
