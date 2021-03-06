require 'rails_helper'

describe Story do
  it { should have_many :comments }
  it { should validate_presence_of :title }
  it { should validate_presence_of :image }
  it { should validate_length_of :intro }
end
