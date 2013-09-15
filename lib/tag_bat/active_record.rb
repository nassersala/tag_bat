module TagBat::ActiveRecord
  def self.included(base)
    base.extend TagBat::ActiveRecord::ClassMethods
  end

  module ClassMethods
    def has_many_tags
      has_many :taggings, :class_name => 'TagBat::Tagging',
        :as => :taggable, :dependent => :destroy
      has_many :tags, :class_name => 'TagBat::Tag', :through => :taggings
    end
  end
end
