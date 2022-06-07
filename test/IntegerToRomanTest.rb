require './src/IntegerToRoman'

describe IntegerToRoman do
    describe '#toRoman' do
        context 'Given 3' do
            it 'should return III' do
                expect(subject.toRoman(3)).to eql('III')
            end
        end

        context 'Given 58' do
            it 'should return LVIII' do
                expect(subject.toRoman(58)).to eql('LVIII')
            end
        end

        context 'Given 1994' do
            it 'should return MCMXCIV' do
                expect(subject.toRoman(1994)).to eql('MCMXCIV')
            end
        end
    end
end