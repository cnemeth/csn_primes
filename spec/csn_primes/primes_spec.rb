require 'spec_helper'

RSpec.describe CsnPrimes::Primes do
  let(:n_primes) { 10 }
  let(:first_ten_primes) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }

  describe 'initialize' do
    subject { CsnPrimes::Primes.new({n_primes: n_primes}) }

    it 'should take a positive integer to find the first n prime numbers' do
      expect(subject.n_primes).to eq n_primes
    end
  end

  describe 'first_n_primes' do
    it 'returns [2] when n_primes is 1' do
      expect(CsnPrimes::Primes.new({n_primes: 1}).first_n_primes).to match_array [2]
    end

    it 'returns [2, 3] when n_primes is 2' do
      expect(CsnPrimes::Primes.new({n_primes: 2}).first_n_primes).to match_array [2, 3]
    end

    it 'returns [2, 3, 5] when n_primes is 3' do
      expect(CsnPrimes::Primes.new({n_primes: 3}).first_n_primes).to match_array [2, 3, 5]
    end

    it 'returns [2, 3, 5, 7] when n_primes is 4' do
      expect(CsnPrimes::Primes.new({n_primes: 4}).first_n_primes).to match_array [2, 3, 5, 7]
    end

    it 'returns the first 10 prime numbers when n_primes is 10' do
      expect(CsnPrimes::Primes.new({n_primes: 10}).first_n_primes).to match_array first_ten_primes
    end

    it 'returns the first n prime numbers' do
      primes = CsnPrimes::Primes.new({n_primes: 100}).first_n_primes
      expect(primes).to be_a_kind_of Array
      expect(primes.count).to eq 100
    end
  end
end
