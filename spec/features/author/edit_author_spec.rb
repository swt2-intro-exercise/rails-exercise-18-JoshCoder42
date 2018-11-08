require 'rails_helper'

describe "Edit author page", type: :feature do
	
	before :each do
    	@alan = FactoryBot.create :author
	end

	it "should render withour error" do
   		visit edit_author_path(@alan)
 	end

 	it "should write updates into the database" do
 		visit edit_author_path(@alan)
 		
 		expect(@alan.first_name).to eq('Alan')

 		page.fill_in 'author[first_name]', with: 'Alan Mathison'
	 	find('input[type="submit"]').click

	 	@alan.reload
	 	expect(@alan.first_name).to eq('Alan Mathison')
 	end

end