class Board

  attr_accessor :cells

    @cells = []


  def reset!
    @cells.clear
    @cells.concat([" "]*9)
    end

  def initialize
    @cells = [" "," "," "," "," "," "," "," "," "]
  end

  def display
      puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
      puts "-----------"
      puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
      puts "-----------"
      puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    @cells[input.to_i-1]
  end

  def full?
     if @cells.include?(" ")
      false
    else
      true
     end
  end

  def turn_count
     counter = 0
     @cells.each do |move|
       if move == "X" || move == "O"
        counter += 1
       end
      end
     counter
  end

   def taken?(input)
     if position(input) != " " #|| position(input) == ""
       true
     else
       false
     end
   end

   def valid_move?(input)
     if input.to_i.between?(1,9) && !taken?(input)
       true
     end
   end

  def update(input, player)
    @cells[input.to_i-1] = player.token
  end
























end
