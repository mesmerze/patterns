class ChassisState
  def initialize(context)
    @context = context
  end

  def next(part_to_install)
    raise IlligalJumpError.new("State machine isn't being respected") unless part_to_install == :engine

    @context.state = EngineState.new(@context)
  end
end
