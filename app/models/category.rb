class Category < ActiveRecord::Base
  has_and_belongs_to_many :articles


  before_create :generate_slug
  def generate_slug
    if self.slug.nil?
      # Create a unique but readable shortname to reference this item with.
      begin
        if self.name
          slug = self.name.downcase.gsub(/[\s]/, '-').gsub(/[^0-9a-z\-]/i, '')
        elsif self.id
          slug = self.id.to_s
        end
      rescue => e
        slug = DateTime.now.to_i.to_s
      end
    end
  end


end
