class DayRange
  def self.build(start=1, finish=9999)
    build_hour_ranges

    new(@hour_ranges, start, finish)
  end

  def self.build_hour_ranges
    @hour_ranges = [HourRange.new]
  end

  attr_reader :start, :finish, :hour_ranges
  def initialize(hour_ranges, start=1, finish=9999)
    @start = start
    @finish = finish
    @hour_ranges = hour_ranges
  end
end
