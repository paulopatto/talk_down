class VocabularyValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:body] << 'Contains strong language' unless sanity? record.body
  end

  private
  def sanity?(text)
    vocabulary = Vocabulary.new

    expletives = text.split(/\W+/).select do |word|
      vocabulary.expletive?(word)
    end
    expletives.empty?
  end
end
