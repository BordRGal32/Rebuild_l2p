require 'pry'
class Lesson < ActiveRecord::Base

  belongs_to :section

  validates :name, :presence => true
  validates :number, :presence => true
  validates :description, :presence => true

  after_save :update_number


  def next
    Lesson.all.order(:number).select {|lesson| self.number < lesson.number}.first
  end

  def prev
    Lesson.all.order(:number).select {|lesson| self.number > lesson.number}.last
  end

private

  def update_number
    start_number = self.number
    Lesson.where("number >= ?", start_number).each do |lesson|
      new_number = lesson.number + 1
      if lesson != self
        lesson.update(number: new_number)
      end
    end
  end

end
