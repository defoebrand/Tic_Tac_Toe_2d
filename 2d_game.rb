class Game
  attr_accessor :text_line1, :text_line2, :start, :player2, :player_turn, :winner, :switch, :all_squares
  def initialize
    @start = false
    @switch = false
    @player_turn = 'X'
    @text_line1 = 'Welcome to Tic Tac Toe!'
    @text_line2 = 'Would you like to play against a human or CPU?'
    @winner = false
    @all_squares = { square1: '', square2: '', square3: '', square4: '', square5: '', square6: '', square7: '', square8: '', square9: '' }
    # @conditions = @all_squares.values
    @winners = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [1, 4, 7],
      [2, 5, 6],
      [7, 8, 9],
      [0, 4, 8],
      [2, 4, 6]
    ]
  end

  def text
    Text.new(@text_line1, color: 'white', x: 25, y: 25)
    Text.new(@text_line2, color: 'white', x: 25, y: 50)
  end

  def display_player
    @text_line2 = ''
    @text_line1 = @player_turn == 'X' ? "X's turn" : "O's turn"
  end

  def player_switch
    @player_turn = @player_turn == 'X' ? 'O' : 'X'
  end

  def winner
    conditions = @all_squares.values
    # return true if linear == true || diagonal == true
    # end

    # def linear
    return true if
    conditions[0] == conditions[1] && conditions[0] == conditions[2] && conditions[0] != '' ||
    conditions[3] == conditions[4] && conditions[3] == conditions[5] && conditions[3] != '' ||
    conditions[6] == conditions[7] && conditions[6] == conditions[8] && conditions[6] != '' ||
    conditions[0] == conditions[3] && conditions[0] == conditions[6] && conditions[0] != '' ||
    conditions[1] == conditions[4] && conditions[1] == conditions[7] && conditions[1] != '' ||
    conditions[2] == conditions[5] && conditions[2] == conditions[8] && conditions[2] != '' ||

    # 3.times do |ind|
    #   if @conditions.each_slice(3).to_a[ind].all? == true
    # end
    # 3.times do |ind|
    #   if @conditions.each_slice(3).to_a.transpose[ind].all? == true
    # end
    # end
    #
    # def diagonal
    conditions[2] == conditions[4] && conditions[2] == conditions[6] && conditions[2] != '' ||
    conditions[0] == conditions[4] && conditions[0] == conditions[8] && conditions[0] != ''
  end

  def declare_winner
    @text_line1 = 'Congratulations!'
    @text_line2 = "#{@player_turn} wins!"
  end
end
