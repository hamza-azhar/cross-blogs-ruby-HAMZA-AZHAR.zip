require 'rails_helper'

RSpec.describe Article, type: :model do
  
  it { should have_many :comments }
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
  it { should validate_presence_of :email }

end
