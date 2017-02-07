class Lexicon
  DIRECTIONS = ['north', 'south', 'east', 'west']
  VERBS = ['go', 'kill', 'eat']
  STOPS = ['the', 'in', 'of']
  NOUNS = ['bear', 'princess']

  def self.scan(command)
    words = command.split(" ")
    sentence = []
    for word in words do
      if DIRECTIONS.include?(word)
        sentence << ['direction', word]
      elsif VERBS.include?(word)
        sentence << ['verb', word]
      elsif STOPS.include?(word)
        sentence << ['stop', word]
      elsif NOUNS.include?(word)
        sentence << ['noun', word]
      elsif (convert_number(word) != nil)
        sentence << ['number', convert_number(word)]
      else
        sentence << ['error', word]
      end
    end

    return sentence
  end

  def self.convert_number(object)
    begin
      return Integer(object)
    rescue
      return nil
    end
  end
end
