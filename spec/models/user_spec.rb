require 'rails_helper'

RSpec.describe User, type: :model do
  it "user is valid" do
    user = User.new(
      name: "joao",
      email: "joao@teste.com",
      phone: "9000009090",
      avatar: File.open(Rails.root.join('spec', 'fixtures','fixtures', 'test-avatar.png')),
      password: "123456"
    )
    
    expect(user).to be_valid
  end

  it "user is not valid" do

    user = User.new(
      name: "joao",
      email: "joao@teste.com",
      phone: "9000009090",
      password: "123456"
    )

    expect(user).to_not be_valid

  end

  it "user should have a name" do

    user = User.new(
      email: "joao@teste.com",
      phone: "9000009090",
      password: "123456",
      avatar: file_fixture("test-avatar.png"),
    )

    expect(user).to_not be_valid

  end
end