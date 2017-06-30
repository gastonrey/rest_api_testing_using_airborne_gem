describe 'Add text and replace multiple matching words by -' do
  before(:all) {
    @text = "Replace%20it%20by%20dashes"
    @replaced = "-"
  }

  let(:replace_text){ get "?text=#{@text}&add=replace,dashes&fill_char=#{@replaced}" }

  it 'Returns the words replaced by the chars' do
    replace_text
    expect_json(result: "------- it by ------")
  end
end