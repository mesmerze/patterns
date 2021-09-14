require 'spec_hepler'
require 'pry'

require 'user'

module Application
  describe User do
    let(:user) { User.new "josemotanet", "Jose Mota", "Software Designer" }

    it 'notifies observers on changes to user' do
      observer = double
      allow(observer).to receive(:updated).with(:username, "Josemota").and_return(nil)


      user.subscribe(observer)
      user.update(:username, "josemota")

      expect(observer).to have_received(:updated).with("josemota")
    end
  end
end
