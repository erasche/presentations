#!/usr/bin/env python
"""
DESCRIPTION
===========

Print out options passed to it
"""
from galaxygetopt.ggo import GalaxyGetOpt as GGO

def main():
    c = GGO(
        options=[
            ['file', 'Input file', {'required': True, 'validate':
                                       'File/Input'}],
            ['int', 'An integer', {'required': True, 'validate':
                                             'Int', 'min': 10, 'default': 30}],
            ['option', 'A selection type parameter', {'validate': 'Option',
                                                      'options': {'a': 'Alpha',
                                                                  'b': 'Bravo'},
                                                      'multiple': True,
                                                      }],
        ],
        outputs=[
            ['test_output', 'Output Data',
                {
                    'validate': 'File/Output',
                    'required': True,
                    'default': 'ggo_out.complex',
                    'data_format': 'text/tabular',
                    'default_format': 'TSV_U',
                }
            ]
        ],
        defaults={
            'appid': 'org.cpt.examples.GGOPoster',
            'appname': 'Example Utility',
            'appdesc': 'prints out options passed to it',
            'appvers': '1.0.0',
        },
        tests=[
            {'test_name': 'Default', 'params': {}, 'outputs': {
                    'test_output': ['ggo_out.complex.Sheet1.tsv',
                'galaxygetopt/tests/test_file.tsv'],}
            }
        ],
        doc=__doc__
    )
    from galaxygetopt.outputfiles import OutputFiles
    of = OutputFiles(name='test_output', GGO=c)
    data = {
        'Sheet1': {
            'header': ['Key', 'Value'],
            'data': []
        }
    }
    my_params = c.params()
    tbl_data = []
    for key in my_params:
        tbl_data.append([key, my_params[key]])
    data['Sheet1']['data'] = tbl_data
    of.CRR(data=data)

if __name__ == "__main__":
    main()
