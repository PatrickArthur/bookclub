require 'rails_helper'

RSpec.describe Review, :type => :model do

  it { should have_valid(:rating).when(5)}
  it { should_not have_valid(:rating).when(nil,'')}

  it { should have_valid(:body).when('This is a test')}
  it { should_not have_valid(:body).when(nil,'')}

end
