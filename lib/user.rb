module Application
  class User
    def initialize(username, name, job)
      @username = username
      @name = name
      @job = job
      @observers = []
    end
  end
end
