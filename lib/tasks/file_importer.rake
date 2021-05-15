namespace :file_importer do
    desc "辞書ファイルの取込"
    task :import => :environment do
        data = []
        File.foreach(Rails.root.join('initial_dictionary.tsv')) do |line|
            unit = line.split(/\t/)
            data << {word: unit[0], meaning: unit[1], created_at: Time.now, updated_at: Time.now}
            if data.length > 1000
                WordDictionary.insert_all(data)
                data = []
            end
        end
        if data.length > 0
            WordDictionary.insert_all(data)
        end
    end
end
