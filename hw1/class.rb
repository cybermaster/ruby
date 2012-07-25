class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
                                 #class_eval "your code here, use %Q for multiline strings"
    class_eval %Q[
                 def #{attr_name}=(new_value)
                   if @#{attr_name}_history == nil
                     @#{attr_name}_history = []
                     @#{attr_name}_history.push(#{attr_name})
                   end

                   @#{attr_name} = new_value
                   @#{attr_name}_history.push(new_value)
                 end
                 ]
  end
end

class Foo
  attr_accessor_with_history :bar
end
