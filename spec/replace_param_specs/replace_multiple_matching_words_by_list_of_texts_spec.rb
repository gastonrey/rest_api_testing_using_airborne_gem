describe 'Add text and replace multiple matching words by a comma separated list of texts' do
  before(:all) {
    @text = "Replace%20it%20by%20dashes"
    @replaced = "foo,bar"
  }

  let(:replace_text){ get "?text=#{@text}&add=replace,dashes&fill_text=#{@replaced}" }

  it 'Returns an error msg' do
    replace_text
    expect_json(error: "Invalid User Replacement Text")
  end
end