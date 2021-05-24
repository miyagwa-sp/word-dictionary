class WordDictionariesController < ApplicationController
    def index
        @word = WordDictionary.find_by(word: params[:word])
        @other_words = WordDictionary.where('word like ? AND word != ?', "%#{params[:word]}%", params[:word]).limit(10)
    end

    def create
        # gitの確認
    end
end