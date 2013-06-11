class TagBat::Tagging < ActiveRecord::Base

 belongs_to :taggable, :polymorphic => true
 belongs_to :tag, :class_name => 'TagBat::Tag'

 validates :taggable, :presence => true
 validates :tag,      :presence => true

end
