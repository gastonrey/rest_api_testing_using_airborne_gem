describe 'Add text and replace non existing word' do
  before(:all) {
    @text = "Replace%20it%20by%20asterics"
    @replaced = "-"
  }

  let(:replace_text){ get "?text=#{@text}&add=&fill_text=#{@replaced}" }

  it 'Returned string keeps as it is' do
    replace_text
    expect_json(result: "Replace it by asterics")
  end
end