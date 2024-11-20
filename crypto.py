import requests
import locale

locale.setlocale(locale.LC_ALL, '')

def get_price(symbol):

  f_symbol = symbol.upper()
  url = 'https://pro-api.coinmarketcap.com/v2/cryptocurrency/quotes/latest'

  parameters = {
    'symbol': f_symbol
  }

  headers = {
    'Accepts': 'application/json',
    'X-CMC_PRO_API_KEY': '4d91b248-5924-45c8-91ed-66c5e6a5c283'
  }

  response = requests.get(url, params=parameters, headers=headers)
  # pprint.pprint(response.json())

  # return response.json().get('data', {}).get(f_symbol, {})[0].get('quote', {}).get('USD', {}).get('price')
  
  price = response.json()['data'][f_symbol][0]['quote']['USD']['price']
  return locale.currency(price, grouping=True)


response = input("Give me a cryptocurrency ticker ")

print(get_price(response))