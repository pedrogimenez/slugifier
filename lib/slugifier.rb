class Slugifier
  UNWANTED_CHARACTERS = /([^a-z0-9])+/;

  def self.slugify(string)
    string = normalize(string)
    string.gsub!(UNWANTED_CHARACTERS, "-")
    string
  end

  def self.normalize(string)
    string = transliterate(string)
    string.downcase!
    string.strip!
    string
  end

  def self.transliterate(string)
    transliteration = string
    table.each { |character, translit| transliteration.tr!(character, translit) }
    transliteration
  end

  def self.table
    {
      "Š"=>"S", "š"=>"s", "Đ"=>"Dj", "đ"=>"dj", "Ž"=>"Z", "ž"=>"z", "Č"=>"C",
      "č"=>"c", "Ć"=>"C", "ć"=>"c", "À"=>"A", "Á"=>"A", "Â"=>"A", "Ã"=>"A",
      "Ä"=>"A", "Å"=>"A", "Æ"=>"A", "Ç"=>"C", "È"=>"E", "É"=>"E", "Ê"=>"E",
      "Ë"=>"E", "Ì"=>"I", "Í"=>"I", "Î"=>"I", "Ï"=>"I", "Ñ"=>"N", "Ò"=>"O",
      "Ó"=>"O", "Ô"=>"O", "Õ"=>"O", "Ö"=>"O", "Ø"=>"O", "Ù"=>"U", "Ú"=>"U",
      "Û"=>"U", "Ü"=>"U", "Ý"=>"Y", "Þ"=>"B", "ß"=>"Ss", "à"=>"a", "á"=>"a",
      "â"=>"a", "ã"=>"a", "ä"=>"a", "å"=>"a", "æ"=>"a", "ç"=>"c", "è"=>"e",
      "é"=>"e", "ê"=>"e", "ë"=>"e", "ì"=>"i", "í"=>"i", "î"=>"i", "ï"=>"i",
      "ð"=>"o", "ñ"=>"n", "ò"=>"o", "ó"=>"o", "ô"=>"o", "õ"=>"o", "ö"=>"o",
      "ø"=>"o", "ù"=>"u", "ú"=>"u", "û"=>"u", "ý"=>"y", "þ"=>"b", "ÿ"=>"y",
      "Ŕ"=>"R", "ŕ"=>"r", "ü" => "u", "ƒ" => "f"
    }
  end
end
