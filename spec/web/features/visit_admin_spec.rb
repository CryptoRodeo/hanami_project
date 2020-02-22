<<<<<<< HEAD
=======
require 'features_helper'

>>>>>>> b9d7b9aace0990a170c19f4e230cba2a29779a00
RSpec.describe 'Has title Admin' do
    it "has the title 'Admin'" do
        visit '/dashboard'
        expect(page).to have_content('Admin Dashboard')


    end
end