class YourNameController < ApplicationController

  def index
      @name = params[:name]
  end

  def check_number

      @number = params[:number]

      secret_number = 36

      number_int = @number.to_i

      if number_int > secret_number

        @guessing_game_msg = "Lower!"

      elsif number_int < secret_number

        @guessing_game_msg = "Higher!"

      else 

        @guessing_game_msg = "#{secret_number}! You guessed the number!!"

      end

  end

end
