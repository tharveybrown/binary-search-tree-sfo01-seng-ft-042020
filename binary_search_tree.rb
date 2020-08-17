class BST 
  attr_accessor :data, :left, :right
  def initialize(value)
    @data = value
  end

  def insert(num)
    if num > self.data 
      if self.right
        self.right.insert(num)
      else
      
      # iterate until you get to right = nul
        self.right = BST.new(num)
      end

    else
      if self.left
        self.left.insert(num)
      else
      
        self.left = BST.new(num)
      end
    end
  end

  def each(&block)
    if self.left
      self.left.each(&block)
    end
    block.call(self.data)
    if self.right
      self.right.each(&block)
    end
  end
end