require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    before(:each) do
      @user = User.new do |u|
        u.email = "test@testmail.com"
        u.first_name = "First"
        u.last_name = "Last"
        u.password = "password"
        u.password_confirmation = "password"
      end
    end

    it "is valid with all required fields" do
      expect(@user).to be_valid
    end

    it "is not valid without a password" do
      @user.password = nil
      
      expect(@user).to_not be_valid
    end

    it "is not valid without a password confirmation" do
      @user.password_confirmation = nil

      expect(@user).to_not be_valid
    end

    it "is not valid when password and password confirmation conflict" do
      @user.password = "password1"
      @user.password_confirmation = "password2"

      expect(@user).to_not be_valid
    end

    it "is not valid when email has been used before" do
      @user.save

      non_unique_user = User.new do |u|
        u.email = "test@testmail.com"
        u.first_name = "User"
        u.last_name = "Two"
        u.password = "password"
        u.password_confirmation = "password"
      end

      non_unique_user.save

      expect(non_unique_user.errors[:email].first).to eq("has already been taken")

    end
    
    it "is not valid without an email" do
      @user.email = nil

      expect(@user).to_not be_valid
    end

    it "is not valid without a first name" do
      @user.first_name = nil

      expect(@user).to_not be_valid
    end

    it "is not valid without a last name" do
      @user.last_name = nil

      expect(@user).to_not be_valid
    end

    it "is not valid when passowrd is less than 5 characters" do
      @user.password = "pass"
      @user.password_confirmation = "pass"

      expect(@user).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end
end
