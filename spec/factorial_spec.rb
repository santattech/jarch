require_relative "../lib/factorial"

describe Factorial do 
   context "When testing the Factorial class" do 
      
      it "should return 120 when we pass 5" do 
         hw = Factorial.result(5) 
         expect(hw).to eq 120
      end
      
   end
end