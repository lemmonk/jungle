require 'rails_helper'

RSpec.describe UserSpec, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it 'VALIDATE USER' do
    @user = User.new(
      id: 1,
      name_first: "Koda",
      name_last: "Lemmon",
      email: "kyle@gmail.com",
      password: "********",
      created_at: DateTime.now,
      updated_at: DateTime.now
    )

 pp @user
 @user.validate!
  expect(@user.email).to be
 
  end
end
