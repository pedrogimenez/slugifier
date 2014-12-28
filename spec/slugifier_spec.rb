require_relative "../lib/slugifier"

describe Slugifier do
  it "returns an slug" do
    examples.each { |string, slug| expect(Slugifier.slugify(string)).to eq(slug) }
  end

  def examples
    [
      ["Word", "word"],
      ["An awesome slug", "an-awesome-slug"],
      ["  should trim this text ", "should-trim-this-text"],
      ["Práctica de acentuación", "practica-de-acentuacion"],
      ["Cumpleaños del muerciélago", "cumpleanos-del-muercielago"]
    ]
  end
end
