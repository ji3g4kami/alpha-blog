class ArticleCategory < ActiveRecord::Base
  validates_uniqueness_of :id, scope: [:article_id, :category_id]
  belongs_to :article
  belongs_to :category
end