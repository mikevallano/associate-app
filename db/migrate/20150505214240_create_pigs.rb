class CreatePigs < ActiveRecord::Migration
  def change
    create_table :pigs do |t|
      t.string :name

      t.timestamps null: false
    end

    add_column :articles, :pig_id, :integer
  end
end
