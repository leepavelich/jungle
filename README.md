# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of simulating on-the-job learning of a Rails app.

I was given an existing code base with little guidance and asked to implement the following:

### Features

1. Sold out badge for products with zero inventory
2. Additional interfaces for admins, including a new categorys creation screen
3. User login and authentication
4. An order details page when an order is successfully submitted
5. Added automated testing and validation for large parts of the codebase
6. An "About Us" page
7. User is sent an email receipt on successful order submission

### Bug Fixes

1. HTTP auth login/password for accessing admin functionality
2. Preventing user from checking out with an empty cart

## Screenshots

Product index
![Main app](https://github.com/leepavelich/jungle/blob/master/docs/main-app.png?raw=true)

New user registration
![User Registration](https://github.com/leepavelich/jungle/blob/master/docs/user-signup.png?raw=true)

Logged-in user can add items to their cart
![Adding items to cart](https://github.com/leepavelich/jungle/blob/master/docs/adding-to-cart.png?raw=true)

Cart shows user's items along with price total, and quantities can be adjusted
![My Cart](https://github.com/leepavelich/jungle/blob/master/docs/my-cart.png?raw=true)

Order details page after successful checkout with the Stripe API
![Checkout](https://github.com/leepavelich/jungle/blob/master/docs/order-details.png?raw=true)

Preview of email receipt on successful order submission
![Email receipt](https://github.com/leepavelich/jungle/blob/master/docs/email-receipt.png?raw=true)

Users can leave ratings on individual products
![Reviews]()

<<<<<<< HEAD
Logged-in users can delete their own reviews
![Review Deletion](https://github.com/leepavelich/jungle/blob/master/docs/reviews-2.png?raw=true)
=======
Logged-in users can delete their own review
![Review Deletion]()
>>>>>>> parent of d0826d3... Add screenshots for product reviews

HTTP authorization for access to admin-only pages
![HTTP auth](https://github.com/leepavelich/jungle/blob/master/docs/http-auth.png?raw=true)

Admin page for categories where new categories can be added
![Admin Categories](https://github.com/leepavelich/jungle/blob/master/docs/admin-categories.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
1. Remove Gemfile.lock
1. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
