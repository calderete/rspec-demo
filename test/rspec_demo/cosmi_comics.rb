require 'pry'

class CosmiComics
  def load_words
    file_path = '/Users/Charlie2/cucumber-demo - Copy/test/rspec_demo/dictionary.txt'
    file_name = file_path.split('/').last
    file = File.open(file_path)
    a = {
      name: file_name,
      file: file
    }
  end
end
