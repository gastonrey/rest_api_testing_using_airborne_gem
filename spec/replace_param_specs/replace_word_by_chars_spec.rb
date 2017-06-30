describe 'Add text and replace a matching word by *' do
  before(:all) {
    @text = "Replace%20it%20by%20asterics"
    @replaced = "*"
  }

  let(:replace_text){ get "?text=#{@text}&add=asterics&fill_char=#{@replaced}" }

  it 'Returns the word replaced by the chars' do
    replace_text
    expect_json(result: "Replace it by ********")
  end
end