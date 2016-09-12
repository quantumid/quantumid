require 'rails_helper'
feature 'video on home page', %(
  As an unauthenticated user
  I want to visit the home page
  So I can view content
) do
  context 'before signing in' do
    scenario 'user visits page' do
      pending
      expect(page).to have_content('QUANTUMi.d.')
      expect(page).to have_css('video')
    end
    scenario 'user can sign in through facebook' do
      pending
      expect(page).to have_link('Sign Up through Facebook')
      expect(page).to have_link('Sign In')
      expect(page).to_not have_link('Sign Out')
    end
    scenario 'user can see vote buttons' do
      pending
      expect(page).to have_button 'Upvote'
      expect(page).to have_button 'Downvote'
    end
    scenario 'user cannot use vote buttons' do
      pending
      click_button 'Upvote'
      expect(page).to have_content 'You must sign in before voting!'

      click_button 'Downvote'
      expect(page).to have_content 'You must sign in before voting!'
    end
  end

  context 'after signing in' do
    scenario 'user can sign out, but not sign up' do
      pending
      expect(page).to_not have_link('Sign Up')
      expect(page).to_not have_link('Sign Up through Facebook')
      expect(page).to have_link('Sign Out')
    end
    scenario 'user can use upvote buttons' do
      pending
      click_button 'Upvote'

      expect(page).to have_content 'Upvoted!'
      expect(page).to_not have_button 'Upvote'
    end
  end
end
