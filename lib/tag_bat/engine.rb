require 'rails/engine'

class TagBat::Engine < Rails::Engine
  engine_name :tag_bat

  ActiveSupport.on_load :active_record do
    include TagBat::ActiveRecord
  end
end
