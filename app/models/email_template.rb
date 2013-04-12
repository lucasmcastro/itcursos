# encoding: utf-8

# coding: utf-8
class EmailTemplate < ActiveRecord::Base
  belongs_to :course
  attr_accessible :content, :highlight, :price, :title, :topics

  def fill_with_defaults(course)
    self.title = course.name+", Subtitulo"
    self.topics = course.content
    self.price = '1+6x R$180, NO CARTÃO'
    self.highlight = "Início: 14 de Janeiro\n"\
        "Teóricas: Seg-Qua 18h40 - 20h20\n"\
        "Práticas: Ter-Qui 18:40 - 22h00\n"\
        "Carga Horária: 240h"
    self.content = "PROMOÇÃO 40% de desconto\n"\
        "para pagamento no período de 31/10/12 a 30/11\n"\
        "R$ 1080,00 (à Vista)\n\n"\
        "PROMOÇÃO 30% de desconto\n"\
        "para pagamento no período de 31/10/12 a 30/11\n"\
        "R$ 180,00 + 6x de R$ 180,00 no Cartão (HIPER,MASTER E VISA)\n"\
        "R$ 300,00 + 6 X R$ 250,00 (BOLETO BANCÁRIO)"
  end
end
