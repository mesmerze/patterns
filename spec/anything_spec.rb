require 'spec_hepler'
require 'pry'

require 'family'

describe Family do
  it 'prints out each member of the family' do
    family = Family.new("Jacksons")

    family.add_father("Jack", "M")
    family.add_mother("Jane", "F")

    3.times { |i| family.add_child("Child #{i}", "F") }

    expect{ family.each_member(&:name) }.to output(<<~EOF
      Jack Jackson
      Jane Jackson
      Child 0 Jackson
      Child 1 Jackson
      Child 2 Jackson
    EOF
    ).to_stdout
  end
end
