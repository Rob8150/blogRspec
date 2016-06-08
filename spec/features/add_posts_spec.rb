require 'rails_helper'

RSpec.feature "adding posts" do
	
	scenario " allow a user to add a post" do
	
	#post = create(:post)
	#we can overite the factory value with our own value
	post = create(:post, title: "My other Title")

	visit post_path(post)

	 expect(page).to have_content("My other Title")

	 expect(page).to have_content("My New Body")
	 
	end

end