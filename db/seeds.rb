require 'csv'
deck = Deck.create(title: "State Capitals", description: "Test your knowledge of American State Capitals.")
CSV.foreach("state_capitals_deck.csv", headers: true, header_converters: :symbol) do |line|
  Card.create(question: line[:name], answer: line[:capital], deck_id: deck.id)
end


