require ('rspec')
require ('calc')

describe ('calc') do
  it("takes a sentence posed as an addition question and returns its numerical answer") do
    calc("1 plus 1").should(eq(2))
  end

  it("takes a sentence posed as a subtraction question and returns its numerical answer") do
    calc("7 minus 3").should(eq(4))
  end

  it("takes a sentence posed as a multiplication question and returns its numerical answer") do
    calc("5 times 4").should(eq(20))
  end

  it("takes a sentence posed as a division question and returns its numerical answer") do
    calc("10 divided by 2").should(eq(5.0))
  end

  it("takes a sentence posed as a powers question and returns its numerical answer") do
    calc("2 to the power of 3").should(eq(8))
  end

  it("takes a sentence posed as a math question with multiple operators and returns its numerical answer") do
    calc("1 plus 1 minus 1").should(eq(1))
  end
end
