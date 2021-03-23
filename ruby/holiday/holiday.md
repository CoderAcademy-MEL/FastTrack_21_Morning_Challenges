# Holiday

## Setup

This challenge has some automated tests similar to what you find on EdStem. To run these tests, you will need to install a tool called RSpec. You can install RSpec by running:

`gem install rspec`

You can check your code against the tests by running `rspec holiday_spec.rb`.

## Challenge

Your challenge today is to create a 'Holiday' class. A holiday should have three attributes and should require all three in the initialize method.

| Attribute | Datatype | Description                  |
| ----------|----------|------------------------------|
| Name      | String   | What the holiday is called.  |
| Day       | Integer  | What day does it fall on.    |
| Month     | String   | What month it is in.         |

In addition to creating getters and setters for these attributes, you will need to define two additional methods.

### display

This method should print the string `<Holiday Name> is held on <Day + Ordinal> in <Month>` For example, Festivus, held on the 23rd of December, should `puts` the string. `Festivus is held on the 23rd of December`. Note the 'Ordinal Indicator' the 1st, 2nd, 3rd, 4th, etc. Maybe you could create a helper method to make this easier.

### in_same_month(other_holiday)

This method should take one parameter, another holiday object. It should determine if the two holidays are in the same month and return true or false.