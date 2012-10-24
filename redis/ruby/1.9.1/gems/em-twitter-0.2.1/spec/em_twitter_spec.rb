require 'spec_helper'

describe EM::Twitter do

  describe '.logger' do
    it 'returns a Logger by default' do
      EM::Twitter.logger.should be_kind_of(Logger)
    end
  end

  describe '.logger=' do
    it 'assigns a custom logger' do
      FakeLogger = Class.new
      EM::Twitter.logger = FakeLogger.new
      EM::Twitter.logger.should be_kind_of(FakeLogger)
    end
  end

end