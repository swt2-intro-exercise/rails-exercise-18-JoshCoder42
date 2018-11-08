require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe "New paper page", type: :model do

	it "should validate the title input" do
		@paper = Paper.new(venue:'mind 49: 433-460', year:2018)
		expect(@paper).to_not be_valid
	end

	it "should validate the venue input" do
		@paper = Paper.new(title: 'computing machinery and intelligence', year:2018)
		expect(@paper).to_not be_valid
	end

	it "should validate the year input" do
		@paper = Paper.new(title: 'computing machinery and intelligence', venue:'mind 49: 433-460')
		expect(@paper).to_not be_valid
	end

end

describe Author, type: :model do

  it "should belong to authors" do
    paper = Paper.new
    expect(paper.respond_to? :authors).to be true
  end

end