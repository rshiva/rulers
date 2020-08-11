#rulers/lib/rulers/array.rb

class Array

  def sum(start=0)
    inject(start, &:+)
  end

  def say_my_name(name="shiva")
    "Welcome from the gem - #{name}"
  end

end