require 'spec_hepler'
require 'pry'

require 'car_production_line'
require 'chassis_state'
require 'engine_state'
require 'hood_state'
require 'wheels_state'
require 'illigal_jump_error'


describe CarProductionLine do
  let(:line) { CarProductionLine.new }

  it '1st step - chassis' do
    expect(line.state).to be_a(ChassisState)
  end

  it '2nd step - enging' do
    line.install :engine

    expect(line.state).to be_a(EngineState)
  end

  it '3rd step - hood' do
    line.install :engine
    line.install :hood

    expect(line.state).to be_a(HoodState)
  end

  it '3rd step - hood' do
    line.install :engine

    expect{ line.install :wheels }.to raise_error(IlligalJumpError)
  end
end
