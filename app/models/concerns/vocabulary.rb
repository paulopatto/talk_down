require 'text'
class Vocabulary
  #TODO: Não seria melhor criar um modelo para manter os termos proibidos?
  BLACKWORDS =  %w(puta cú gay bicha)

  def initialize
    @clean = []
    @dicionario = {}
    BLACKWORDS.each do |word|
      @dicionario[Text::Metaphone.metaphone(word)] = word
    end
  end

  def expletive?(word)
    return nil if @clean.include? word
    bw = metaphone(word)
    unless bw
      @clean << bw
      return nil
    end
    similarity(word, bw) > 0.50
  end

  private

  def metaphone(word)
    code = Text::Metaphone.metaphone(word)
    return @dicionario[code] if @dicionario.keys.include? code
  end

  def similarity(word, blackword)
    @white ||= Text::WhiteSimilarity.new
    @white.similarity(word, blackword)
  end
end
