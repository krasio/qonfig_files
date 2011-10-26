# print SQL to STDOUT
# if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
#   require 'logger'
#   RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
# end

if defined?(AciveRecord) && defined?(Rails::Console)
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

require 'rubygems'
require 'interactive_editor'


# Autocomplete
require 'irb/completion'

# Prompt behavior
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

# History
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

require 'rubygems'
require 'wirble'
Wirble.init
Wirble.colorize
