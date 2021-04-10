require 'rubygems'
require 'active_record'

class Vedio < ActiveRecord::Base
  has_many :queue_items
  belongs_to :category
end
