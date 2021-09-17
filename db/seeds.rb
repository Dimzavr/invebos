30.times do
	title = Faker::Hipster.sentence(word_count: 3)
	description =  Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4)
	Franchise.create title: title, description: description
end