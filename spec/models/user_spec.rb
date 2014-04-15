require 'spec_helper'

describe User do
  it 'sends a welcome email' do
    user = User.new({:handle => 'test', :email => 'test', :password => 'test', :password_confirmation => 'test'})
    expect(UserMailer).to receive(:signup_confirmation).with(user)
    user.save
  end

  it { should have_many :tweets}
  it { should have_many :follows}
end
