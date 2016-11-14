# 9 1   0 10   10   10   6 2   7 3   8 2   10   9 0   9 1   10
# The score for the ten frames would be
# Frame   score
# -----   ----- 
#  1       10 
#  2       30 
#  3       56 
#  4       74 
#  5       82 
#  6      100 
#  7      120 
#  8      139 
#  9      148 
#  10     168

module Frame_cover
	class Frame
		attr_accessor :first_ball, :second_ball, :score	
		def initialize(first_ball,second_ball)
			@first_ball = first_ball.to_i
			@score=0
			@second_ball= second_ball.to_i || nil
		end

		def score_keeping(counter,game, pre)
			# @counter=counter.to_i
			# puts first_ball
			# puts second_ball
			# puts game[1].first_ball
			if counter==9
				x=pre[10][0].to_i
				if first_ball==10
					if x==10
						y=pre[11][0].to_i
					end
					@score= 10 + x + y #next 2 balls
				elsif first_ball+second_ball==10 
					@score= 10 + x #next 1 ball
				else
					@score=  first_ball+second_ball
				end
			else
				if first_ball==10
					if game[counter+1].second_ball== nil
						@score= 20+ game[counter+2].first_ball #next 2 balls
					else
						@score= 10+ game[counter+1].first_ball + game[counter+1].second_ball #next 2 balls
					end
				elsif first_ball+second_ball==10 
					@score= 10+ game[counter+1].first_ball #next 1 ball
					puts 
				else
					@score=  first_ball+second_ball
				end
				puts "Score is: #{score}"
			end
		end
	end
end

class Input 
	include Frame_cover
	attr_accessor :a, :game, :pre
	def initialize()
		@a= Array.new(10)
		@a= gets.split("  ")
		@pre= @a
		@a.map! { |i| i.split }
	end

	#create 10 frames of 1 game
	def create_frames
		puts a[1][1]
		game= Array.new(10)
		game.map! do |item|
			i||=0
			item = Frame.new(@a[i][0], @a[i][1])
			# puts item
			i+=1
			item
		end
		out_game = game
		# for i in (0..9) do 
		# 	puts game[i].first_ball
		# 	puts out_game[i].first_ball
		# end
		game.each_with_index do|frame, index|
			frame.score_keeping(index, out_game, @pre)
		end
	end
end

# a= Array.new(10)
# a= gets.split("  ")
# a.map! { |i| i.split }

# puts a[2][0]
# puts a[2][1]

# game= Array.new(10)

puts"Number of lines of input:"
n= gets.to_i
input_arrays=Array.new(n)
puts "Enter input"
input_arrays.map! do |item|
	item = Input.new()
	item.create_frames
end
# puts input_arrays

# #create 10 frames of 1 game
# game.map! do |item|
# 	i||=0
# 	item = Frame.new(a[i][0], a[i][1])
# 	i+=1
# end
# 9 1  0 10   10   10   6 2   7 3   8 2   10   9 0   9 1   10

# puts game[0].class

# input_arrays.map do |item|

# end