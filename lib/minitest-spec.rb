require "minitest-spec/version"
require "minitest-spec/shared_example"

class MiniTest::Spec
  attr_accessor :subject

  class << self
    alias_method :context, :describe
    
    def its msg, &block
      it msg.to_s do
        subject.send(msg).instance_eval &block
      end
    end
    
    def shared_examples
      @shared_examples ||= {}
    end
  end
end

module MinitestSpec
  
end


