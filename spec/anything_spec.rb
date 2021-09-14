require 'spec_hepler'
require_relative '../lib/strategies/markdown'
require_relative '../lib/strategies/html'
require_relative '../lib/generators/base'
require_relative '../lib/generators/good_news'
require_relative '../lib/generators/bad_news'

module Newsletter
  describe Generators::Base do
    context 'when HTML' do
      context 'when news are good' do
        let(:newsletter) do
          File.read(
            File.expand_path('fixtures/good_news.html', File.dirname(__FILE__))
          )
        end

        it 'generates HTML' do
          expect(Generators::GoodNews.new(strategy: :Html).render).to include(newsletter)
        end
      end

      context 'when news are bad' do
        let(:newsletter) do
          File.read(
            File.expand_path('fixtures/bad_news.html', File.dirname(__FILE__))
          )
        end

        it 'generates HTML' do
          expect(Generators::BadNews.new(strategy: :Html).render).to include(newsletter)
        end
      end
    end

    context 'when markdown' do
      context 'when news are good' do
        let(:newsletter) do
          File.read(
            File.expand_path('fixtures/good_news.markdown', File.dirname(__FILE__))
          )
        end

        it 'generates markdown' do
          expect(Generators::GoodNews.new(strategy: :Markdown).render).to include(newsletter)
        end
      end

      context 'when news are bad' do
        let(:newsletter) do
          File.read(
            File.expand_path('fixtures/bad_news.markdown', File.dirname(__FILE__))
          )
        end

        it 'generates markdown' do
          expect(Generators::BadNews.new(strategy: :Markdown).render).to include(newsletter)
        end
      end
    end
  end
end
