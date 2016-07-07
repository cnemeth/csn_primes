require 'spec_helper'

RSpec.describe CsnPrimes do
  it 'has ten numbers' do
    expect(CsnPrimes::FIRST_TEN_PRIME_NUMBERS.count).to eq 10
  end

  it 'runs without error' do
    expect{
      CsnPrimes.print_table
    }.to_not raise_error
  end
end
