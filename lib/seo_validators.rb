require 'active_support'
require 'active_model'

[:redundant_image_alt_validator].each do |name|
  require "validators/#{name}"
end

ActiveSupport.on_load :i18n do
  I18n.load_path.concat(
    Dir["#{File.expand_path('../locale', __FILE__)}/*.{rb,yml}"]
  )
end
