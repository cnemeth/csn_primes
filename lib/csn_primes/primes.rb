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
      return [2] if n_primes == 1
      return [2, 3] if n_primes == 2
      return [2, 3, 5] if n_primes == 3
      return [2, 3, 5, 7] if n_primes == 4

      arr = [2, 3, 5, 7]
      n = 8
      while arr.size < n_primes do
        arr << n if prime?(n)
        n += 1
      end

      arr
    end

    def prime?(n)
      return false if n < 2 || !n.is_a?(Integer)

      (2...n).each do |x|
        return false if (n % x == 0)
      end

      true
    end
  end
end
