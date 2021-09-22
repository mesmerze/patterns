require 'spec_hepler'
require 'pry'

require 'user'
require 'manager'
require 'payment_service_factory'
require 'exceptions/forbidden'

describe PaymentServiceFactory do
  let(:user) { User.new('John Doe') }
  let(:manager) { Manager.new('Boss') }

  it 'allows manager to perform payments' do
    expect { described_class.for(manager).pay(user, 500) }.not_to raise_error
  end

  it 'forbids user toperform payments' do
    expect { described_class.for(user).pay(manager, 500) }.to raise_error(Forbidden)
  end
end
