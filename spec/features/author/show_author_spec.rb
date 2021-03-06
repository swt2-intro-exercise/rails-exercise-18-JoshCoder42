require 'rails_helper'

describe "Show author page", type: :feature do
	
	before :each do
        @alan = FactoryBot.create :author
	end
	
	it "should show the details about an author" do
		visit author_path(@alan)
		expect(page).to have_text(@alan.first_name) 
		expect(page).to have_text(@alan.last_name)
		expect(page).to have_link href:(@alan.homepage)
	end

	it "should contain a link to the individual authors edit page" do
		visit author_path(@alan)
		expect(page).to have_link href:(edit_author_path(@alan))
	end

end