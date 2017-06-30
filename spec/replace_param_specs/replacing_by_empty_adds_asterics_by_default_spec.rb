describe 'Add text and replace it by an empty string' do
  before(:all) {
    @text = "Replace%20it%20by%20asterics"
  }

  let(:replace_text){ get "?text=#{@text}&add=asterics&fill_text=" }

  it 'Returned string should contains as many * as the longer the replaced word is' do
    replace_text
    expect_json(result: "Replace it by ********")
  end
end