import io, sys
import pandas as pd
import requests


sets = ['themes', 'colors', 'part_categories', 'parts', 'inventories', 'sets', 'inventory_parts', 'inventory_sets', 'part_relationships']

def rebrickable(dataset):
    if dataset in sets:
        response = requests.get('http://m.rebrickable.com/media/downloads/{0}.csv'.format(dataset))
        return pd.read_csv(io.StringIO(response.text), index_col=0)

    else:
        raise TypeError('The dataset must be in the list {0}'.format(sets))
