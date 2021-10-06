class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) { return @name }
      define_method("#{name}=") { @name = name }
    end 
  end
end
