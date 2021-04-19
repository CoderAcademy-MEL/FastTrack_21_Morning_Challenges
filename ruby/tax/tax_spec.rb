require_relative 'tax'

describe "calculate_tax_payable " do
  it "is defined" do
    expect(defined? calculate_tax_payable).to eql("method")
  end
  it "accept one argument" do
    income = 0
    expect { calculate_tax_payable(income) }.to_not raise_error
    expect { calculate_tax_payable(income, income) }.to raise_error(ArgumentError)
  end
  it "correctly calculate tax for income in the first bracket" do
    actual = calculate_tax_payable(0.0)
    expect(actual).to eql({ percentage_of_income: 0, tax_payable: 0.0 }).or eql({ percentage_of_income: 0.0, tax_payable: 0.0 })
    actual = calculate_tax_payable(18_200.0)
    expect(actual).to eql({ percentage_of_income: 0, tax_payable: 0.0 }).or eql({ percentage_of_income: 0.0, tax_payable: 0.0 })
  end

  it "correctly calculate tax for income in the second bracket" do
    income = 18_201
    actual = calculate_tax_payable(income)
    expect(actual).to eql({ percentage_of_income: 0.0010438986868853359, tax_payable: 0.19 })
    income = 37_000
    actual = calculate_tax_payable(income)
    expect(actual).to eql({ percentage_of_income: 9.654054054054054, tax_payable: 3572.0 })
  end

  it "correctly calculate tax for income in the third bracket" do
    income = 37_001
    actual = calculate_tax_payable(income)
    expect(actual).to eql({ percentage_of_income: 9.65467149536499, tax_payable: 3572.325 })
    income = 87_000
    actual = calculate_tax_payable(income)
    expect(actual).to eql({ percentage_of_income: 22.78390804597701, tax_payable: 19_822.0 })
  end

  it "correctly calculate tax for income in the fourth bracket" do
    income = 87_001
    actual = calculate_tax_payable(income)
    expect(actual).to eql({ percentage_of_income: 22.784071447454625, tax_payable: 19_822.37 })
    income = 180_000
    actual = calculate_tax_payable(income)
    expect(actual).to eql({ percentage_of_income: 30.128888888888888, tax_payable: 54_232.0 })
  end

  it "correctly calculate tax for income in the fifth bracket" do
    income = 180_001
    actual = calculate_tax_payable(income)
    puts actual
    expect(actual).to eql({ percentage_of_income: 30.128971505713853, tax_payable: 54_232.45 })
    income = 180_101
    actual = calculate_tax_payable(income)
    puts actual
    expect(actual).to eql({ percentage_of_income: 30.13722855508853, tax_payable: 54_277.45 })
  end
end
