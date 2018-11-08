require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe "New paper page", type: :model do

	it "should validate the input" do
		@paper = Paper.new(venue:'mind 49: 433-460', year:2018)
		expect(@paper).to_not be_valid
	end

end
