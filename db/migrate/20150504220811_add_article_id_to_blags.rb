class AddArticleIdToBlags < ActiveRecord::Migration
  def change
    add_column :blags, :article_id, :integer
  end
end
