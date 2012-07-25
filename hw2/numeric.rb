# metaprogramming to the rescue!

class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
  def in(currency)
    currency = currency.to_s.downcase.gsub(/s$/,'')
    if @@currencies.has_key?(currency)
      return self / @@currencies[currency]
    else
      self.method_missing(currency)
    end
  end

  def method_missing(method_id)
    singular_currency = method_id.to_s.downcase.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
end


class String
  def palindrome?
    return self.downcase.gsub(/[^a-z]/i, '') == self.downcase.gsub(/[^a-z]/i, '').reverse
  end
end


module Enumerable
  def palindrome?
    reverse = []
    self.reverse_each do |e|
      reverse << e
    end
    return self.to_a == reverse
  end
end