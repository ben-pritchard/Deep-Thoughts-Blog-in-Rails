require 'rails_helper'

describe Post do
  it { should validate_presence_of :title }
  it { should validate_presence_of :entry }
  it { should belong_to :user}
end
