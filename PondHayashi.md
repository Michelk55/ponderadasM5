
# Ferramentas de NLP na AWS

Este documento apresenta um levantamento das ferramentas de Processamento de Linguagem Natural (NLP) disponíveis na plataforma Amazon Web Services (AWS), com exemplos de aplicações práticas para cada serviço.

## Amazon Comprehend
O Amazon Comprehend é um serviço que utiliza machine learning para identificar informações e relações em textos.

**Exemplo de Aplicação:**
Análise de sentimentos em comentários de clientes para entender a percepção sobre produtos ou serviços.

**Exemplo de Requisição HTTP para Amazon Comprehend:**

### Pré-requisitos
- Obter as credenciais AWS Access Key ID e AWS Secret Access Key.
- Configurar as políticas de acesso no IAM para permitir chamadas ao Amazon Comprehend.

### Ferramenta de Requisição
- Utilização de Postman ou cURL para enviar a requisição.

### Preparar a Requisição
- Endpoint do serviço: `https://comprehend.amazonaws.com`
- Método: POST
- Headers necessários:
  - `Content-Type: application/json`
  - `Authorization: AWS4-HMAC-SHA256 Credential=your_access_key/20210612/us-east-1/comprehend/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=your_request_signature`
  - `x-amz-target: Comprehend_20171127.DetectSentiment`
  - `x-amz-date: 20210612T000000Z`
- Corpo da requisição (JSON):
  ```json
  {
    "Text": "Your text here",
    "LanguageCode": "en"
  }
  ```

## Amazon Translate
Serviço de tradução automática que suporta múltiplos idiomas.

**Exemplo de Aplicação:**
Tradução de descrições de produtos em um site de e-commerce para várias línguas.

**Exemplo de Requisição HTTP para Amazon Translate:**

### Pré-requisitos
- Obter as credenciais AWS Access Key ID e AWS Secret Access Key.
- Configurar as políticas de acesso no IAM para permitir chamadas ao Amazon Translate.

### Ferramenta de Requisição
- Utilização de Postman ou cURL para enviar a requisição.

### Preparar a Requisição
- Endpoint do serviço: `https://translate.amazonaws.com`
- Método: POST
- Headers necessários:
  - `Content-Type: application/x-amz-json-1.1`
  - `Authorization: AWS4-HMAC-SHA256 Credential=your_access_key/20210612/us-east-1/translate/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=your_request_signature`
  - `x-amz-target: TranslateText`
  - `x-amz-date: 20210612T000000Z`
- Corpo da requisição (JSON):
  ```json
  {
    "Text": "Your text here",
    "SourceLanguageCode": "en",
    "TargetLanguageCode": "es"
  }
  ```

## Amazon Transcribe
Serviço de reconhecimento de fala que converte áudio em texto.

**Exemplo de Aplicação:**
Transcrição automática de chamadas de serviço ao cliente para posterior análise.

**Exemplo de Requisição HTTP para Amazon Transcribe:**

### Pré-requisitos
- Obter as credenciais AWS Access Key ID e AWS Secret Access Key.
- Configurar as políticas de acesso no IAM para permitir chamadas ao Amazon Transcribe.

### Ferramenta de Requisição
- Utilização de Postman ou cURL para enviar a requisição.

### Preparar a Requisição
- Endpoint do serviço: `https://transcribe.amazonaws.com`
- Método: POST
- Headers necessários:
  - `Content-Type: application/x-amz-json-1.1`
  - `Authorization: AWS4-HMAC-SHA256 Credential=your_access_key/20210612/us-east-1/transcribe/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=your_request_signature`
  - `x-amz-target: StartTranscriptionJob`
  - `x-amz-date: 20210612T000000Z`
- Corpo da requisição (JSON):
  ```json
  {
    "TranscriptionJobName": "example-job",
    "LanguageCode": "en-US",
    "MediaFormat": "mp3",
    "Media": {
      "MediaFileUri": "s3://your-bucket/your-audio-file.mp3"
    }
  }
  ```

## Amazon Lex
Plataforma para construção de interfaces de conversação (chatbots) utilizando voz e texto.

**Exemplo de Aplicação:**
Criação de chatbots para responder perguntas frequentes no atendimento ao cliente de um site.

**Exemplo de Requisição HTTP para Amazon Lex:**

### Pré-requisitos
- Obter as credenciais AWS Access Key ID e AWS Secret Access Key.
- Configurar as políticas de acesso no IAM para permitir chamadas ao Amazon Lex.

### Ferramenta de Requisição
- Utilização de Postman ou cURL para enviar a requisição.

### Preparar a Requisição
- Endpoint do serviço: `https://runtime.lex.us-east-1.amazonaws.com`
- Método: POST
- Headers necessários:
  - `Content-Type: application/json`
  - `Authorization: AWS4-HMAC-SHA256 Credential=your_access_key/20210612/us-east-1/lex/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=your_request_signature`
  - `x-amz-date: 20210612T000000Z`
- Corpo da requisição (JSON):
  ```json
  {
    "botAlias": "yourBotAlias",
    "botName": "yourBotName",
    "inputText": "Hello",
    "userId": "user-id"
  }
  ```

## Amazon Kendra
Serviço de busca empresarial que utiliza machine learning para encontrar informações relevantes em documentos armazenados.

**Exemplo de Aplicação:**
Busca eficiente de informações em documentos corporativos para suporte à decisão e pesquisa.

**Exemplo de Requisição HTTP para Amazon Kendra:**

### Pré-requisitos
- Obter as credenciais AWS Access Key ID e AWS Secret Access Key.
- Configurar as políticas de acesso no IAM para permitir chamadas ao Amazon Kendra.

### Ferramenta de Requisição
- Utilização de Postman ou cURL para enviar a requisição.

### Preparar a Requisição
- Endpoint do serviço: `https://kendra.us-east-1.amazonaws.com`
- Método: POST
- Headers necessários:
  - `Content-Type: application/json`
  - `Authorization: AWS4-HMAC-SHA256 Credential=your_access_key/20210612/us-east-1/kendra/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=your_request_signature`
  - `x-amz-target: KendraFrontendService.Query`
  - `x-amz-date: 20210612T000000Z`
- Corpo da requisição (JSON):
  ```json
  {
    "IndexId": "your-index-id",
    "QueryText": "search query"
  }
  ```

---
