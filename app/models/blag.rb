class Blag < ActiveRecord::Base
  belongs_to :article

  def blagged_articles
    Article.where("blag_id @> '{?}'", self.id)
  end

  def blag_art
   Article.where("blag_id = ?", self.id)
  end

# For testing other app
  # Article.where("tag_id = ?", Tag.first.id)
  # Article.where("tag_id @> '{?}'", self.id)

end
