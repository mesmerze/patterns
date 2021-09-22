require 'services/user_payment_service'
require 'services/manager_payment_service'

class PaymentServiceFactory
  def self.for(entity)
    case entity
    when User then Services::UserPaymentService.new
    when Manager then Services::ManagerPaymentService.new
    end
  end
end
