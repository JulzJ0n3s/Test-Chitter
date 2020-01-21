require 'peeps'
require 'database_helper'

describe '.create' do
    it 'creates a new peep' do
      peeep = Peeps.create(title: 'Peeping all-day-long', peep: 'Is is a great day to be peeping on Chitter!')
      persisted_data = persisted_data(id: peeep.id, time_id:peeep.time_id)
      

      expect(peeep).to be_a Peeps
      expect(peeep.title).to eq 'Peeping all-day-long'
      expect(peeep.id).to eq persisted_data['id']
      expect(peeep.time_id).to eq persisted_data['time_id']
      expect(peeep.peep).to eq 'Is is a great day to be peeping on Chitter!'

    end
  end