class CalculatorsController < ApplicationController
  def new
  end

  def result
    @first_number = params["first_number"].to_f
    @second_number = params["second_number"].to_f
    @operation = params["operation"]

    case @operation
    when "+"
      @result = @first_number + @second_number
    when "-"
      @result = @first_number - @second_number
    when "*"
      @result = @first_number * @second_number
    when "/"
      @result = @first_number / @second_number
    end
  end
end
