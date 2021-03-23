class Holiday
  attr_accessor :name, :day, :month

  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end

  def display
  # Festivus is held on the 23rd of December
    puts "#{name} is held on the #{ordinal} of #{month}"
  end

  def in_same_month(other_holiday)
    month == other_holiday.month 
    # 'December' == 'Dece'
    # false
  end

  def ordinal
    # only 11,12,13
    return "#{day}th" if (day % 100).between?(11, 13)
    # if not 11-13
    suffix = {
      1 => 'st',
      2 => 'nd',
      3 => 'rd'
    }
    suffix.default = 'th'
    "#{day}#{suffix[last_digit]}"
  end

  def last_digit
    day % 10
  end
end

holiday = Holiday.new('Festivus', 23, 'December')
holiday2 = Holiday.new('Valentine....', 14, 'December')
holiday3 = Holiday.new('New Year Day', 1, 'January')
p holiday.in_same_month(holiday2)


# holiday4  = Holiday.new('New Year Day part 2', 2, 'January')
# puts holiday.display
# puts holiday2.display
# puts holiday3.display
# puts holiday4.display
