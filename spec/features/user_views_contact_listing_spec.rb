require 'rails_helper'

feature 'User visits the contacts page', %q{
  As an admin
  I want to review contact inquiries
  So that I can respond or take action
} do
  # Acceptance Criteria:
  # * I can see a list of all contact inquiries

  it 'sees all contacts listed on the page' do
    c1 = Contact.create!(first_name:'Nicole', last_name:'Felch', email_adress:'nfelch121394@gmail.com', subject:'So..', description:'Yeah.' )
    c2 = Contact.create!(first_name:'Bob', last_name:'Bob', email_adress:'bob@bob.com', subject:'Hi', description:"I'm bob" )

    visit '/contacts'

    expect(page).to have_content c1.first_name
    expect(page).to have_content c2.subject
    expect(page).to have_content c1.email_adress
  end

end
