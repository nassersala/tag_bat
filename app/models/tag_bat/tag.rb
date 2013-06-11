class TagBat::Tag < ActiveRecord::Base
  has_many :taggings, :class_name => 'TagBat::Tagging',
    :dependent => :destroy


  validates :name, :presence => true, :uniqueness => true
end
