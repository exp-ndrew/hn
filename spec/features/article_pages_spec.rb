require 'rails_helper'

describe "Adding an article" do
  it "allows a user to create an article successfully" do
    visit '/'
    click_on 'Add Article'
    fill_in 'Title', :with => 'Madonna'
    fill_in 'Link', :with => 'http://madonna.com'
    fill_in 'Content', :with => 'is old'
    click_on 'Create Article'
    expect(find('#notice')).to have_content 'Article added.'
  end

  it "shows error when user does not provide sufficient fields" do
    visit '/'
    click_on 'Add Article'
    fill_in 'Title', :with => ''
    fill_in 'Link', :with => ''
    fill_in 'Content', :with => ''
    click_on 'Create Article'
    expect(find('#errors')).to have_content 'Please fix these errors'
  end
end
