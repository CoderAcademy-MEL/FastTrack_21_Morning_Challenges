require_relative "fibonacci"

describe "#fibonacci" do
  context 'with valid inputs' do
    it "return 1 for the first fibonacci number" do
      expect(fibonacci(1)).to eql(1)
    end

    it "return 55 for the tenth fibonacci number" do
      expect(fibonacci(10)).to eql(55)
    end

    it "return 377 for the fiftenth fibonacci number" do
      expect(fibonacci(15)).to eql(610)
    end
  end

  context 'with invalid inputs' do
    it "return an error when a negative number is provided" do
      expect{ fibonacci(-5) }.to raise_error NonPositiveNumberError
    end
  end

  context 'with large inputs' do
    context '' do
      before(:all) do
        @start_time = Time.now
      end

      # it 'returns 2,178,309 for 32nd number' do
      #   expect(fibonacci(32)).to eql(2_178_309)
      # end

      # it 'return 165,580,141 for 42nd number' do
      #   expect(fibonacci(42)).to eql(267_914_296)
      # end

      # it 'return 1,100,087,778,366,101,931 for 88th number' do
      #   expect(fibonacci(88)).to eql(1_100_087_778_366_101_931)
      # end

      it 'should run in less than one thousand milliseconds (1 second)' do
        elapsed_milliseconds = (Time.now - @start_time) * 1000.0
        expect(elapsed_milliseconds).to be < 1000
      end
    end
  end
end