require 'spec_hepler'
require_relative '../lib/generator'
require_relative '../lib/generators/html'
require_relative '../lib/generators/markdown'

module Newsletter
  describe Generator do
    context 'when HTML' do
      let(:newsletter) do
        File.read(
          File.expand_path('fixtures/newsletter.html', File.dirname(__FILE__))
        )
      end

      it 'generates HTML' do
        expect(Generators::Html.new.render).to include(newsletter)
      end
    end

    context 'when markdown' do
      let(:newsletter) do
        File.read(
          File.expand_path('fixtures/newsletter.markdown', File.dirname(__FILE__))
        )
      end

      it 'generates markdown' do
        expect(Newsletter::Generators::Markdown.new.render).to include(newsletter)
      end
    end

    context 'when we calling the base class' do
      it 'Template method requires base class to ba abstract!!!' do
        expect{ Generator.new.render }.to raise_error(NotImplementedError)
        expect{ Generator.new.header }.to raise_error(NotImplementedError)
        expect{ Generator.new.body }.to raise_error(NotImplementedError)
      end
    end
  end
end
