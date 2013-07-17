class Tree
	attr_accessor :children
	attr_accessor :value

	def initialize value
		@value = value
		@children =[]
	end

	def addchildren value
		@children.push(Tree.new(value))
	end

	def contains value
		if value == @value
			return true
		else
			@children.each do |child|
				if child.contains(value) == true
					return true
				end
			end

		end
		return false
	end
	
end

