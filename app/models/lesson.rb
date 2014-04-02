class Lesson < ActiveRecord::Base
validates :name, :presence => true
validates :number, :presence => true
validates :description, :presence => true
end
