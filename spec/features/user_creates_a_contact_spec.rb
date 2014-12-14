require 'rails_helper'

feature "User creates a contact", %q{
  As a site visitor
  I want to contact the site's staff
  So that I can tell them how awesome they are
} do
  # Acceptance Criteria:
  # * I must specify a valid email address
  # * I must specify a subject
  # * I must specify a description
  # * I must specify a first name
  # * I must specify a last name

  context "with valid attributes" do
    it "creates a contact form with valid attributes" do
      visit '/contacts/new'
      fill_in "First name", with: "Nicole"
      fill_in "Last name", with: "Felch"
      fill_in "Email adress", with: "nfelch121394@gmail.com"
      fill_in "Subject", with: "Hi"
      fill_in "Description", with: "Cool website."
      click_on "Create Contact"

      expect(page).to have_content "Contact was successfully created"
    end
  end

  context "with invalid attributes" do
    it "shows errors" do
      visit 'contacts/new'
      click_on "Create Contact"

      expect(page).to have_content "First name can't be blank"
      expect(page).to have_content "Last name can't be blank"
      expect(page).to have_content "Email adress can't be blank"
      expect(page).to have_content "Subject can't be blank"
      expect(page).to have_content "Description can't be blank"
    end
  end

end
