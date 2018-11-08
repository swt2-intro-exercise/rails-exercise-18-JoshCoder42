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
 		
 		page.fill_in 'author[first_name]', with: 'Alan Mathison'
	 	find('input[type="submit"]').click

	 	@alan.reload

	 	expect(Author.exists?({first_name: 'Alan Mathison', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing'})).not_to be_falsey
 	end

end