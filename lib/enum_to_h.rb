=begin
Copyright (c) 2013, Matthew Kerwin
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met: 

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer. 
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution. 

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
=end

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

