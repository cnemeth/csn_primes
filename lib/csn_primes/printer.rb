require 'matrix'
require 'awesome_print'

module CsnPrimes
  class Printer
    attr_reader :options, :primes, :size, :matrix

    def initialize(options={})
      @options = options
      @primes = first_n_primes
      @size = primes.count
      @matrix = build_matrix
    end

    def print_table
      print_to_stdout
    end

    private

    def print_to_stdout
      ap "    #{primes.to_s}"
      primes.each_with_index do |p, i|
        ap "#{p}:  #{matrix.row(i).to_s.gsub(/Vector/, '')}"
      end
      true
    end

    def build_matrix
      arr = Array.new(size) { Array.new(size) }
      primes.each_with_index do |m, i|
        primes.each.with_index do |n, j|
          arr[i][j] = m * n
        end
      end
      Matrix.rows(arr)
    end

    def first_n_primes
      CsnPrimes::Primes.new(options).first_n_primes || []
    end
  end
end
