if defined?(AciveRecord) && defined?(Rails::Console)
  ActiveRecord::Base.logger = Logger.new STDOUT
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
    locals = methods - Object.instance_methods
    locals.sort
  end
end

require 'wirble'
Wirble.init
Wirble.colorize

# Project-specific .irbrc
if Dir.pwd != File.expand_path("~")
  local_irbrc = File.expand_path '.irbrc'
  if File.exist? local_irbrc
    puts "Loading #{local_irbrc}"
    load local_irbrc
  end
end
