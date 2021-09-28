require 'spec_hepler'
require 'pry'

require 'user'

module Application
  describe User do
    let(:user) { User.new 'josemotanet', 'Jose Mota', 'Software Designer' }

    it 'notifies observers on changes to user' do
      observer = double
      allow(observer).to receive(:updated).with(user).and_return(nil)

      user.subscribe(observer)
      user.update(:username, "josemota")

      expect(observer).to have_received(:updated).with(user)
    end

    it 'prints the changed value' do
      observer = UserObserver.new
      user.subscribe(observer)
      expect{ user.update(:username, "josemota") }.to output("josemota").to_stdout
    end
  end
end
