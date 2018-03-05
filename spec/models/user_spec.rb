require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

  	it 'should add to db if user gives valid credentials' do
  		@user = User.new({name: 'Johnnyboy', email: "johnnyboy@gmail.com", password_digest: "passman"})
  		@user.save!
  	end

  end
end
