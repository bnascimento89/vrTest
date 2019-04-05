class ZipCode
  def get_schema
    {   
      'type': 'object',
      'title': 'The Root Schema',
      'required': [
        'cep',
        'logradouro',
        'complemento',
        'bairro',
        'localidade',
        'uf',
        'unidade',
        'ibge',
        'gia'
      ],
      'properties': {
        'cep': {
        '$id': '#/properties/cep',
        'type': 'string',
        'title': 'The Cep Schema',
        },
        'logradouro': {
        '$id': '#/properties/logradouro',
        'type': 'string',
        'title': 'The Logradouro Schema',
        },
        'complemento': {
        '$id': '#/properties/complemento',
        'type': 'string',
        'title': 'The Complemento Schema',
        },
        'bairro': {
        '$id': '#/properties/bairro',
        'type': 'string',
        'title': 'The Bairro Schema',
        },
        'localidade': {
        '$id': '#/properties/localidade',
        'type': 'string',
        'title': 'The Localidade Schema',
        },
        'uf': {
        '$id': '#/properties/uf',
        'type': 'string',
        'title': 'The Uf Schema',
        'examples': [
            'SP'
        ],
        },
        'unidade': {
        '$id': '#/properties/unidade',
        'type': 'string',
        'title': 'The Unidade Schema',
        },
        'ibge': {
        '$id': '#/properties/ibge',
        'type': 'string',
        'title': 'The Ibge Schema',
        },
        'gia': {
        '$id': '#/properties/gia',
        'type': 'string',
        'title': 'The Gia Schema',
        }
      }
    }
  end
end

