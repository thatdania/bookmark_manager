# FILES

## a.rb

require './lib/b'

class A
  attr_reader :list

  def initialize(b_class: B)
    @list = []
    @b_class = b_class
  end

  def push(name)
    @list.push(@b_class.new(name).upcase)
  end
end

## b.rb

class B
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def upcase
    @name.upcase!
  end
end

# TESTS

## a_spec.rb

describe A do

  let(:bclass) { double(:bclass, new: 'bobject') }

  subject { described_class.new }

  describe '#initialize' do
    context 'when created' do
      it 'has empty list' do
        expect(subject.list).to eq []
      end
    end
  end

  describe '#push' do
    context 'when creating new B object' do
      after(:each) { subject.push('Dania') }

      it 'passes a correct argument to B class' do
        expect(bclass).to receive(:new).with('Dania')
      end
    end

    context 'BOBJECT is the last object in the array' do
      before(:each) { subject.push('Dania') }

      it 'bobject is in an array' do
        expect(subject.list.last).to eq("BOBJECT")
      end
    end
  end
end

## b_spec.rb

describe B do
  subject { described_class.new('Dania') }

  describe '#initialize' do
    context 'when created' do
      it 'has name' do
        expect(subject.name).to eq 'Dania'
      end
    end
  end
end
