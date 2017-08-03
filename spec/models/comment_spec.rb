require 'rails_helper'

describe Comment do
  it { should belong_to :story }
  it { should validate_presence_of :comment }
  it { should validate_length_of :comment }
end
