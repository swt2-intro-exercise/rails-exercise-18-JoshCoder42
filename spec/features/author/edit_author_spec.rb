require 'rails_helper'

describe "Edit author page", type: :feature do
	
	before :each do
    	@alan = FactoryBot.create :author
	end

	it "should render withour error" do
   		visit edit_author_path(@alan)
 	end

end