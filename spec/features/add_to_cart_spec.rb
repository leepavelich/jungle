require 'rails_helper'

RSpec.feature "Add to cart", type: :feature, js: true do

    # SETUP
    before :each do
      @category = Category.create! name: 'Apparel'

      @user = User.create do |u|
        u.email = "test@testmail.com"
        u.first_name = "First"
        u.last_name = "Last"
        u.password = "password"
        u.password_confirmation = "password"
      end
  
      3.times do |n|
        @category.products.create!(
          name:  Faker::Hipster.sentence(3),
          description: Faker::Hipster.paragraph(4),
          image: open_asset('apparel1.jpg'),
          quantity: 10,
          price: 64.99
        )
      end
    end

    scenario "The user adds a product to the cart" do
      visit '/login'
      within('form') do
        fill_in 'email', :with => 'test@testmail.com'
        fill_in 'password', :with => 'password'
      end
      click_button 'Submit'

      visit root_path

      expect(page).to have_content("My Cart (0)")

      click_button('Add', match: :first)

      expect(page).to have_content("My Cart (1)")

      save_screenshot
    end
end
