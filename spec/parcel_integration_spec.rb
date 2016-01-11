require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("Parcel#parcel", {:type => :feature}) do
  it("will take user input and calculate volume") do
    visit('/')
    fill_in('h', :with => "5")
    fill_in('w', :with => "5")
    fill_in('d', :with => "5")
    fill_in('weight', :with => "4")
    click_button('send')
    expect(page).to have_content('125')
  end
  it("will take user input and calculate cost to ship") do
    visit('/')
    fill_in('h', :with => "5")
    fill_in('w', :with => "5")
    fill_in('d', :with => "5")
    fill_in('weight', :with => "4")
    click_button('send')
    expect(page).to have_content('9.21')
  end

end
