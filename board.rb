class Board
  attr_accessor :text_line1, :text_line2, :square1, :square2, :square3, :square4, :square5, :square6, :square7, :square8, :square9
  def initialize
    @board_color = 'purple'
    @players_color = 'green'
    @computer_choices = [@square1, @square2, @square3, @square4, @square5, @square6, @square7, @square8, @square9]
  end

  def display
    Line.new(
      x1: 250, y1: 165,
      x2: 250, y2: 555,
      width: 15,
      color: @board_color
    )
    Line.new(
      x1: 390, y1: 165,
      x2: 390, y2: 555,
      width: 15,
      color: @board_color
    )
    Line.new(
      x1: 125, y1: 290,
      x2: 515, y2: 290,
      width: 15,
      color: @board_color
    )
    Line.new(
      x1: 125, y1: 430,
      x2: 515, y2: 430,
      width: 15,
      color: @board_color
    )
  end

  def in_play_display
    if @player_turn == 'O'
      Text.new(rand(@computer_choices), color: @players_color, x: 150, y: 175, size: 100)
    else
      Text.new(@square1, color: @players_color, x: 150, y: 175, size: 100)
      Text.new(@square2, color: @players_color, x: 285, y: 175, size: 100)
      Text.new(@square3, color: @players_color, x: 425, y: 175, size: 100)
      Text.new(@square4, color: @players_color, x: 150, y: 305, size: 100)
      Text.new(@square5, color: @players_color, x: 285, y: 305, size: 100)
      Text.new(@square6, color: @players_color, x: 425, y: 305, size: 100)
      Text.new(@square7, color: @players_color, x: 150, y: 445, size: 100)
      Text.new(@square8, color: @players_color, x: 285, y: 445, size: 100)
      Text.new(@square9, color: @players_color, x: 425, y: 445, size: 100)
  end
  end
end
