require 'matrix'
require 'awesome_print'

module CsnPrimes
  class Primes
    attr_reader :n_primes

    def initialize(options={})
      @n_primes = options[:n_primes]
    end

    def first_n_primes
      primes
    end

    private

    def primes
      arr = [2]
      return arr if n_primes == 1

      n = 3
      while arr.size < n_primes do
        arr << n if prime?(n)
        n += 1
      end

      arr
    end

    def prime?(n)
      return false if n < 2
      return false if n > 2 && (n % 2 == 0)
      return false if n > 5 && (n % 5 == 0)

      (2...n).each do |x|
        return false if (n % x == 0)
      end

      true
    end
  end
end
