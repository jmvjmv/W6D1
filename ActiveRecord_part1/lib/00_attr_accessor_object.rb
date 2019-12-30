class AttrAccessorObject
  def self.my_attr_accessor(*names)
    # ...
    # This is the getter
    names.each do |name|
      define_method(name) do
        instance_variable_get("@#{name}")
      end

    #This is the setter 
      define_method("#{name}=") do |val|
        instance_variable_set("@#{name}", val)
      end

    end
  end
end
