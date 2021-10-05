class HoodState
  def initialize(context)
    @context = context
  end

  def next(part_to_install)
    raise IlligalJumpError.new("State machine isn't being respected") unless part_to_install == :wheels

    @context.state = WheelsState.new(@context)
  end
end
