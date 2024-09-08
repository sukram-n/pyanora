HEADER = '''
\\version "2.24.1"
\\language  "english"
'''

BOOK_SCORE_BEGIN = '''
\\book {
  \\paper{ tagline = ##f }
  \\bookOutputName \\pyanoraOutputName
  \\score {
    '''

BOOK_SCORE_END = '}\n}\n'

KINDS = {
    'sheetmusic': '''
  \\layout
  {
    # (layout-set-staff-size 15)
    indent = 0\\mm
    \\context
    {
      \\Score
    }
    \\context
    {
      \\Staff
      \\accidentalStyle modern-cautionary
      \\RemoveAllEmptyStaves
    }
  } ''',
    'audio': ''' 
  \\midi
  {
    \\context
      {
        \\Score
        midiChannelMapping =  # 'instrument
      }
  }
'''
}
