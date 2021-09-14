require 'spec_hepler'
require_relative '../lib/generator'

describe Newsletter::Generator do
  context 'when HTML' do
    let(:newsletter) do
      File.read(
        File.expand_path('fixtures/newsletter.html', File.dirname(__FILE__))
      )
    end

    it 'generates HTML' do
      expect(described_class.new(:html).render).to include(newsletter)
    end
  end

  context 'when markdown' do
    let(:newsletter) do
      File.read(
        File.expand_path('fixtures/newsletter.markdown', File.dirname(__FILE__))
      )
    end

    it 'generates markdown' do
      expect(described_class.new(:markdown).render).to include(newsletter)
    end
  end
end
