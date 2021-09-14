require 'spec_hepler'
require 'pry'

require 'rental_plan'

describe RentalPlan do
  let(:plan) { RentalPlan.new 'My rental plan' }

  it 'it has metadata' do
    expect(plan.name).to eq('My rental plan')
  end

  it 'has list of day ranges' do
    expect(plan.ranges).to be_a(Array)
    expect(plan.sample.start).to eq(1)
  end

  describe 'each day range' do
    it 'has time ranges' do
      expect(plan.ranges.sample.hour_ranges).to be_a(Array)
      expect(plan.ranges.sample.hour_ranges.sample.finish).to eq(24)
    end
  end
end


# plan
#   ->metadata
#   ->day ranges start, finish
#     ->hour ranges start, finish
