class CreateSigns < ActiveRecord::Migration[5.2]
  def change
    create_table :signs do |t|
      t.string :name
      t.string :planet
      t.string :mascot

      t.timestamps
    end
  end
end
