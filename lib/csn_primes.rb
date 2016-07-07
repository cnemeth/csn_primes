require_relative '../lib/csn_primes/printer'
require_relative '../lib/csn_primes/primes'

module CsnPrimes
  def self.print_table(options)
    CsnPrimes::Printer.new(options).print_table
  end
end
