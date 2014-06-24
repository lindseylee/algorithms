require_relative 'predictor'

class ComplexPredictor < Predictor
  # Public: Trains the predictor on books in our dataset. This method is called
  # before the predict() method is called.
  #
  # Returns nothing.
  def train!
    @data = {}
    counts = Hash.new

    # @all_books.each do |category, impt_tokens|
    #   @data[category] = {
    #     impt_tokens: 0
    #   }

    def highest_token  
      counts = Hash.new
      @all_books.each do |category, books|
        books.each do |filename, tokens|
          tokens.each do |word|
            counts[word] += 1
          end
        end
      end
    end

    # books.each do |filename, tokens|
    #   @data[category][:impt_tokens] += tokens.highest_token
    # end
  

  # Public: Predicts category.
  #
  # tokens - A list of tokens (words).
  #
  # Returns a category.
    def predict(tokens)
      # Always predict astronomy, for now.
      :astronomy
    end
  end
end
