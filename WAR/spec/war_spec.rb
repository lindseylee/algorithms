require 'rubygems'
require 'rspec'
require 'pry-byebug'
require_relative '../war.rb'

describe 'Card' do
  
  it "exists" do
    expect(Card).to be_a(Class)
  end

end

describe 'Deck' do 

  it "holds cards" do
    deck = Deck.new("king", "spades")
    expect(deck.deck).to eq(["spades", "king"])
  end

  it "adds card to the deck" do
    deck = Deck.new
    add_card("K")
    expect(deck.add_card).to eq(["K"])
  end

  it "shuffles the deck" do
  end

  it "removes top card from deck and returns it" do
  end

  it "resets the deck with 52 cards" do
  end



end