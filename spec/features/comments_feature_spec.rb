require 'rails_helper'

feature 'comments' do
  context 'a user has signed in and a photo is posted' do
    before do
      sign_up
      upload_photo
      visit '/photos'
    end

    scenario 'can leave a comment' do
      click_link 'Leave a comment'
      fill_in(:text_field).with('my very first comment')
      click_button('Submit')
      expect(page).to have_content('my very first comment')
    end
  end
end
