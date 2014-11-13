# coding: utf-8

require 'spec_helper'

describe JapaneseCharReal do
  describe 'String.to_real' do
    context 'when include gaiji' do
      it 'returns real string' do
        expect('山 太郎'.to_real).to eq'山﨑 太郎'
      end
    end

    context 'when string is euc-jp' do
      it 'returns real string' do
        str = ['8ff3ac'].pack('H*').force_encoding('EUC-JP')
        expect(str.to_real).to eq 'Ⅱ'
      end
    end
  end
end
