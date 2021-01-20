require '\Users\Charlie2\cucumber-demo - Copy\test\rspec_demo/cosmi_comics.rb'
require 'pry'

RSpec.describe CosmiComics do
  describe "CosmiComics" do
    it "Can load the dictionary txt file" do
      # set up code here
      @cosmi = CosmiComics.new
      words = @cosmi.load_words
      # Assertion code here
      expect(words[:name]).to eql 'dictionary.txt' # we will assume that the txt file as the amount and type of words that we will need
      expect(words[:file].count).to be > 50_000
    end

    # Define that the object is an array of words that is free of extra chars

    it "Will load the words as an array" do
      # set up code here
      @cosmi = CosmiComics.new
      words = @cosmi.load_words
      # binding.pry
      # Assertion code here
      expect(words[:file].class).to eql Array
      expect(words[:file].first).to eql String
    end

    it "Will load words that are only alpha chararcters" do
      # set up code here
      @cosmi = CosmiComics.new
      words = @cosmi.load_words
      # Assertion code here
      expect(word[:file].first[/\s/]).to be_nil # detect whitespace chars
    end

    # Logic for finding anagrams << this step requires some imagination about what sort of methods you would like to able to call to accomplish the task that you have spelled out in the test

    it "Will find anagrams for each word in the word array" do
      # set up code here
      @cosmi = CosmiComics.new
      words = @cosmi.load_words
      # here we want a method that we can give a word from the intance of @cosmi
      # Assertion code here
    end
  end
end
