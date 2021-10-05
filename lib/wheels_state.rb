class WheelsState
  def initialize(context)
    @context = context
  end

  def next(part_to_install)
    raise NotImplementedError
  end
end
