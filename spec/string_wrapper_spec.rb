require 'string_wrapper'

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      # Fill in the test
      str = "hello"
      string_wrapper = StringWrapper.new(str)
      expect(string_wrapper.reverse).to eq("olleh")
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      # Fill in the test
      str = "hello"
      string_wrapper = StringWrapper.new(str)
      expect(string_wrapper.upcase).to eq("HELLO")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      # Fill in the test
      str = "HELLO"
      string_wrapper = StringWrapper.new(str)
      expect(string_wrapper.downcase).to eq("hello")
    end
  end
end
