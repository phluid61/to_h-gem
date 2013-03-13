
module Enumerable
	#
	# Converts +enum+ to a Hash.
	#
	# Each element of +enum+ must be a single item, or an array of two items.
	# Duplicate keys are overwritten in order.
	#
	#    [].to_h             #=> {}
	#    [1,2].to_h          #=> {1=>nil, 2=>nil}
	#    (1..2).to_h         #=> {1=>nil, 2=>nil}
	#    [[1,2],[3,4]].to_h  #=> {1=>2, 3=>4}
	#    [[1,2],[1,4]].to_h  #=> {1=>4}
	#
	def to_h
		hsh = {}
		each do |k,v,*x|
			raise ArgumentError, "invalid number of elements (#{x.length+1} for 1..2)" if x.any?
			hsh[k] = v
		end
		hsh
	end
end

