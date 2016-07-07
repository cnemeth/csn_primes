require_relative '../lib/csn_primes/primes'

module CsnPrimes
  FIRST_TEN_PRIME_NUMBERS = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29].freeze

  def self.print_table
    options = {primes: FIRST_TEN_PRIME_NUMBERS}
    CsnPrimes::Primes.new(options).print_table
  end
end
