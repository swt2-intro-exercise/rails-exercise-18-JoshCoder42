require 'rails_helper'

describe "Index authors page", type: :feature do

	it "should render withour error" do
		visit authors_path
	end

	it "should have a link to new author" do
		visit authors_path
		expect(page).to have_link href: new_author_path 
	end

	it "should contain information about an existing author" do
		@alan = FactoryBot.create :author
		visit authors_path
		expect(page).to have_text(@alan.first_name) 
		expect(page).to have_text(@alan.last_name)
		expect(page).to have_text(@alan.homepage)
		expect(page).to have_link href:(author_path(@alan))
	end

	it "should have a link to edit an author" do
		@alan = FactoryBot.create :author
		visit authors_path
		expect(page).to have_link href:(edit_author_path(@alan))
	end 

	it "should have a link to delete an author" do
		@alan = FactoryBot.create :author
		visit authors_path
		expect(page).to have_css("a[data-method='delete'][href='/authors/#{@alan.id}']")
	end 
end