require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation " do
      before do
        @user = User.create(email: "test@test.com",password: "123456" ,password_confirmation: "123456",first_name:"Juan",last_name:"Perez")
      end
      it "Can be created "do
        expect(@user).to be_valid
      end
      it "Cant be created without first name,last name" do
        @user.first_name = nil
        @user.last_name = nil
        expect(@user).to_not be_valid
      end
    end
end