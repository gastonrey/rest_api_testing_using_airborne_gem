describe 'Add text and replace multiple matching words by a comma separated list of chars' do
  before(:all) {
    @text = "Replace%20it%20by%20dashes"
    @replaced = "-,*"
  }

  let(:replace_text){ get "?text=#{@text}&add=replace,dashes&fill_char=#{@replaced}" }

  it 'Returns an error msg' do
    replace_text
    expect_json(error: "Invalid User Replacement Characters")
  end
end