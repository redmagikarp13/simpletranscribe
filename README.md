# Simple Transcribe (Native Mac App)

Aplicativo nativo para macOS (Apple Silicon) que transcreve áudios e vídeos diretamente no seu computador utilizando o poder da GPU (Metal) através do [WhisperKit](https://github.com/argmaxinc/WhisperKit). Seus arquivos não são enviados para serviços externos, garantindo total privacidade!

## Instalação (via Homebrew)

A forma mais fácil de instalar e manter o aplicativo atualizado no seu Mac é utilizando o Homebrew.

Abra o Terminal e execute o seguinte comando:

```bash
brew tap redmagikarp13/simpletranscribe https://github.com/redmagikarp13/simpletranscribe
brew install --cask simpletranscribe
```

O aplicativo `SimpleTranscribe.app` será instalado na sua pasta de **Aplicativos** (`/Applications`). Você já pode abri-lo pelo Launchpad ou pelo Spotlight!

### Solução de Problemas (Gatekeeper)
Como o aplicativo ainda não possui uma assinatura paga de desenvolvedor da Apple (Notarization), ao tentar abri-lo pela primeira vez, o macOS pode mostrar uma mensagem de que o app "está danificado" ou "não pode ser aberto porque o desenvolvedor não pode ser verificado".

Para contornar isso com segurança, rode o seguinte comando no Terminal para remover a quarentena do aplicativo:

```bash
xattr -cr /Applications/SimpleTranscribe.app
```

Depois, basta abrir o app normalmente!

## Funcionalidades

- **100% Nativo:** Desenvolvido em SwiftUI para a melhor performance e integração com o macOS.
- **Aceleração por GPU:** Utiliza o WhisperKit (baseado no MLX da Apple) para transcrever áudios de forma incrivelmente rápida usando a GPU dos processadores M1/M2/M3.
- **Suporte Multilíngue:** Detecta e transcreve em dezenas de idiomas diferentes.
- **Privacidade Total:** Tudo roda offline, diretamente no seu hardware.

## Para Desenvolvedores

Se quiser rodar o projeto a partir do código-fonte, certifique-se de ter o macOS 14.0+ e o Xcode instalados.

1. Clone o repositório:
```bash
git clone https://github.com/redmagikarp13/simpletranscribe.git
cd simpletranscribe
```

2. Compile e execute:
```bash
swift build -c release
```

## Licença

Distribuído sob a licença MIT.
