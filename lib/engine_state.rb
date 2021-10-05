class EngineState
  def initialize(context)
    @context = context
  end

  def next(part_to_install)
    raise IlligalJumpError.new("State machine isn't being respected") unless part_to_install == :hood

    @context.state = HoodState.new(@context)
  end
end
