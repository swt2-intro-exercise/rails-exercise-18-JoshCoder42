require 'rails_helper'

describe "New author page", type: :model do

	it "should create an instance of an author" do
		author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
		expect(author.first_name).to_eq('Alan')
		expect(author.last_name).to_eq('Turing')
		expect(author.homepage).to_eq('http://wikipedia.org/Alan_Turing')
	end

end