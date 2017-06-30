describe 'Send a POST to add text and replace a matching word by *' do
  before(:all) {
    @text = "Replace%20it%20by%20asterics"
    @replaced = "*"
  }

  let(:replace_text){ post '', {text: @text, add: "asterics", fill_char: @replaced} }

  it 'Returns a 405 error' do
    replace_text
    expect_status(405)
  end
end