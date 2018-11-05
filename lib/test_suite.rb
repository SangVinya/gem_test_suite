require "test_suite/version"

module TestSuite
  class << self
    # object type
    def hash?(actual)
      puts actual.is_a?(Hash) ? "Object is a hash" : "Object is not a hash"
      puts "Object: #{actual}"
    end

    def array?(actual)
      puts actual.is_a?(Array) ? "Object is an array" : "Object is not an array"
      puts "Object: #{actual}"
    end

    def number?(actual)
      puts actual.is_a?(Numeric) ? "Object is a number" : "Object is not a number"
      puts "Object: #{actual}"
    end

    def string?(actual)
      puts actual.is_a?(String) ? "Object is a string" : "Object is not a string"
      puts "Object: #{actual}"
    end

    def symbol?(actual)
      puts actual.is_a?(Symbol) ? "Object is a symbol" : "Object is not a symbol"
      puts "Object: #{actual}"
    end

    # work with hashes
    def hash_empty?(actual)
      puts actual.empty? ? "Hash is empty" : "Hash is not empty"
      puts "Hash: #{actual}"
    end

    def hash_value_greater_nil?(actual)
      arr = []
      actual.each_value { |val| arr << val if val > 0 }
      puts arr.size == actual.size ? "All hash values are greater than 0" : "Hash has value(s) equal/less than nil"
      puts "Hash value(s): #{actual.values}"
    end

    def hash_has_two_keys?(actual)
      if actual.empty?
        puts "Hash is empty"
      else
        puts actual.size > 1 ? "Hash has 2 or more keys" : "Hash has one key"
        puts "Hash key(s): #{actual.keys}"
      end
    end

    # object conversion
    def to_s(actual)
      puts "Object was converted to string type"
      puts "It is #{actual.to_s.inspect} now"
    end

    def to_i(actual)
      puts "Object was converted to numeric type"
      puts "It is #{actual.to_i} now"
    end

    def to_sym(actual)
      actual = actual.to_s if actual.is_a?(Numeric)
      puts "Object was converted to symbol type"
      puts "It is #{actual.to_sym.inspect} now"
    end

    def str_to_arr(actual)
      puts "Object was converted to an array"
      puts "It is #{actual.split.inspect} now"
    end
  end
end
