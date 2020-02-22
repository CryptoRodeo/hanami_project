require 'features_helper'

RSpec.describe 'Visit secret page' do
  it "is successful" do
    visit '/secret'
    expect(page).to have_content('q')
  

  end
end