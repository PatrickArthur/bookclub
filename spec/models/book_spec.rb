require 'rails_helper'

RSpec.describe Book, :type => :model do

  it { should have_valid(:title).when('Generic')}
  it { should_not have_valid(:title).when(nil,'')}

  it { should have_valid(:author).when('Some Guy')}
  it { should_not have_valid(:author).when(nil,'')}

  it { should have_valid(:year).when(1920)}
  it { should_not have_valid(:year).when(nil,'')}

end
