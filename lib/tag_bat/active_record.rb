module TagBat::ActiveRecord
  def self.included(base)
    base.extend TagBat::ActiveRecord::ClassMethods
  end

  def tag_names
    @tag_names ||= TagBat::TagNames.new self
  end

  def tag_names=(names)
    if names.is_a?(TagBat::TagNames)
      @tag_names = names
    else
      @tag_names = TagBat::TagNames.new_with_names self, names
    end
  end

  module ClassMethods
    def has_many_tags
      has_many :taggings, :class_name => 'TagBat::Tagging',
        :as => :taggable, :dependent => :destroy
      has_many :tags, :class_name => 'TagBat::Tag', :through => :taggings
    end
  end
end
