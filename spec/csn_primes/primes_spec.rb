require 'spec_helper'

RSpec.describe CsnPrimes::Primes do
  let(:primes) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
  subject { CsnPrimes::Primes.new({primes: primes}) }

  describe 'initialize' do
    it 'should take an array of the first ten prime numbers' do
      expect(subject.primes).to match_array primes
    end

    it 'should generate a 10x10 square matrix' do
      expect(subject.matrix.square?).to eq true
    end

    it 'should generate a symetric matrix' do
      expect(subject.matrix.symmetric?).to eq true
    end
  end

  describe 'print_table' do
    it 'prints the multiplication table for the first 10 prime numbers' do
      expect(subject.print_table).to eq true
    end
  end
end
