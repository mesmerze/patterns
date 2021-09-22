module Services
  class UserPaymentService
    def pay(recepient, amount)
      raise Forbidden, 'you have to be a manager to pay'
    end
  end
end
