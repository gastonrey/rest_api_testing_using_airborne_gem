describe 'Add text and replace a matching word by [empty]' do
  before(:all) {
    @text = "Replace%20it%20by%20asterics"
  }

  let(:replace_text){ get "?text=#{@text}&add=asterics&fill_char=" }

  it 'Returns the word replaced by the * s' do
    replace_text
    expect_json(result: "Replace it by ********")
  end
end