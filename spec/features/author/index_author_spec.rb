require 'rails_helper'

describe "Index authors page", type: :feature do

	before :all do
        @alan = FactoryBot.create :author
	end

	it "should render withour error" do
		visit index_author_path
	end

	it "should have a link to new author" do
		visit index_author_path
		expect(page).to have_link href: new_author_path 
	end

	it "should contain information about an existing author" do
		visit index_author_path
		expect(page).to have_text(@alan.first_name) 
		expect(page).to have_text(@alan.last_name)
		expect(page).to have_link href: @alan.homepage
	end

end