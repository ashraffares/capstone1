require_relative '../lib/logic'

describe Logic do
  logic = Logic.new
  describe '#quote_validate_tags?' do
    it 'it should return true or false' do
      expect(logic.quote_validate_tags?('love')).to eql true
      expect(logic.quote_validate_tags?('life')).to eql true
      expect(logic.quote_validate_tags?('humor')).to eql true
      expect(logic.quote_validate_tags?('test')).to eql false
      expect(logic.quote_validate_tags?('something')).to eql false
    end
  end

  describe '#quote_url(tag)' do
    it 'it should return full url with key' do
      expect(logic.quote_url('love')).to eql 'https://quotes.toscrape.com/tag/love'
      expect(logic.quote_url('inspirational')).to eql 'https://quotes.toscrape.com/tag/inspirational'
      expect(logic.quote_url('life')).to eql 'https://quotes.toscrape.com/tag/life'
      expect(logic.quote_url('humor')).to eql 'https://quotes.toscrape.com/tag/humor'
      expect(logic.quote_url('books')).to eql 'https://quotes.toscrape.com/tag/books'
    end
  end

  describe '#job_itrerator' do
    it 'it should return Array' do
      a = logic.job_itrerator('https://wuzzuf.net/search/jobs/?q=full+stack+web+devdloper', 1, 4)
      expect(a.class).to eql Array
    end
  end

  describe '#job_url' do
    it 'it should return url + key' do
      expect(logic.job_url('full stack web devdloper')).to eql 'https://wuzzuf.net/search/jobs/?q=full stack web devdloper'
      expect(logic.job_url('markiting')).to eql 'https://wuzzuf.net/search/jobs/?q=markiting'
      expect(logic.job_url('hello')).to eql 'https://wuzzuf.net/search/jobs/?q=hello'
    end
  end
end
