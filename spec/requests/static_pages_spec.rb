=begin require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
end
=end
require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Tutorial:" }
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text =>'Sample App')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Tutorial")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => ": home")
    end
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text =>'Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} Help")
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text =>'About Us')
    end
    
    it "should have the title 'about'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} about")
    end
  end
  
    describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text =>'Contact Us')
    end
    
    it "should have the title 'contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} contact")
    end
  end
end