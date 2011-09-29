require 'spec_helper'

post_path = "http://localhost:3000/"

 describe "PostNew" do

    it "Add New Post" do
       visit post_path
       click_link "New Post"
       fill_in "Title", :with => "post Title T1"
       fill_in "Name", :with => "post name T1"
       fill_in "Content", :with => "post content T1"
       click_button "Create Post"
       page.should have_content("Post was successfully created.")
    end

 
    it "Add New Category" do
       visit post_path
       click_link "New Category"
       fill_in "category_catName", :with => "Category1"
       click_button "Create Category"
       page.should have_content("Category was successfully created.")
    end




end

