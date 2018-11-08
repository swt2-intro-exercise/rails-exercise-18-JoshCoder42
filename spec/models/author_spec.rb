require 'rails_helper'

describe "New author page", type: :model do

	it "should create an instance of an author" do
		author = Author.new(first_name:'Alan', last_name:'Turing', homepage:'http://wikipedia.org/Alan_Turing')
		expect(author.first_name).to eq('Alan')
		expect(author.last_name).to eq('Turing')
		expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
		expect(author.name).to eq('Alan Turing')
	end

	it "should validate the input" do
		@author = Author.new(first_name:'random', last_name:'', homepage:'http://random.page')
		expect(@author).to_not be_valid
	end
end

describe Paper, type: :model do

  it "should belong to paper" do
    author = Author.new
    expect(author.respond_to? :papers).to be true
  end
  
end