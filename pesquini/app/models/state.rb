=begin
File: state.rb
Purpose: Class that validates state abbreviation.
License: GPL v3.
Pesquini Group 6
FGA - UnB Faculdade de Engenharias do Gama - University of Brasilia.
=end

class State < ActiveRecord::Base

  has_many :sanctions
  validates_uniqueness_of :abbreviation

  def refresh!()

    s = State.find_by_abbreviation( self.abbreviation )

  end

  def self.all_states()

    states = ["BA", "DF", "RJ", "PA", "MG", "SP", "AM", "RS", "SC", "ES", "PR",
              "PB", "RN", "CE", "AL", "RR", "SE", "RO","PI" , "AC",
              "TO", "GO", "PE", "AP", "MS", "MT", "MA","Não Informado"]
    states

  end

end