class AddBlagIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :blag_id, :integer, array:true, default: []
  end
end
