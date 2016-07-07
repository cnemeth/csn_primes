require 'spec_helper'

RSpec.describe CsnPrimes do
  let(:options) {
    {
      n_primes: 10
    }
  }

  it 'runs without error' do
    expect{
      CsnPrimes.print_table(options)
    }.to_not raise_error
  end
end
