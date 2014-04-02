require 'spec_helper'

describe Section do
  it { should have_many :lessons}
  it { should belong_to :chapter}
  it { should validate_presence_of :name}
end
