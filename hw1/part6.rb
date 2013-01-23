class Numeric
  @@currencies = {'dollar' => 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    singular_currency = currency.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      self
    end

  end
end

class String
  def palindrome?
    str  = self.gsub(/\W/i, '').downcase
    str == str.reverse
  end
end

module Enumerable
  def palindrome?
    self.to_a == self.to_a.reverse
  end
end
