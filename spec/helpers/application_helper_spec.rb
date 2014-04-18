require 'spec_helper'

describe ApplicationHelpder do
    describe "full_title" do
        it "should include the page title" do
            expect(full_title("foo")).to_match(/foo/)
        end

        it "should include the base title" do
            expect(full_title("foo")).to_match(/^Ruby on Rails Tutorial Sample App/)
        end

        it "should not include a bar for the home page" do
            expect(full_title("")).not_to match(/\|/)
        end
    end
end