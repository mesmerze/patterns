require 'rental_plan/metadata'
require 'rental_plan/day_range'
require 'rental_plan/hour_range'

class RentalPlan
  def self.build(name)
    build_metadata name
    build_ranges

    new(@metadata, @ranges)
  end

  def self.build_metadata(name)
    @metadata = Metadata.new(name)
  end

  def self.build_ranges
    @ranges = [DayRange.build]
  end

  def initialize(metadata, ranges)
    @metadata = metadata
    @ranges = ranges
  end

  def name
    @metadata.name
  end

  def ranges
    @ranges
  end
end
