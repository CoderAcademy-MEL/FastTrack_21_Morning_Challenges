require_relative '../simon_says'

describe 'simon_says further testing' do
  context 'Cases where input is an isogram and should return true' do
    it "returns the correct result when given ['Simeon says subtract 46', 'Firstly, multiply by 3', 'Simon says add 18', 'Then subtract 50', 'Next, multiply by 2', 'Then add 17', 'Simeon says multiply by 43', 'Now add 13', 'Now subtract 32', 'Firstly, multiply by 35', 'Simon says subtract 22', 'Joshua says subtract 48', 'Simon says subtract 45', 'Simon says add 7', 'Simon says add 25', 'Simeon says add 13']" do
      expect(simon_says(['Simeon says subtract 46', 'Firstly, multiply by 3', 'Simon says add 18', 'Then subtract 50', 'Next, multiply by 2', 'Then add 17', 'Simeon says multiply by 43', 'Now add 13', 'Now subtract 32', 'Firstly, multiply by 35', 'Simon says subtract 22', 'Joshua says subtract 48', 'Simon says subtract 45', 'Simon says add 7', 'Simon says add 25', 'Simeon says add 13'])).to eql(-17)
    end
    it "returns the correct result when given ys(['Firstly, multiply by 19', 'Simon says add 6', 'Next, add 29', 'Simon says add 50', 'Joshua says multiply by 27'])" do
      expect(simon_says(['Firstly, multiply by 19', 'Simon says add 6', 'Next, add 29', 'Simon says add 50', 'Joshua says multiply by 27'])).to eql(56)
    end
    it "returns the correct result when given ['Now add 44', 'Now multiply by 27', 'Simon says multiply by 30', 'Now subtract 4', 'Then multiply by 45']" do
      expect(simon_says(['Now add 44', 'Now multiply by 27', 'Simon says multiply by 30', 'Now subtract 4', 'Then multiply by 45'])).to eql(0)
    end
    it "returns the correct result when given ['Firstly, multiply by 26', 'Simon says add 13', 'Simeon says add 21']" do
      expect(simon_says(['Firstly, multiply by 26', 'Simon says add 13', 'Simeon says add 21'])).to eql(13)
    end
    it "returns the correct result when given ['Now subtract 41', 'Now add 30', 'Simon says multiply by 46', 'Firstly, subtract 37', 'Now multiply by 6', 'Then multiply by 19', 'Simon says add 23', 'Simon says subtract 28']" do
      expect(simon_says(['Now subtract 41', 'Now add 30', 'Simon says multiply by 46', 'Firstly, subtract 37', 'Now multiply by 6', 'Then multiply by 19', 'Simon says add 23', 'Simon says subtract 28'])).to eql(-5)
    end
    it "returns the correct result when given ['Sarah says subtract 36', 'Sieon says add 25', 'Now add 24', 'Sarah says add 27', 'Then multiply by 8', 'Firstly, add 35', 'Sarah says add 21']" do
      expect(simon_says(['Sarah says subtract 36', 'Sieon says add 25', 'Now add 24', 'Sarah says add 27', 'Then multiply by 8', 'Firstly, add 35', 'Sarah says add 21'])).to eql(0)
    end
    it "returns the correct result when given ['Simon says subtract 19', 'Firstly, subtract 26', 'Now add 48', 'Then subtract 22', 'Now subtract 15', 'Then add 1', 'Simon says add 28', 'Firstly, multiply by 22', 'Then add 44', 'Simeon says multiply by 16', 'Then multiply by 50', 'Simon says subtract 26', 'Firstly, add 49']" do
      expect(simon_says(['Simon says subtract 19', 'Firstly, subtract 26', 'Now add 48', 'Then subtract 22', 'Now subtract 15', 'Then add 1', 'Simon says add 28', 'Firstly, multiply by 22', 'Then add 44', 'Simeon says multiply by 16', 'Then multiply by 50', 'Simon says subtract 26', 'Firstly, add 49'])).to eql(-17)
    end
    it "returns the correct result when given ['Now add 48', 'Simeon says subtract 30', 'Firstly, subtract 46', 'Simon says subtract 21', 'Sieon says add 32', 'Joshua says add 45', 'Now subtract 4', 'Then multiply by 5', 'Next, add 36']" do
      expect(simon_says(['Now add 48', 'Simeon says subtract 30', 'Firstly, subtract 46', 'Simon says subtract 21', 'Sieon says add 32', 'Joshua says add 45', 'Now subtract 4', 'Then multiply by 5', 'Next, add 36'])).to eql(-21)
    end
    it "returns the correct result when given ['Next, subtract 2', 'Simon says add 32', 'Then multiply by 46', 'Sarah says multiply by 3', 'Firstly, multiply by 3', 'Simon says subtract 32']" do
      expect(simon_says(['Next, subtract 2', 'Simon says add 32', 'Then multiply by 46', 'Sarah says multiply by 3', 'Firstly, multiply by 3', 'Simon says subtract 32'])).to eql(0)
    end
    it "returns the correct result when given ['Now multiply by 40']" do
      expect(simon_says(['Now multiply by 40'])).to eql(0)
    end
    it "returns the correct result when given ['Simeon says multiply by 45', 'Sieon says subtract 19', 'Simeon says subtract 32', 'Firstly, multiply by 8', 'Firstly, multiply by 39']" do
      expect(simon_says(['Simeon says multiply by 45', 'Sieon says subtract 19', 'Simeon says subtract 32', 'Firstly, multiply by 8', 'Firstly, multiply by 39'])).to eql(0)
    end
    it "returns the correct result when given ['Next, subtract 19', 'Simon says add 31', 'Sarah says subtract 9']" do
      expect(simon_says(['Next, subtract 19', 'Simon says add 31', 'Sarah says subtract 9'])).to eql(31)
    end
    it "returns the correct result when given ['Simon says add 35', 'Firstly, add 12', 'Now add 25', 'Next, multiply by 43']" do
      expect(simon_says(['Simon says add 35', 'Firstly, add 12', 'Now add 25', 'Next, multiply by 43'])).to eql(35)
    end
    it "returns the correct result when given ['Then multiply by 9']" do
      expect(simon_says(['Then multiply by 9'])).to eql(0)
    end
    it "returns the correct result when given ['Simon says multiply by 23', 'Simon says subtract 34', 'Firstly, multiply by 45', 'Now multiply by 24', 'Now add 16', 'Now add 37', 'Sarah says multiply by 28', 'Next, multiply by 8', 'Simon says subtract 31', 'Simon says add 12', 'Simon says subtract 10', 'Then add 34', 'John says multiply by 50', 'John says multiply by 27']" do
      expect(simon_says(['Simon says multiply by 23', 'Simon says subtract 34', 'Firstly, multiply by 45', 'Now multiply by 24', 'Now add 16', 'Now add 37', 'Sarah says multiply by 28', 'Next, multiply by 8', 'Simon says subtract 31', 'Simon says add 12', 'Simon says subtract 10', 'Then add 34', 'John says multiply by 50', 'John says multiply by 27'])).to eql(-63)
    end
    it "returns the correct result when given ['Now multiply by 46', 'Simeon says subtract 15', 'Then subtract 46', 'Simon says subtract 18', 'Next, multiply by 48', 'Simeon says subtract 46', 'Simeon says multiply by 24', 'Next, add 38', 'Now multiply by 14', 'Simon says subtract 46', 'Simon says multiply by 30']" do
      expect(simon_says(['Now multiply by 46', 'Simeon says subtract 15', 'Then subtract 46', 'Simon says subtract 18', 'Next, multiply by 48', 'Simeon says subtract 46', 'Simeon says multiply by 24', 'Next, add 38', 'Now multiply by 14', 'Simon says subtract 46', 'Simon says multiply by 30'])).to eql(-1920)
    end
    it "returns the correct result when given ['Then multiply by 42', 'Firstly, add 16', 'Joshua says multiply by 1', 'Simon says multiply by 33', 'Sarah says multiply by 26', 'Firstly, subtract 48', 'Simon says subtract 26', 'Now add 1']" do
      expect(simon_says(['Then multiply by 42', 'Firstly, add 16', 'Joshua says multiply by 1', 'Simon says multiply by 33', 'Sarah says multiply by 26', 'Firstly, subtract 48', 'Simon says subtract 26', 'Now add 1'])).to eql(-26)
    end
    it "returns the correct result when given ['Firstly, add 10', 'Now multiply by 2', 'Simeon says add 40']" do
      expect(simon_says(['Firstly, add 10', 'Now multiply by 2', 'Simeon says add 40'])).to eql(0)
    end
    it "returns the correct result when given ['Then multiply by 22', 'John says multiply by 18', 'Simon says multiply by 14', 'Firstly, add 41', 'Simeon says add 45', 'Sarah says subtract 9', 'Sarah says subtract 24', 'Now subtract 18']" do
      expect(simon_says(['Then multiply by 22', 'John says multiply by 18', 'Simon says multiply by 14', 'Firstly, add 41', 'Simeon says add 45', 'Sarah says subtract 9', 'Sarah says subtract 24', 'Now subtract 18'])).to eql(0)
    end
    it "returns the correct result when given ['Simeon says multiply by 40', 'Next, multiply by 10', 'Sarah says multiply by 7', 'Then subtract 43', 'Sieon says multiply by 10', 'Firstly, add 21', 'Next, subtract 22']" do
      expect(simon_says(['Simeon says multiply by 40', 'Next, multiply by 10', 'Sarah says multiply by 7', 'Then subtract 43', 'Sieon says multiply by 10', 'Firstly, add 21', 'Next, subtract 22'])).to eql(0)
    end
    it "returns the correct result when given ['Sarah says subtract 13', 'John says subtract 34', 'Next, multiply by 22', 'Sieon says add 9', 'Joshua says subtract 43', 'Now add 3', 'Sieon says add 36', 'Next, multiply by 46', 'Next, subtract 50', 'Sieon says subtract 50', 'John says multiply by 8', 'Next, multiply by 4', 'Simon says subtract 22', 'Simon says subtract 18', 'Now subtract 23']" do
      expect(simon_says(['Sarah says subtract 13', 'John says subtract 34', 'Next, multiply by 22', 'Sieon says add 9', 'Joshua says subtract 43', 'Now add 3', 'Sieon says add 36', 'Next, multiply by 46', 'Next, subtract 50', 'Sieon says subtract 50', 'John says multiply by 8', 'Next, multiply by 4', 'Simon says subtract 22', 'Simon says subtract 18', 'Now subtract 23'])).to eql(-40)
    end
    it "returns the correct result when given ['Then subtract 45', 'Simon says multiply by 13', 'Joshua says add 5', 'Then subtract 1', 'Simon says multiply by 2', 'Firstly, add 25', 'Now subtract 25', 'Then multiply by 26', 'Then multiply by 45', 'Then multiply by 16', 'Next, multiply by 8', 'Firstly, add 15', 'Joshua says multiply by 6', 'Firstly, add 3', 'Now multiply by 46']" do
      expect(simon_says(['Then subtract 45', 'Simon says multiply by 13', 'Joshua says add 5', 'Then subtract 1', 'Simon says multiply by 2', 'Firstly, add 25', 'Now subtract 25', 'Then multiply by 26', 'Then multiply by 45', 'Then multiply by 16', 'Next, multiply by 8', 'Firstly, add 15', 'Joshua says multiply by 6', 'Firstly, add 3', 'Now multiply by 46'])).to eql(0)
    end
    it "returns the correct result when given ['Then multiply by 36', 'Simon says multiply by 32', 'Next, add 48', 'Now subtract 28', 'Firstly, subtract 38', 'Sieon says subtract 7', 'Sarah says multiply by 8', 'Simon says multiply by 50', 'Firstly, subtract 5', 'Next, multiply by 50', 'Joshua says add 13', 'Now add 1', 'Simon says subtract 49', 'Firstly, multiply by 41', 'Simon says add 17']" do
      expect(simon_says(['Then multiply by 36', 'Simon says multiply by 32', 'Next, add 48', 'Now subtract 28', 'Firstly, subtract 38', 'Sieon says subtract 7', 'Sarah says multiply by 8', 'Simon says multiply by 50', 'Firstly, subtract 5', 'Next, multiply by 50', 'Joshua says add 13', 'Now add 1', 'Simon says subtract 49', 'Firstly, multiply by 41', 'Simon says add 17'])).to eql(-32)
    end
    it "returns the correct result when given ['Next, add 7', 'Firstly, multiply by 7', 'Joshua says subtract 46', 'Sarah says add 21', 'Next, add 14', 'Simeon says multiply by 32', 'Simon says multiply by 11', 'Then multiply by 19', 'Sieon says multiply by 5', 'Simon says multiply by 41']" do
      expect(simon_says(['Next, add 7', 'Firstly, multiply by 7', 'Joshua says subtract 46', 'Sarah says add 21', 'Next, add 14', 'Simeon says multiply by 32', 'Simon says multiply by 11', 'Then multiply by 19', 'Sieon says multiply by 5', 'Simon says multiply by 41'])).to eql(0)
    end
    it "returns the correct result when given ['Simon says subtract 40', 'Sarah says add 7', 'Then add 35', 'Simon says multiply by 25', 'Simon says add 7', 'Next, multiply by 46', 'Simon says add 3']" do
      expect(simon_says(['Simon says subtract 40', 'Sarah says add 7', 'Then add 35', 'Simon says multiply by 25', 'Simon says add 7', 'Next, multiply by 46', 'Simon says add 3'])).to eql(-990)
    end
    it "returns the correct result when given ['Next, subtract 21', 'Now multiply by 13', 'John says add 16', 'Sarah says subtract 32', 'Sarah says add 37', 'Firstly, add 6', 'Firstly, add 38', 'Simon says subtract 21']" do
      expect(simon_says(['Next, subtract 21', 'Now multiply by 13', 'John says add 16', 'Sarah says subtract 32', 'Sarah says add 37', 'Firstly, add 6', 'Firstly, add 38', 'Simon says subtract 21'])).to eql(-21)
    end
    it "returns the correct result when given ['Then add 5', 'Simon says multiply by 8', 'Then multiply by 35', 'Sieon says multiply by 23', 'Simeon says multiply by 32', 'Firstly, subtract 26', 'John says add 3', 'Simeon says add 9', 'Simeon says add 20', 'Simeon says subtract 26', 'Next, multiply by 50', 'Then subtract 32', 'Now multiply by 13', 'Simon says subtract 25', 'Sarah says add 19', 'Then subtract 45', 'Now subtract 41', 'Then subtract 12', 'Now multiply by 31']" do
      expect(simon_says(['Then add 5', 'Simon says multiply by 8', 'Then multiply by 35', 'Sieon says multiply by 23', 'Simeon says multiply by 32', 'Firstly, subtract 26', 'John says add 3', 'Simeon says add 9', 'Simeon says add 20', 'Simeon says subtract 26', 'Next, multiply by 50', 'Then subtract 32', 'Now multiply by 13', 'Simon says subtract 25', 'Sarah says add 19', 'Then subtract 45', 'Now subtract 41', 'Then subtract 12', 'Now multiply by 31'])).to eql(-25)
    end
    it "returns the correct result when given ['Simon says add 18', 'Simon says multiply by 5']" do
      expect(simon_says(['Simon says add 18', 'Simon says multiply by 5'])).to eql(90)
    end
    it "returns the correct result when given ['Simon says multiply by 47', 'Simeon says subtract 1', 'Firstly, add 33', 'Then multiply by 36', 'Simon says multiply by 38', 'Now subtract 15', 'Simon says multiply by 41', 'Sarah says subtract 14', 'Then subtract 3', 'Now multiply by 44', 'Firstly, add 49', 'Firstly, subtract 16']" do
      expect(simon_says(['Simon says multiply by 47', 'Simeon says subtract 1', 'Firstly, add 33', 'Then multiply by 36', 'Simon says multiply by 38', 'Now subtract 15', 'Simon says multiply by 41', 'Sarah says subtract 14', 'Then subtract 3', 'Now multiply by 44', 'Firstly, add 49', 'Firstly, subtract 16'])).to eql(0)
    end
    it "returns the correct result when given ['Sieon says add 49', 'Next, subtract 30', 'Simon says add 36', 'Firstly, add 9', 'Simon says subtract 11', 'Next, add 42', 'Simon says multiply by 24', 'Now subtract 4', 'Now multiply by 40', 'Simeon says add 44', 'Simon says multiply by 32', 'Simeon says multiply by 22']" do
      expect(simon_says(['Sieon says add 49', 'Next, subtract 30', 'Simon says add 36', 'Firstly, add 9', 'Simon says subtract 11', 'Next, add 42', 'Simon says multiply by 24', 'Now subtract 4', 'Now multiply by 40', 'Simeon says add 44', 'Simon says multiply by 32', 'Simeon says multiply by 22'])).to eql(19_200)
    end
    it "returns the correct result when given ['Now add 7', 'John says multiply by 11', 'Simon says multiply by 25', 'Sieon says subtract 5', 'Simon says multiply by 29', 'Firstly, multiply by 43', 'Now add 1', 'Now subtract 15', 'Simon says add 45', 'Then subtract 22', 'Simon says subtract 4', 'Next, subtract 11', 'Simon says subtract 17', 'Firstly, add 32', 'Firstly, subtract 34', 'Then subtract 36', 'Now subtract 40', 'Sarah says add 48']" do
      expect(simon_says(['Now add 7', 'John says multiply by 11', 'Simon says multiply by 25', 'Sieon says subtract 5', 'Simon says multiply by 29', 'Firstly, multiply by 43', 'Now add 1', 'Now subtract 15', 'Simon says add 45', 'Then subtract 22', 'Simon says subtract 4', 'Next, subtract 11', 'Simon says subtract 17', 'Firstly, add 32', 'Firstly, subtract 34', 'Then subtract 36', 'Now subtract 40', 'Sarah says add 48'])).to eql(24)
    end
    it "returns the correct result when given ['Simeon says add 24', 'Firstly, multiply by 23', 'Simon says add 50', 'Simon says add 45', 'Then subtract 11', 'Firstly, subtract 20', 'Simeon says subtract 40', 'Simon says add 35', 'Simeon says multiply by 3', 'Now multiply by 27', 'Now add 46', 'Simon says multiply by 42', 'Simon says subtract 12', 'Simeon says multiply by 19', 'Then add 44', 'Next, add 38', 'John says multiply by 39', 'Firstly, add 25', 'Then subtract 44']" do
      expect(simon_says(['Simeon says add 24', 'Firstly, multiply by 23', 'Simon says add 50', 'Simon says add 45', 'Then subtract 11', 'Firstly, subtract 20', 'Simeon says subtract 40', 'Simon says add 35', 'Simeon says multiply by 3', 'Now multiply by 27', 'Now add 46', 'Simon says multiply by 42', 'Simon says subtract 12', 'Simeon says multiply by 19', 'Then add 44', 'Next, add 38', 'John says multiply by 39', 'Firstly, add 25', 'Then subtract 44'])).to eql(5448)
    end
    it "returns the correct result when given ['Simon says add 45', 'Simon says add 33', 'Sieon says subtract 23', 'Simon says multiply by 46', 'Then subtract 4', 'Next, subtract 46']" do
      expect(simon_says(['Simon says add 45', 'Simon says add 33', 'Sieon says subtract 23', 'Simon says multiply by 46', 'Then subtract 4', 'Next, subtract 46'])).to eql(3588)
    end
    it "returns the correct result when given ['Firstly, subtract 36', 'Now add 19', 'Firstly, add 50', 'Sarah says multiply by 32', 'Next, multiply by 45', 'Firstly, add 4', 'Now multiply by 23', 'Next, multiply by 46', 'Next, multiply by 15', 'Simon says multiply by 49', 'Then add 6', 'Simon says multiply by 39', 'Firstly, add 2', 'Next, subtract 7', 'Simon says subtract 20', 'Simon says multiply by 13', 'Simeon says subtract 32', 'Simon says add 15']" do
      expect(simon_says(['Firstly, subtract 36', 'Now add 19', 'Firstly, add 50', 'Sarah says multiply by 32', 'Next, multiply by 45', 'Firstly, add 4', 'Now multiply by 23', 'Next, multiply by 46', 'Next, multiply by 15', 'Simon says multiply by 49', 'Then add 6', 'Simon says multiply by 39', 'Firstly, add 2', 'Next, subtract 7', 'Simon says subtract 20', 'Simon says multiply by 13', 'Simeon says subtract 32', 'Simon says add 15'])).to eql(-245)
    end
    it "returns the correct result when given ['Firstly, subtract 37', 'Sieon says multiply by 5', 'Firstly, multiply by 10']" do
      expect(simon_says(['Firstly, subtract 37', 'Sieon says multiply by 5', 'Firstly, multiply by 10'])).to eql(0)
    end
    it "returns the correct result when given ['Simon says multiply by 33', 'Sarah says subtract 19', 'Now subtract 32', 'Next, add 41', 'Simeon says subtract 27', 'Firstly, multiply by 48', 'Then multiply by 46', 'Simon says subtract 41', 'Now multiply by 50', 'Simon says subtract 6', 'Simon says add 20', 'Sieon says add 47', 'Sarah says subtract 13', 'Next, add 49', 'Simon says multiply by 2', 'Simon says subtract 50', 'Simon says subtract 47', 'Now subtract 7', 'Joshua says subtract 21', 'Simon says multiply by 3']" do
      expect(simon_says(['Simon says multiply by 33', 'Sarah says subtract 19', 'Now subtract 32', 'Next, add 41', 'Simeon says subtract 27', 'Firstly, multiply by 48', 'Then multiply by 46', 'Simon says subtract 41', 'Now multiply by 50', 'Simon says subtract 6', 'Simon says add 20', 'Sieon says add 47', 'Sarah says subtract 13', 'Next, add 49', 'Simon says multiply by 2', 'Simon says subtract 50', 'Simon says subtract 47', 'Now subtract 7', 'Joshua says subtract 21', 'Simon says multiply by 3'])).to eql(-453)
    end
    it "returns the correct result when given ['Simon says add 14', 'Simon says add 24']" do
      expect(simon_says(['Simon says add 14', 'Simon says add 24'])).to eql(38)
    end
    it "returns the correct result when given ['Simon says subtract 34', 'John says add 1', 'Simon says subtract 40', 'Next, multiply by 7', 'Firstly, subtract 10', 'Next, add 13', 'Simon says multiply by 36', 'Now multiply by 7', 'Now multiply by 6', 'Next, multiply by 19', 'Simon says multiply by 47', 'Simeon says multiply by 40', 'Simon says subtract 13', 'Joshua says multiply by 45', 'Simeon says multiply by 1', 'Simon says add 32', 'Next, multiply by 28']" do
      expect(simon_says(['Simon says subtract 34', 'John says add 1', 'Simon says subtract 40', 'Next, multiply by 7', 'Firstly, subtract 10', 'Next, add 13', 'Simon says multiply by 36', 'Now multiply by 7', 'Now multiply by 6', 'Next, multiply by 19', 'Simon says multiply by 47', 'Simeon says multiply by 40', 'Simon says subtract 13', 'Joshua says multiply by 45', 'Simeon says multiply by 1', 'Simon says add 32', 'Next, multiply by 28'])).to eql(-125_189)
    end
    it "returns the correct result when given ['Then multiply by 6']" do
      expect(simon_says(['Then multiply by 6'])).to eql(0)
    end
    it "returns the correct result when given ['Simon says multiply by 48', 'Firstly, subtract 14', 'Next, add 46', 'John says add 44', 'Simon says multiply by 16', 'Firstly, subtract 42', 'Firstly, add 34', 'Then multiply by 26', 'Then multiply by 32', 'Simeon says add 40', 'Simon says multiply by 48', 'Sarah says multiply by 46']" do
      expect(simon_says(['Simon says multiply by 48', 'Firstly, subtract 14', 'Next, add 46', 'John says add 44', 'Simon says multiply by 16', 'Firstly, subtract 42', 'Firstly, add 34', 'Then multiply by 26', 'Then multiply by 32', 'Simeon says add 40', 'Simon says multiply by 48', 'Sarah says multiply by 46'])).to eql(0)
    end
    it "returns the correct result when given ['Next, multiply by 20', 'Sarah says subtract 18', 'Now add 47', 'Sarah says multiply by 4', 'Simon says subtract 47', 'Simon says multiply by 31', 'Firstly, multiply by 39']" do
      expect(simon_says(['Next, multiply by 20', 'Sarah says subtract 18', 'Now add 47', 'Sarah says multiply by 4', 'Simon says subtract 47', 'Simon says multiply by 31', 'Firstly, multiply by 39'])).to eql(-1457)
    end
    it "returns the correct result when given ['Firstly, multiply by 13']" do
      expect(simon_says(['Firstly, multiply by 13'])).to eql(0)
    end
    it "returns the correct result when given ['Sieon says add 29', 'Next, multiply by 14', 'Sieon says multiply by 25', 'Simon says subtract 10', 'Simeon says add 39', 'Simeon says multiply by 13', 'Simon says multiply by 8', 'Next, subtract 18', 'Next, add 28', 'Simon says add 11', 'Next, add 5', 'John says add 21']" do
      expect(simon_says(['Sieon says add 29', 'Next, multiply by 14', 'Sieon says multiply by 25', 'Simon says subtract 10', 'Simeon says add 39', 'Simeon says multiply by 13', 'Simon says multiply by 8', 'Next, subtract 18', 'Next, add 28', 'Simon says add 11', 'Next, add 5', 'John says add 21'])).to eql(-69)
    end
    it "returns the correct result when given ['Sarah says multiply by 35', 'Then multiply by 11', 'Simeon says subtract 5']" do
      expect(simon_says(['Sarah says multiply by 35', 'Then multiply by 11', 'Simeon says subtract 5'])).to eql(0)
    end
    it "returns the correct result when given ['Firstly, multiply by 4', 'Now multiply by 4', 'Firstly, add 40', 'John says add 30', 'Simon says multiply by 35']" do
      expect(simon_says(['Firstly, multiply by 4', 'Now multiply by 4', 'Firstly, add 40', 'John says add 30', 'Simon says multiply by 35'])).to eql(0)
    end
    it "returns the correct result when given ['Next, subtract 27', 'Next, subtract 33', 'Then multiply by 3', 'Simon says add 46', 'Next, subtract 48', 'Now add 37', 'Simon says subtract 29', 'Next, add 14']" do
      expect(simon_says(['Next, subtract 27', 'Next, subtract 33', 'Then multiply by 3', 'Simon says add 46', 'Next, subtract 48', 'Now add 37', 'Simon says subtract 29', 'Next, add 14'])).to eql(17)
    end
    it "returns the correct result when given ['Simon says subtract 48', 'John says subtract 50', 'Sieon says subtract 6', 'Simon says subtract 4', 'Sieon says subtract 10', 'Now multiply by 46', 'Now multiply by 44', 'Simeon says multiply by 23', 'Simon says multiply by 18', 'Now subtract 8', 'Then subtract 49', 'Simon says subtract 48', 'Simon says add 43']" do
      expect(simon_says(['Simon says subtract 48', 'John says subtract 50', 'Sieon says subtract 6', 'Simon says subtract 4', 'Sieon says subtract 10', 'Now multiply by 46', 'Now multiply by 44', 'Simeon says multiply by 23', 'Simon says multiply by 18', 'Now subtract 8', 'Then subtract 49', 'Simon says subtract 48', 'Simon says add 43'])).to eql(-941)
    end
    it "returns the correct result when given ['Then multiply by 26', 'Simon says add 37', 'Now subtract 28', 'Now add 3', 'Next, add 5', 'Simeon says multiply by 42', 'Simon says subtract 45', 'Firstly, multiply by 30', 'Now add 11']" do
      expect(simon_says(['Then multiply by 26', 'Simon says add 37', 'Now subtract 28', 'Now add 3', 'Next, add 5', 'Simeon says multiply by 42', 'Simon says subtract 45', 'Firstly, multiply by 30', 'Now add 11'])).to eql(-8)
    end
    it "returns the correct result when given ['Simon says add 6', 'Sieon says multiply by 3', 'Then add 48', 'Next, subtract 48', 'Simon says multiply by 9', 'Simon says add 10', 'Simeon says multiply by 41', 'Simon says subtract 8', 'Next, add 1', 'Then add 31', 'Simon says subtract 37', 'Simon says multiply by 3', 'Now multiply by 10', 'Then add 33', 'Firstly, multiply by 17', 'Next, multiply by 20', 'Simeon says multiply by 28', 'Sieon says multiply by 28', 'Then add 32', 'Then add 34']" do
      expect(simon_says(['Simon says add 6', 'Sieon says multiply by 3', 'Then add 48', 'Next, subtract 48', 'Simon says multiply by 9', 'Simon says add 10', 'Simeon says multiply by 41', 'Simon says subtract 8', 'Next, add 1', 'Then add 31', 'Simon says subtract 37', 'Simon says multiply by 3', 'Now multiply by 10', 'Then add 33', 'Firstly, multiply by 17', 'Next, multiply by 20', 'Simeon says multiply by 28', 'Sieon says multiply by 28', 'Then add 32', 'Then add 34'])).to eql(57)
    end
    it "returns the correct result when given ['Simeon says subtract 27', 'Next, add 31', 'Firstly, subtract 16', 'Sieon says add 5', 'Firstly, multiply by 49', 'Firstly, add 20', 'Now multiply by 11', 'Simon says add 43', 'Simon says add 48', 'Simeon says multiply by 9', 'Sieon says subtract 50', 'Now multiply by 14', 'Firstly, subtract 14', 'Then multiply by 27', 'Sieon says multiply by 23', 'Simon says subtract 33', 'Simon says multiply by 45', 'Firstly, subtract 25']" do
      expect(simon_says(['Simeon says subtract 27', 'Next, add 31', 'Firstly, subtract 16', 'Sieon says add 5', 'Firstly, multiply by 49', 'Firstly, add 20', 'Now multiply by 11', 'Simon says add 43', 'Simon says add 48', 'Simeon says multiply by 9', 'Sieon says subtract 50', 'Now multiply by 14', 'Firstly, subtract 14', 'Then multiply by 27', 'Sieon says multiply by 23', 'Simon says subtract 33', 'Simon says multiply by 45', 'Firstly, subtract 25'])).to eql(2610)
    end
  end
end
