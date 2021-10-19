require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    str = []
    str = self.split('.')

    str = str.join('?')
    str = str.split('?')

    str = str.join('!')
    str = str.split('!')

    str = str.join(' ')
    sentences = str.split('  ').count

    sentences
  end
end

# str1 = String.new('This, well, is a sentence. This is too!! And so is this, I think? Woo...')

# str1.count_sentences