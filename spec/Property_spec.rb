require "Property"

describe Property do
  describe '.all' do 
      it 'returns all properties' do 
        properties = Property.all

        expect(properties).to include "Makers Paradise"
        expect(properties).to include "Quaint little paradise escape, perfect for couples and families"
        expect(properties).to include "130.75"
        expect(properties).to include "Benedict Cumberbatch"
      end 
    end
end
