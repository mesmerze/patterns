class Parent
  attr_reader :first_name
  def initialize(first_name, gender)
    @first_name = first_name
    @gender = gender
  end
end

class Child
  attr_reader :first_name
  def initialize(first_name, gender)
    @first_name = first_name
    @gender = gender
  end
end


class Family
  def initialize(name)
    @surname = name

    @children = []
  end

  def add_father(first_name, gender)
    @father = Parent.new(first_name, gender)
  end

  def add_mother(first_name, gender)
    @mother = Parent.new(first_name, gender)
  end

  def add_child(first_name, gender)
    @children << Child.new(first_name, gender)
  end

  def each_member
    puts(
      <<~EOF
        #{ @father.first_name } Jackson
        #{ @mother.first_name } Jackson
        #{ @children[0].first_name } Jackson
        #{ @children[1].first_name } Jackson
        #{ @children[2].first_name } Jackson
      EOF
    )
  end
end