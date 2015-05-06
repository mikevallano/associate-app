class CreateBlags < ActiveRecord::Migration
  def change
    create_table :blags do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
