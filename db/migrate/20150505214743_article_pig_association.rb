class ArticlePigAssociation < ActiveRecord::Migration
  def change

    remove_column :articles, :pig_id
    add_column :pigs, :article_id, :integer
  end
end
