describe 'Add text and replace it by other chars' do
  before(:all) {
    @text = "Replace%20it%20by%20asterics"
    @replaced = "-"
  }

  let(:replace_text){ get "?text=#{@text}&add=asterics&fill_text=#{@replaced}" }

  it 'Returned string should contains the replaced chars' do
    replace_text
    expect_json(result: "Replace it by #{@replaced}")
  end
end