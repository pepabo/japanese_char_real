# coding: utf-8

module JapaneseCharReal
  class << self
    def utf8_failure
      {
        '8ff3a1' => 'ⅰ',
        '8ff3a2' => 'ⅱ',
        '8ff3a3' => 'ⅲ',
        '8ff3a4' => 'ⅳ',
        '8ff3a5' => 'ⅴ',
        '8ff3a5' => 'ⅵ',
        '8ff3a7' => 'ⅶ',
        '8ff3a8' => 'ⅷ',
        '8ff3a9' => 'ⅸ',
        '8ff3aa' => 'ⅹ',
        '8ff3ab' => 'Ⅰ',
        '8ff3ac' => 'Ⅱ',
        '8ff3ad' => 'Ⅲ',
        '8ff3ae' => 'Ⅳ',
        '8ff3af' => 'Ⅴ',
        '8ff3b0' => 'Ⅵ',
        '8ff3b1' => 'Ⅶ',
        '8ff3b2' => 'Ⅷ',
        '8ff3b3' => 'Ⅸ',
        '8ff3b4' => 'Ⅹ',
        '8ff3b7' => '㈱'
      }
    end

    def gaiji_to_utf8
      {
        'ee8b93' => '髙',
        'ee878c' => '﨑'
      }
    end

    def convert(str, encode: :ujis_to_utf8)
      return str if str.ascii_only?

      case encode
      when :ujis_to_utf8
        unless str.encoding.name == 'UTF-8'
          str.encode!(Encoding::UTF_8, fallback: -> c {
            self.utf8_failure[c.unpack('H*').first] || '?'
          })
        end
        str.split('').map { |c|
          self.gaiji_to_utf8[c.unpack('H*').first] || c
        }.join('')

      when :utf8_to_ujis
      end
    end
  end

  # usage:
  #   ::String.__send__ :include, JapaneseCharReal::String
  module String
    def to_real(encode: :ujis_to_utf8)
      JapaneseCharReal.convert(self, encode: encode)
    end
  end
end
