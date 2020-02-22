require 'features_helper'

RSpec.describe 'On secret page' do
    it "contains the word 'secret'" do
        visit '/secret'
        expect(page).to have_content('secret page')
    end
end