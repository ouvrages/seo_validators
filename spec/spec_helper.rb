require 'bundler/setup'
Bundler.require

RSpec.configure do
  Dir[File.dirname(__FILE__) + '/support/*.rb'].each { |file| require file }
end
