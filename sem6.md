o# Análise de Bibliotecas de Hash (SHA-256) e AES-256 em Python

## Método Utilizado

Para explorar as funcionalidades das bibliotecas de hash SHA-256 e de criptografia AES-256 em Python, foram feitos 10 testes distintos, divididos igualmente entre as duas tecnologias. Utilizei a biblioteca `hashlib` para geração de hashes SHA-256 e a biblioteca `pycryptodome` para criptografia e descriptografia com AES-256.

Os testes de SHA-256 envolveram a geração de hashes para diferentes tipos de dados, enquanto os testes de AES-256 envolveram a criptografia e subsequente descriptografia dos mesmos tipos de dados, para avaliar a integridade e eficácia da criptografia.

## Resultados Obtidos

### SHA-256 Hashes

| Entrada                                    | Hash SHA-256                                                               |
|--------------------------------------------|----------------------------------------------------------------------------|
| texto simples                              | `a7bdbfb84f5369243bd0e7494947db69216ed9161d39f2522214b866bd5e1d95` |
| 123456789                                  | `15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225` |
| A quick brown fox jumps over the lazy dog | `afd63d45baadf7eaf2e9b861054f7b435ae5200d46bf4e145468dc38d1e110d7` |
| @#$%&*()_+=-\`~                            | `c5f19e10d4812336b8f2569a69a13d5681739385595fb5a8b1309fdd5418a35f` |
| texto simples (com espaço no final)        | `e457845ed1be331a523d60b2c08afacfa1cb99b20195f0b908a673483d552c82` |

### AES-256 Criptografia e Descriptografia

Devido à natureza da criptografia AES, o texto criptografado é representado em bytes e não é prontamente legível, por isso, a tabela foca na correspondência entre o texto de entrada e o descriptografado para verificar a integridade.

| Entrada                                    | Texto Descriptografado                          |
|--------------------------------------------|-------------------------------------------------|
| texto simples                              | texto simples                                   |
| 123456789                                  | 123456789                                       |
| A quick brown fox jumps over the lazy dog | A quick brown fox jumps over the lazy dog       |
| @#$%&*()_+=-\`~                            | @#$%&*()_+=-\`~                                 |
| texto simples (com espaço no final)        | texto simples                                   |

## Comparação entre AES-256 e SHA-256

- **Uso e Aplicação**: O SHA-256 é usado para verificar a integridade dos dados, gerando um hash único para cada conjunto de dados. AES-256 é utilizado para criptografar e descriptografar dados, garantindo a segurança na transmissão e armazenamento de informações.

- **Sensibilidade**: O SHA-256 é extremamente sensível a qualquer mudança nos dados, refletindo mudanças mínimas com hashes drasticamente diferentes. AES-256 garante que os dados descriptografados sejam idênticos aos originais, demonstrando também alta sensibilidade e integridade.

- **Performance**: Ambos são eficientes, mas AES-256 pode ser mais lento devido ao processo de criptografar e descriptografar, enquanto SHA-256 gera um hash diretamente dos dados de entrada.

- **Segurança**: AES-256 oferece uma solução robusta para a proteção de dados sensíveis, permitindo o acesso aos dados originais através da descriptografia. SHA-256, embora não permita a recuperação de dados a partir do hash, é essencial para verificar a integridade e detectar alterações nos dados.

Concluindo, SHA-256 e AES-256 atendem a diferentes necessidades de segurança digital, com o primeiro garantindo a integridade dos dados e o segundo protegendo a confidencialidade dos mesmos.
