require 'features_helper'

RSpec.describe 'Has title Admin' do
    it "has the title 'Admin'" do
        visit '/dashboard'
<<<<<<< HEAD
        expect(page).to have_content('Admin Dashboar')
=======
        expect(page).to have_content('Admin Dashboard')
>>>>>>> b9d7b9aace0990a170c19f4e230cba2a29779a00
    end
end