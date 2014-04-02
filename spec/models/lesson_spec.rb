require 'spec_helper'


describe Lesson do

  it{ should belong_to :section }

  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_presence_of :description}


  context '#update_number' do
    it 'insures that no lesson numbers are repeated. Allows one to add a lesson in the middle of the list' do
      l1 = Lesson.create({:name => 'one', :description => "one", :number => 1})
      l2 = Lesson.create({:name => 'two', :description => "two", :number => 2})
      l3 = Lesson.create({:name => 'three', :description => "three", :number => 3})
      l2_two = Lesson.create({:name => "twotwo", :description => "twotwo", :number => 2})
      l2.reload.number.should eq 3
    end
  end

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      l1 = Lesson.create({:name => 'one', :description => "one", :number => 1})
      l2 = Lesson.create({:name => 'two', :description => "two", :number => 2})
      l3 = Lesson.create({:name => 'three', :description => "three", :number => 3})
      l1.next.should eq l2
      l2.next.should eq l3
    end
  end

  context '#prev' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      l1 = Lesson.create({:name => 'one', :description => "one", :number => 1})
      l2 = Lesson.create({:name => 'two', :description => "two", :number => 2})
      l3 = Lesson.create({:name => 'three', :description => "three", :number => 3})
      l3.prev.should eq l2
      l2.prev.should eq l1
    end
  end
end
