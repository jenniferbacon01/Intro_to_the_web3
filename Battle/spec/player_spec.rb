require "player"
describe Player do
  let(:player){described_class.new("Jenny")}
  let(:player2){described_class.new("Abi")}
  it "returns the player name" do
    expect(player.name).to eq "Jenny"
  end

  it "returns the player hit points" do
    expect(player.hit_points).to eq 100
  end

  # it "hit points reduced by 10 when player is attacked" do
  #   expect{player.attack(player2)}.to change{player2.hit_points}.by(-10)
  # end
end
