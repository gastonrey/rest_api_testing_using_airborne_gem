
describe 'Specs related to #?Text= endpoint by passing the replace parameter' do
  context "Loading the test's suite from yaml" do

    include_context "Execute API tests from Yaml", YAML.load(ERB.new(File.read("#{Dir.pwd}/data/#{"replace_text"}_endpoint_test_cases.yml")).result)
  end
end