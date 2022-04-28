require "rails_helper"

RSpec.feature "Creating articles" do
    scenario "A user creates a new article " do
       visit "/"  #visit roor page - "/" == root page
       
       click_link "New Article"  #user clicks on new article
       
       fill_in "Title", with: "Creating a blog" # user fills in title
       fill_in "article[body]", with: "Lorum Ipsum"  #user fills in the body of an article
       
       click_button "Create Article"  #user  clicks the button to create an article 
       
        #what we expect is that if the steps are followed through - article is  created
        
        expect(page).to have_content("Article has been created")
        expect(page.current_path).to eq(articles_path)
   end
end














        # send to articles page