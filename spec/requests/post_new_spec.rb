require 'spec_helper'

post_new_path = "http://localhost:3000/"

 describe "PostNew" do
    it "Add Post when author want to post" do

       visit post_new_path
       
       click_link "New Post"
       fill_in "Title", :with => "post Totle T1"
       fill_in "name", :with => "post name T1"
       fill_in "content", :with => "post content T1"
       click_button "save"


    end
end

