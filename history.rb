#Emma Mossinger

#Credit: https://github.com/esquireofoz/saas_class/blob/master/hw1/part5.rb



class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_accessor attr_name
    attr_accessor attr_name+"_history"
    #class_eval "your code here, use %Q for multiline strings"
    class_eval %Q{

def #{attr_name}=(value)
@#{attr_name}_history ||= [nil]
@#{attr_name}_history << value
@#{attr_name} = value
end

def #{attr_name}_history
@#{attr_name}_history
end
}
  end
end

class Foo
  attr_accessor_with_history :foo
  attr_accessor_with_history :bar
end


p f = Foo.new     # => #<Foo:0x127e678>

p f.bar = 3       # => 3

p f.bar = :wowzo  # => :wowzo

p f.bar = 'boo!'  # => 'boo!'

p f.bar_history   # => [nil, 3, :wowzo, 'boo!']