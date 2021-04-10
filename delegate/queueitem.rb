require 'rubygems'

require 'active_record'

# require 'yaml'

# Dir.glob(File.join(File.dirname(__FILE__), './app/models/*.rb')).each { |f| require f }

# dbconfig = YAML.load(File.open('./config/database.yml'))

# currenv = ENV['RAILS_ENV']

# currenv ||= 'development'

# currdbconfig = dbconfig[currenv]

# currdbconfig['database'] = currdbconfig['database']

# p currdbconfig

# ActiveRecord::Base.establish_connection(currdbconfig)
class QueueItem < ActiveRecord::Base
  belongs_to :video
end

# queitem = QueueItem.first
# queitem.video.category.name
# => "Action"

# this is kind of cumbersome, instead you can get the object via model association we can use delegate to help us.

class QueueItem < ActiveRecord::Base
  belongs_to :video

  delegate :category, to: :video
end

# queitem = QueueItem.first
# queitem.category.name
#  => "Action"
