require 'game'

describe Game do
  let(:game){described_class.new}
  let(:player1){ double :player }
  let(:player2){ double :player }
  context "# attack"
  it "damages the player" do
    expect(player2).to receive(:receive_damage)
    game.attack(player2)
  end
end
