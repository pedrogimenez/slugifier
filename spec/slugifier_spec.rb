require_relative "../lib/slugifier"

describe Slugifier do
  it "returns a slug" do
    examples.each { |string, slug| expect(Slugifier.slugify(string)).to eq(slug) }
  end

  def examples
    [
      ["Word", "word"],
      ["JúST å fëw wørds", "just-a-few-words"],
      ["J\"étudie le français", "j-etudie-le-francais"],
      ["An awesome slug", "an-awesome-slug"],
      ["  should trim  this   text ", "should-trim-this-text"],
      ["Práctica de acentuación", "practica-de-acentuacion"],
      ["Cumpleaños del muerciélago", "cumpleanos-del-muercielago"],
      ["هذا هو الاختبار", "hth-ho-l-khtb-r"],
      ["Блоґ їжачка", "blog-jizhachka"],
      ["Это тест", "eto-test"],
      ["Це тест", "ce-test"],
      ["Đây là một thử nghiệm", "day-la-mot-thu-nghiem"],
      ["Αυτή είναι μια δοκιμή", "ayte-einai-mia-dokime"],
      ["°¹²³@¶", "0123atp"]
    ]
  end
end
