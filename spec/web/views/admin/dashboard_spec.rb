require 'features_helper'

RSpec.describe 'Has title Admin' do
    it "has the title 'Admin'" do
        visit '/dashboard'
        expect(page).to have_content('Admin Dashboar')
    end
end