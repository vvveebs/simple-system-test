require "rails_helper"

RSpec.feature "home", type: :system do
  it "has a button which toggles on and off" do
    visit root_url

    expect(find("#the-button")).to have_content "ON"

    click_button "ON"
    expect(find("#the-button")).to have_content "OFF"

    click_button "OFF"
    expect(find("#the-button")).to have_content "ON"
  end
end
