class CartesianProduct
  include Enumerable

  def initialize(seq1, seq2)
    @seq1 = seq1
    @seq2 = seq2
  end

  def each
      @seq1.each do |v1|
        @seq2.each do |v2|
          yield [v1, v2]
        end
      end
  end

end
