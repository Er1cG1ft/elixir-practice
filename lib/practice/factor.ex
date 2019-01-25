defmodule Practice.Factor do
  def parse_int(text) do
    {num, _} = Integer.parse(text)
    num
  end
  
  def factor(x) do
    #if string, parse
    if is_binary(x) do
      get_factors(parse_int(x), 2, [])
    else
      get_factors(x, 2, [])
    end
  end

  # if the number is less than the current factorial, return all the factors. we're done
  def get_factors(x, fac, factors) when x < fac do
    factors
  end

  # if number % factorial == 0, this factorial needs to be included. add it and recursively call get_factors
  def get_factors(x, fac, factors) when rem(x, fac) == 0 do
    [fac | get_factors(div(x, fac), fac, factors)]
  end

  # if none of the above are true, increment factorial by 1 to try the next one
  def get_factors(x, fac, factors) do
    get_factors(x, fac + 1, factors)
  end
end