require 'rails_helper'
feature 'video on home page', %(
  As an unauthenticated user
  I want to visit the home page
  So I can view content
) do
  context 'before signing in' do
    scenario 'user visits page' do
      expect(:page).to have_css('video')
      expect(:page).to have_content('QUANTUMi.d.')
    end
    scenario 'user can sign in through facebook' do
      expect(:page).to have_link('Sign Up through Facebook')
      expect(:page).to have_link('Sign In')
    end
  end
end
