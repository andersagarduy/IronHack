require 'pry'
class ChessBoard
	attr_accessor :board_grid, :pieces, :piece
	def initialize pieces
		@board_grid = Array.new(8) { Array.new(8)}
		binding.pry
		@piece = piece  #---> wR
	end

	def check_board
		@board_grid.each do |position|
		    position.each do |cell|
			 if cell == nil
			 print " -- "
			 else
			     print @piece.piece_name
			 end
			 end
			puts ""
		end
	end

	def add_piece given_piece
		@piece << given_piece
	end

	def add_piece_to_board 
		@board_grid << @piece
	end
end

class Piece 
	attr_accessor :piece_name, :piece_position
	def initialize piece_name, piece_position 	
		@piece_name = piece_name
		@piece_position = piece_position
	end
end	

class Rook < Piece
	def initialize
		super
	end

	def check_movement
		
	end
end

wR = Rook.new :wR, [0, 0]



new_game = ChessBoard.new

new_game.add_piece_to_board 

new_game.check_board




=begin
board_grid = [[a8, nil, nil,      nil, nil, nil,      nil, h8],
              [nil, nil, nil,     nil, nil, nil,     nil, nil],
              [nil, nil, nil,     nil, nil, nil,     nil, nil],
              [nil, nil, nil,     nil, nil, nil,     nil, nil],
              [nil, nil, nil,     nil, nil, nil,     nil, nil],
              [nil, nil, nil,     nil, nil, nil,     nil, nil],
              [nil, nil, nil,     nil, nil, nil,     nil, nil],
              [nil, nil, nil,     nil, nil, nil,     nil, nil]]
				





bR bN bB bQ bK bB bN bR
bP bP bP bP bP bP bP bP
-- -- -- -- -- -- -- --
-- -- -- -- -- -- -- --
-- -- -- -- -- -- -- --
-- -- -- -- -- -- -- --      #---> @board_grid[0, 0] = a8 
wP wP wP wP wP wP wP wP
wR wN wB wQ wK wB wN wR

=end





