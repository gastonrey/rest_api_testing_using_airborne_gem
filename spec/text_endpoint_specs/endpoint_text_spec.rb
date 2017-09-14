
describe 'Specs related to #?Text= endpoint' do
  context "Loading the test's suite from yaml" do

    include_context "Execute API test from Yaml", YAML.load(ERB.new(File.read("#{Dir.pwd}/data/#{"text"}_endpoint_data.yml")).result)
  end
end