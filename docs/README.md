# 📘 Manual de Uso Rápido dos Templates – Sustentação GARH / CELEPAR

Este manual explica quando e como usar cada template CELEPAR durante o processo de sustentação do sistema.

---

# 1. Visão Geral do Fluxo

Fluxo típico de sustentação:

**Ticket → Análise → Especificação → Desenvolvimento → Testes → Entrega**

Abaixo, o mapeamento oficial entre cada fase e os templates CELEPAR, considerando a estrutura real da pasta:

| Fase                                  | Template CELEPAR                                                                                                                                                                                 |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Início da Análise**                 | [`MANTIS-1234-01-revisao-requisitos.odt`](docs/MANTIS-1234-01-revisao-requisitos.odt) <br> *(Se necessário: complementos)*                                                             |
| **Especificação da Solução**          | [`MANTIS-1234-02-solicitacao-mudanca.odt`](docs/MANTIS-1234-02-solicitacao-mudanca.odt) <br> *(Opcional: [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt))* |
| **Planejamento dos Testes**           | [`MANTIS-1234-04-plano-testes.odt`](docs/MANTIS-1234-04-plano-testes.odt) + [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt)                          |
| **Preparação da Massa de Dados**      | Dentro de [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt)                                                                                                      |
| **Entendimento do Processo / Regras** | [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt)                                                                                                                      |
| **Mudanças de UI/Tela**               | [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt) (Seção “Protótipos”)                                                                                                 |

---

### ✔ Arquivos complementares (usados quando necessário)

| Tipo                            | Arquivo                                                                                                                   |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Complemento de Pré-Projeto      | [`MANTIS-1234-01-complemento-pre-projeto.odt`](docs/MANTIS-1234-01-complemento-pre-projeto.odt)                 |
| Contagem Indicativa             | [`MANTIS-1234-01-complemento-contagem-indicativa.ods`](docs/MANTIS-1234-01-complemento-contagem-indicativa.ods) |
| Contagem do Projeto             | [`MANTIS-1234-01-complemento-contagem-projeto.ods`](docs/MANTIS-1234-01-complemento-contagem-projeto.ods)       |
| Complemento Lista de Requisitos | [`MANTIS-1234-02-complemento-lista-requisitos.odt`](docs/MANTIS-1234-02-complemento-lista-requisitos.odt)       |
| Protótipo AXURE                 | [`CELEPAR_AXURE_EXAMPLE.rp`](docs/CELEPAR_AXURE_EXAMPLE.rp)                                                     |
| Biblioteca AXURE                | [`CELEPAR_AXURE_TEMPLATE.rplib`](docs/CELEPAR_AXURE_TEMPLATE.rplib)                                             |

Esses arquivos são usados **apenas quando a mudança requer levantamento aprofundado**, não em sustentação simples.

---

# 2. Exemplo de Estrutura por Ticket

Se você receber o ticket **MANTIS-1234**, organize assim:

```
sustentacao/
└─ MANTIS-1234-correcao-erro-x/
   ├─ MANTIS-1234-01-revisao-requisitos.odt
   ├─ MANTIS-1234-01-complemento-pre-projeto.odt
   ├─ MANTIS-1234-01-complemento-contagem-indicativa.ods
   ├─ MANTIS-1234-01-complemento-contagem-projeto.ods
   ├─ MANTIS-1234-02-solicitacao-mudanca.odt
   ├─ MANTIS-1234-02-complemento-lista-requisitos.odt
   ├─ MANTIS-1234-03-caso-uso.odt
   ├─ MANTIS-1234-04-plano-testes.odt
   ├─ MANTIS-1234-05-casos-teste.odt
   ├─ MANTIS-1234-prototipo.rp        (opcional)
   ├─ MANTIS-1234-biblioteca.rplib    (opcional)
   └─ MANTIS-1234-evidencias/
```

---

### Como usar:

* Copie os templates de `docs/`
* Renomeie usando o número do ticket
* Inclua complementos somente quando necessário
* Sempre mantenha clara a relação entre ticket → artefatos

---

# 3. Dicas de Preenchimento

## ✔ Tickets Simples (ex.: ajuste de texto)

Use apenas:

* [`MANTIS-1234-01-revisao-requisitos.odt`](docs/MANTIS-1234-01-revisao-requisitos.odt)
* [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt)

---

## ✔ Alteração de Regra de Negócio

Inclua:

* [`MANTIS-1234-01-revisao-requisitos.odt`](docs/MANTIS-1234-01-revisao-requisitos.odt)
* [`MANTIS-1234-02-solicitacao-mudanca.odt`](docs/MANTIS-1234-02-solicitacao-mudanca.odt)
* [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt)
* [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt)

Se novos requisitos surgirem:

* [`MANTIS-1234-02-complemento-lista-requisitos.odt`](docs/MANTIS-1234-02-complemento-lista-requisitos.odt)

---

## ✔ Alteração de Tela

Inclua:

* [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt) (protótipos)
* [`CELEPAR_AXURE_EXAMPLE.rp`](docs/CELEPAR_AXURE_EXAMPLE.rp) — opcional

---

## ✔ Alterações com SQL complexo

Inclua:

* [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt)

Se houver impacto em cálculos:

* [`MANTIS-1234-01-complemento-contagem-projeto.ods`](docs/MANTIS-1234-01-complemento-contagem-projeto.ods)
* [`MANTIS-1234-01-complemento-contagem-indicativa.ods`](docs/MANTIS-1234-01-complemento-contagem-indicativa.ods)

---

# 4. Boas Práticas

* Sempre cite o número do ticket no topo dos arquivos
* Utilize linguagem clara e direta
* Documente decisões importantes
* Inclua evidências (prints, logs, SQL, data/hora)
* Versione tudo no Git — **histórico é ouro em sustentação**

---

# 5. Adaptação ao PDS-CELEPAR

Quando necessário:

* Ajuste títulos e numeração conforme padrão CELEPAR
* Insira logotipo institucional quando requerido
* Utilize códigos internos (ex.: ANL-001, SOL-002…)
* Arquivos “complemento” seguem ordem e nomenclatura do PDS

Este repositório é um ponto de partida profissional, padronizado e alinhado ao PDS-CELEPAR.

---
