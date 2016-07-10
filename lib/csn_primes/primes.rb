require 'awesome_print'
require 'benchmark'

module CsnPrimes
  class Primes
    attr_reader :n_primes, :benchmark

    def initialize(options={})
      options = defaults.merge(options)
      @n_primes = options[:n_primes].to_i
      @benchmark = options[:benchmark]
    end

    def first_n_primes
      if benchmark
        Benchmark.bmbm do |x|
          x.report { primes }
        end
      else
        primes
      end
    end

    private

    def primes
      primes_found = [2]
      return primes_found if n_primes == 1

      n = 3
      while primes_found.size < n_primes do
        primes_found << n if prime?(n)
        n += 1
      end

      primes_found
    end

    def prime?(n)
      max = Math.sqrt(n).to_i
      (2..max).each do |x|
        return false if (n % x == 0)
      end

      true
    end

    def defaults
      {n_primes: 10, benchmark: false}
    end
  end
end
