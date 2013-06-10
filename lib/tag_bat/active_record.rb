module TagBat::ActiveRecord
  def self.include(base)
    # include our class methods
    base.extend TagBat::ActiveRecord::ClassMethods
  end

  module ClassMethods
    def has_many_tags
      has_many :taggings, :class_name => 'TagBat::Tagging',
        :as => :taggable, :depenent => :destroy
      has_many :tags, :class_name => 'TagBat:Tag', :through => :taggings
    end
  end
end
