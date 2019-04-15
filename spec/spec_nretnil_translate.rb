# frozen_string_literal: true

require 'spec_helper'

describe 'word_to_pig_latin' do
  before do
    @translate = Nretnil::Translate.new
    @word = 'fish'
  end

  it 'should produce a string translated into pig latin' do
    expect(@translate.word_to_pig_latin(@word).nil?).to be false
    expect(@translate.word_to_pig_latin(@word).is_a?(String)).to be true
  end

  it 'should maintain capitalized words' do
    expect(@translate.word_to_pig_latin('fish')).to eq 'ishfay'
    expect(@translate.word_to_pig_latin('Fish')).to eq 'Ishfay'
  end

  it 'should follow learning mode' do
    expect(@translate.word_to_pig_latin('fish', true)).to eq 'ish-fay'
  end
end

describe 'Nretnil::Translate.pig_latin' do
  before do
    @phrase = 'The fish swam away.'
  end

  it 'should produce a string translated into pig latin properly' do
    expect(Nretnil::Translate.pig_latin(@phrase).nil?).to be false
    expect(Nretnil::Translate.pig_latin(@phrase).is_a?(String)).to be true
    expect(Nretnil::Translate.pig_latin(@phrase)).to eq 'Ethay ishfay amsway awayway.'
  end

  it 'should follow learning mode' do
    expect(Nretnil::Translate.pig_latin(@phrase, true)).to eq 'E-thay ish-fay am-sway away-way.'
  end
end

describe 'shuffle' do
  before do
    @translate = Nretnil::Translate.new
    @word = 'fishing'
  end

  it 'should produce a string of the same length' do
    expect(@translate.shuffle(@word).nil?).to be false
    expect(@translate.shuffle(@word).is_a?(String)).to be true
    expect(@translate.shuffle(@word).length).to eq 7
  end
end

describe 'first' do
  before do
    @translate = Nretnil::Translate.new
    @word = 'fishing'
  end

  it 'should produce the first character of the input' do
    expect(@translate.first(@word).nil?).to be false
    expect(@translate.first(@word).is_a?(String)).to be true
    expect(@translate.first(@word)).to eq 'f'
  end
end

describe 'middle' do
  before do
    @translate = Nretnil::Translate.new
    @word = 'fishing'
  end

  it 'should produce the middle character of the input' do
    expect(@translate.middle(@word).nil?).to be false
    expect(@translate.middle(@word).is_a?(String)).to be true
    expect(@translate.middle(@word)).to eq 'ishin'
    expect(@translate.middle(@word).length).to eq @word.length - 2
  end
end

describe 'last' do
  before do
    @translate = Nretnil::Translate.new
    @word = 'fishing'
  end

  it 'should produce the last character of the input' do
    expect(@translate.last(@word).nil?).to be false
    expect(@translate.last(@word).is_a?(String)).to be true
    expect(@translate.last(@word)).to eq 'g'
  end
end

describe 'Nretnil::Translate.scramble' do
  before do
    @phrase = 'The fish swam away.'
  end

  it 'should produce a string translated into pig latin properly' do
    expect(Nretnil::Translate.scramble(@phrase).nil?).to be false
    expect(Nretnil::Translate.scramble(@phrase).is_a?(String)).to be true
    expect(Nretnil::Translate.scramble(@phrase).length).to eq @phrase.length
  end
end

describe 'word_to_parseltongue' do
  before do
    @translate = Nretnil::Translate.new
    @mapping = @translate.parseltongue_map
    @word = 'icecream'
  end

  it 'should be translated properly' do
    expect(@translate.word_to_parseltongue(@word).nil?).to be false
    expect(@translate.word_to_parseltongue(@word).is_a?(String)).to be true
    expect(@translate.word_to_parseltongue(@word)).to eq @word
    @mapping.each do |a, b|
      expect(@translate.word_to_parseltongue(a)).to eq b
    end
  end
end

describe 'Nretnil::Translate.parseltongue' do
  before do
    @phrase = 'The cat ate the fish.'
  end

  it 'should produce a string translated into pig latin properly' do
    expect(Nretnil::Translate.parseltongue(@phrase).nil?).to be false
    expect(Nretnil::Translate.parseltongue(@phrase).is_a?(String)).to be true
    expect(Nretnil::Translate.parseltongue(@phrase)).to eq 'The pelʃis ate the dros.'
  end
end
