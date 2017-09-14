
shared_context "Execute API tests from Yaml" do |test_json_data|

  test_json_data["test_cases"].each do |test_case|
    context "Given test case: ###  #{test_case["test_case"]} ###" do
      describe "Execute request passing Text: #{test_case["data"]}" do

        before{ get (test_json_data["endpoint"] + test_case["data"]) }

        it "Then Response error msg is correct", :if => test_case["validations"].fetch("returned_error", false) do
          expect_json(error: test_case["validations"]["returned_error"])
        end

        it "Then Response error code is correct", :if => test_case["validations"].fetch("returned_status_code", false) do
          expect_status(test_case["validations"]["returned_status_code"])
        end

        it "Then Response result type is correct", :if => test_case["validations"].fetch("returned_type", false) do
          expect_json_types(result: test_case["validations"]["returned_type"].to_sym)
        end

        it "Then Response result content matches the data sent as parameter", :if => test_case["validations"].fetch("returned_result", false) do
          expect_json(result: test_case["data"])
        end

        it "Then Response result content is succesfully modified", :if => test_case["validations"].fetch("returned_modified_result", false) do
          expect_json(result: test_case["validations"]["returned_modified_result"])
        end
      end
    end
  end
end
