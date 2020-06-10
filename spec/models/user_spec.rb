require 'rails_helper'

RSpec.describe User, type: :model do
  it "User is valid with the correct attributes" do
    user = User.create(fname: 'jon', lname: 'doe', email: 'john.doe@example.com', password: 'password')
    expect(user).to be_valid
  end

  it "User is not valid with the wrong attributes" do
    user = User.create(fname: nil, lname: nil, email: nil, password: nil)
    expect(user).to_not be_valid
  end

  it "User's fname is nil" do
    user = User.create(fname: nil, lname: 'doe', email: 'john.doe@example.com', password: 'password')
    expect(user).to_not be_valid
  end

  it "User's lname is nil" do
    user = User.create(fname: 'Joe', lname: nil, email: 'john.doe@example.com', password: 'password')
    expect(user).to_not be_valid
  end

  it "User's email is nil" do
    user = User.create(fname: 'Joe', lname: 'Doe', email: nil, password: 'password')
    expect(user).to_not be_valid
  end

  it "User's password is nil" do
    user = User.create(fname: 'Joe', lname: 'Doe', email: 'john.doe@example.com', password: nil)
    expect(user).to_not be_valid
  end

  it "User's email is unique" do
    User.create(fname: 'John', lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    user_two = User.create(fname: 'Ben', lname: 'Dover', email: 'john.doe@example.com', password: 'password')
    expect(user_two).to_not be_valid
  end

  it "Users email is valid" do
    user = User.create(fname: 'John', lname: 'Doe', email: 'john.doe-example.hello', password: 'password')
    expect(user).to_not be_valid
  end

  it "Minimum length of password is 5 characters" do
    user = User.create(fname: 'John', lname: 'doe', email: 'john.doe@example.com', password: 'pass')
    expect(user).to_not be_valid
  end

  describe 'Validates image types' do
    let(:user) { User.new(fname: 'John', lname: 'Doe', email: 'john.doe@example.com', password: 'password') }

    it 'validates a .png image ' do
      image_path = "#{Rails.root}/spec/files/MVC_DataB.png"
      user.image.attach(io: File.open(image_path), filename: "MVC_DataB", content_type: "image/png")
      user.save

      expect(user.image).to be_valid
    end

    it 'validates a .jpg image ' do
      image_path = "#{Rails.root}/spec/files/Matterhorn.jpg"
      user.image.attach(io: File.open(image_path), filename: "Matterhorn", content_type: "image/jpg")
      user.save

      expect(user.image).to be_valid
    end
  end
end
