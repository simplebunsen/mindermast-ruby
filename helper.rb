module TypeHelper
  TYPE_GUESS = 'Codebreaker'.freeze
  TYPE_MAKER = 'Codemaker'.freeze
end

module InputHelper
  def self.color_to_internal(array)
    # do magic to convert color array to internal
  end

  def self.parse_gamemode(gm)
    case gm.to_i
    when 0
      0
    when 1
      1
    else
      puts 'invalid input, default gamemode 0 used'
      0
    end
  end

  def self.rating_processing(num_place_color, num_color)
    rating = []
    num_place_color.times { rating.push(2) }
    num_color.times { rating.push(1) }
    rating
  end
end
