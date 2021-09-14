require 'spec_hepler'
require 'json'
require 'nokogiri'
require 'pry'

require 'newsletter/content'

module Newsletter
  describe Content do
    context 'when parsing from JSON' do
      let(:json) do
        File.read(
          File.expand_path('fixtures/newsletter.json', File.dirname(__FILE__))
        )
      end

      subject { Content.parse(json, :json) }

      it 'parses the title' do
        expect(subject.title).to eq('Hello world!')
      end

      it 'parses the body' do
        expect(subject.body).to eq('lorem ipsum')
      end
    end

    context 'when parsing from XML' do
      let(:json) do
        File.read(
          File.expand_path('fixtures/newsletter.xml', File.dirname(__FILE__))
        )
      end

      subject { Content.parse(json, :xml) }

      it 'parses the title' do
        expect(subject.title).to eq('Hello world!')
      end

      it 'parses the body' do
        expect(subject.body).to eq('lorem ipsum')
      end
    end
  end
end
