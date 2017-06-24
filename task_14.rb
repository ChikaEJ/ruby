class Card
  RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  SUITS = ["\u2660", "\u2665", "\u2666", "\u2663"]
  def take_card
    print RANKS[rand(RANKS.length)],SUITS[rand(SUITS.length)], "\n"
  end
end
class Deck < Card
  attr_accessor :deck
  @@deck = []
  def new_deck
    @@deck = []
    RANKS.each do |rank|
      SUITS.each do |suit|
        @@deck << rank + suit
      end
    end
  end
  def self.pull_card
    card = @@deck.take(1)
    @@deck.delete_at(0)
    return card[0]
  end
  def shuffle_deck
    @@deck.shuffle!
  end
  def self.take_card(card)
    @@deck << card
  end
end

class Hand
  attr_accessor :cards
  @@cards = []
  def take_card(card)
    @@cards << card
    return card
  end
  def choose_card_exchage
    p "Please choose cards to exchage(ex: 1,5,4)"
    chosen_cards = gets.chomp.split(",")
    chosen_cards.each do |card|
      card = card.to_i
      Deck.take_card(@@cards[card - 1])
      @@cards.delete_at(card - 1)
      @@cards.insert(card - 1, Deck.pull_card)
    end
  end
  def show_cards
    number = 1
    @@cards.each do |card|
      print number, " | ", card, "\n"
      number += 1
    end
  end
  def giveback_all_cards
    @@cards.each do |card|
      Deck.take_card(card)
    end
    @@cards = []
  end
  def giveback_one_card(card)
    Deck.take_card(card)
    @@cards.delete(card)
  end
end
loop do
  deck = Deck.new
  deck.new_deck
  deck.shuffle_deck
  hand = Hand.new
  p "Please enter command (deal, exit)"
  command = gets.chomp.downcase
  case command
  when "deal"
    5.times do
      hand.take_card(Deck.pull_card)
    end
    hand.show_cards
    hand.choose_card_exchage
    p "++++++++++++++++++++++"
    hand.show_cards
    hand.giveback_all_cards
    p "======================="
  when "exit"
    p "Thank you for the game!"
    break
  else
    p "Wrong command!"
  end
end
