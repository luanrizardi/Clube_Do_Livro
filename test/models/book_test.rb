require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "não deve salvar livro sem título" do
    book = Book.new
    assert_not book.save, "Salvou o livro sem título"
  end

  test "deve salvar livro com título e descrição" do
    book = Book.new(title: "Teste", description: "Livro de teste", club: clubs(:one))
    assert book.save, "Não salvou o livro com dados válidos"
  end
end
