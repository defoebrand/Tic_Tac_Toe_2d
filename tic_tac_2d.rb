require 'ruby2d'
require_relative '2d_game'
require_relative 'board'

set title: 'Tic Tac Toe'
set background: 'navy'
# Set frame rate
set fps_cap: 50

# Set the window size
set width: 640, height: 720

game = Game.new
board = Board.new

update do
  clear
  if game.winner == true
    board.display
    game.text
    board.in_play_display
    game.declare_winner
  else
    board.display
    game.text
    if game.start
      sleep(0.5)
      board.in_play_display
      game.display_player
    end
  end
end

on :mouse_down do |event|
  # x and y coordinates of the mouse button event
  # puts event.x, event.y
  if game.winner
  elsif game.start

    if (125..245).include?(event.x) && (170..285).include?(event.y)
      if board.square1.nil?
        board.square1 = game.player_turn
        game.switch = true
        game.all_squares[:square1] = board.square1
      end
    end
    if (260..385).include?(event.x) && (170..285).include?(event.y)
      if board.square2.nil?
        board.square2 = game.player_turn
        game.switch = true
        game.all_squares[:square2] = board.square2
      end
    end

    if (400..515).include?(event.x) && (170..285).include?(event.y)
      if board.square3.nil?
        board.square3 = game.player_turn
        game.switch = true
        game.all_squares[:square3] = board.square3
      end
    end

    if (125..245).include?(event.x) && (300..425).include?(event.y)
      if board.square4.nil?
        board.square4 = game.player_turn
        game.switch = true
        game.all_squares[:square4] = board.square4
      end
    end

    if (260..385).include?(event.x) && (300..425).include?(event.y)
      if board.square5.nil?
        board.square5 = game.player_turn
        game.switch = true
        game.all_squares[:square5] = board.square5
      end
    end

    if (400..515).include?(event.x) && (300..425).include?(event.y)
      if board.square6.nil?
        board.square6 = game.player_turn
        game.switch = true
        game.all_squares[:square6] = board.square6
      end
    end

    if (125..245).include?(event.x) && (440..560).include?(event.y)
      if board.square7.nil?
        board.square7 = game.player_turn
        game.switch = true
        game.all_squares[:square7] = board.square7
      end
    end

    if (260..385).include?(event.x) && (440..560).include?(event.y)
      if board.square8.nil?
        board.square8 = game.player_turn
        game.switch = true
        game.all_squares[:square8] = board.square8
      end
    end

    if (400..515).include?(event.x) && (440..560).include?(event.y)
      if board.square9.nil?
        board.square9 = game.player_turn
        game.switch = true
        game.all_squares[:square9] = board.square9
      end
    end

  end

  unless game.winner
    game.player_switch if game.switch == true
    game.switch = false
  end
end

on :key_down do |event|
  unless game.start
    game.text_line1 = ''
    if event.key == 'c'
      game.text_line2 = 'Player 2 is CPU'
      game.start = true
      game.player2 = 'cpu'
    elsif event.key == 'h'
      game.text_line2 = 'Player 2 is Human'
      game.start = true
      game.player2 = 'human'
    end
  end
  if event.key == 'r'
    game = Game.new
    board = Board.new
  end
end

show
