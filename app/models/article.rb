class Article < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :blags
  has_many :pigs



  validates :title, presence: true
  validates :title, uniqueness: true
  after_save :generate_slug

  before_validation do |article|
    article.category_ids.reject!(&:blank?) if article.category_ids
  end


  def generate_slug
    if slug.nil?
      # Create a unique but readable shortname to reference this item with.
      begin
        if title
          slug = title.downcase.gsub(/[\s]/, '-').gsub(/[^0-9a-z\-]/i, '')
        elsif id
          slug = id.to_s
        end
      rescue => e
        slug = DateTime.now.to_i.to_s
      end
      update_column(:slug, slug)
    end
  end


  def all_categories
    categories.pluck(:name).join(", ")
  end

  def self.long_titles
    where("length(title) > 20")
  end

  def url
    "/articles/#{slug}"
  end


end
