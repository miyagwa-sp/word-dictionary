class WordDictionariesController < ApplicationController
    def index
        word = WordDictionary.find_by(word: params[:word])
        @meaning = word.meaning if word
    end
end