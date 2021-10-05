class CarProductionLine
  attr_accessor :state

  def initialize
    @state = ChassisState.new self
  end

  def install(part_to_install)
    @state.next(part_to_install)
  end
end
