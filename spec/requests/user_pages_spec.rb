require 'spec_helper'

describe "UserPages" do
	describe "signup page" do

	it "should have the content 'Sign up'" do
    visit signup_path   
    expect(page).to have_content('Sign up')
    end

    it "should have the title 'Sign up'" do
      visit signup_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Sign up")
    end

    
end
end
