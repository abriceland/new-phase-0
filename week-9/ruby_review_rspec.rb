require_relative "ruby_practice"


describe "sum" do
    it "works on (3, 4)" do
        expect(sum(3, 4)).to eq(7)
    end    

    it "works on (542, 987)" do
        expect(sum(542, 987)).to eq(1529)
    end    

end    


describe "product" do
    
    it "works on (4, 8, 9)" do
        expect(product(4, 8, 9)).to eq(288)
    end

    it "works on (27, 49, 532)" do
        expect(product(27, 49, 532)).to eq(703836)
    end 

end    



describe "veracity" do
    
    it "works on (2)" do
        expect(veracity(2)).to eq(false)
    end    
        
    it "works on (40)" do
        expect(veracity(40)).to eq(true)
    end    
        
    it "works on (300)" do
        expect(veracity(300)).to eq(true)  
    end    
end        