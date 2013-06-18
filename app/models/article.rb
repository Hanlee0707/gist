class Article < ActiveRecord::Base
  attr_accessible :category, :contributor_id, :status, :title
  has_many :image_cards, depedent: :destroy
  has_many :number_cards, depedent: :destroy
  has_many :quote_cards, depedent: :destroy
  has_many :text_cards, depedent: :destroy
  has_many :video_cards, depedent: :destroy
  has_many :numbers, :through => :number_cards, dependent: :destroy
end
