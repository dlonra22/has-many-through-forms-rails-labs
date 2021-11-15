class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: :all_blank

  def category_attributes=(category_attributes)
    if !(category_attributes.any?(nil))
      category_attributes.values.each do |c|
        category = Category.find_or_create_by(c)
        self.categories << category
      end
    end
  end

  def unique_commenters
      self.comments ? self.comments.collect {|c| c.user}.uniq : []
  end

end
