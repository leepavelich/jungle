require 'rails_helper'

RSpec.feature "Visitor navigates to product detail page", type: :feature, js: true do

    # SETUP
    before :each do
      @category = Category.create! name: 'Apparel'

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

    scenario "User clicks a product and sees the product page" do
      visit root_path

      first(".product header a").click

      expect(page).to have_css 'article.product-detail'

      save_screenshot
    end
end
