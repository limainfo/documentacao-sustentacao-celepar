# 📘 Manual de Uso Rápido dos Templates – Sustentação GARH / CELEPAR

Este manual explica quando e como usar cada template CELEPAR durante o processo de sustentação do sistema.

---

# 1. Visão Geral do Fluxo

Fluxo típico de sustentação:

**Ticket → Análise → Especificação → Desenvolvimento → Testes → Entrega**

Abaixo, o mapeamento oficial entre cada fase e os templates CELEPAR, considerando a estrutura real da pasta:

| Fase                                  | Template CELEPAR                                                                                                                                                                                 |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Início da Análise**                 | [`MANTIS-1234-01-revisao-requisitos.odt`](docs/MANTIS-1234-01-revisao-requisitos.odt?raw=1) <br> *(Se necessário: complementos)*                                                             |
| **Especificação da Solução**          | [`MANTIS-1234-02-solicitacao-mudanca.odt`](docs/MANTIS-1234-02-solicitacao-mudanca.odt?raw=1) <br> *(Opcional: [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt?raw=1))* |
| **Planejamento dos Testes**           | [`MANTIS-1234-04-plano-testes.odt`](docs/MANTIS-1234-04-plano-testes.odt?raw=1) + [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt?raw=1)                          |
| **Preparação da Massa de Dados**      | Dentro de [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt?raw=1)                                                                                                      |
| **Entendimento do Processo / Regras** | [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt?raw=1)                                                                                                                      |
| **Mudanças de UI/Tela**               | [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt?raw=1) (Seção “Protótipos”)                                                                                                 |

---

### ✔ Arquivos complementares (usados quando necessário)

| Tipo                            | Arquivo                                                                                                                   |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Complemento de Pré-Projeto      | [`MANTIS-1234-01-complemento-pre-projeto.odt`](docs/MANTIS-1234-01-complemento-pre-projeto.odt?raw=1)                 |
| Contagem Indicativa             | [`MANTIS-1234-01-complemento-contagem-indicativa.ods`](docs/MANTIS-1234-01-complemento-contagem-indicativa.ods?raw=1) |
| Contagem do Projeto             | [`MANTIS-1234-01-complemento-contagem-projeto.ods`](docs/MANTIS-1234-01-complemento-contagem-projeto.ods?raw=1)       |
| Complemento Lista de Requisitos | [`MANTIS-1234-02-complemento-lista-requisitos.odt`](docs/MANTIS-1234-02-complemento-lista-requisitos.odt?raw=1)       |
| Protótipo AXURE                 | [`CELEPAR_AXURE_EXAMPLE.rp`](docs/CELEPAR_AXURE_EXAMPLE.rp?raw=1)                                                     |
| Biblioteca AXURE                | [`CELEPAR_AXURE_TEMPLATE.rplib`](docs/CELEPAR_AXURE_TEMPLATE.rplib?raw=1)                                             |

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

* [`MANTIS-1234-01-revisao-requisitos.odt`](docs/MANTIS-1234-01-revisao-requisitos.odt?raw=1)
* [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt?raw=1)

---

## ✔ Alteração de Regra de Negócio

Inclua:

* [`MANTIS-1234-01-revisao-requisitos.odt`](docs/MANTIS-1234-01-revisao-requisitos.odt?raw=1)
* [`MANTIS-1234-02-solicitacao-mudanca.odt`](docs/MANTIS-1234-02-solicitacao-mudanca.odt?raw=1)
* [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt?raw=1)
* [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt?raw=1)

Se novos requisitos surgirem:

* [`MANTIS-1234-02-complemento-lista-requisitos.odt`](docs/MANTIS-1234-02-complemento-lista-requisitos.odt?raw=1)

---

## ✔ Alteração de Tela

Inclua:

* [`MANTIS-1234-03-caso-uso.odt`](docs/MANTIS-1234-03-caso-uso.odt?raw=1) (protótipos)
* [`CELEPAR_AXURE_EXAMPLE.rp`](docs/CELEPAR_AXURE_EXAMPLE.rp?raw=1) — opcional

---

## ✔ Alterações com SQL complexo

Inclua:

* [`MANTIS-1234-05-casos-teste.odt`](docs/MANTIS-1234-05-casos-teste.odt?raw=1)

Se houver impacto em cálculos:

* [`MANTIS-1234-01-complemento-contagem-projeto.ods`](docs/MANTIS-1234-01-complemento-contagem-projeto.ods?raw=1)
* [`MANTIS-1234-01-complemento-contagem-indicativa.ods`](docs/MANTIS-1234-01-complemento-contagem-indicativa.ods?raw=1)

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
## **ANEXO – PROCESSO DE ATENDIMENTO DE DEMANDAS**
---
### **1. PRAZO PARA INÍCIO DO ATENDIMENTO DA DEMANDA (PIAD)**

**1.1** O Prazo para Início do Atendimento da Demanda (PIAD) é o intervalo de tempo compreendido entre a liberação da demanda para a **CONTRATADA** e o efetivo início do atendimento.

**1.2** O prazo para início do atendimento da demanda, em se tratando de **requisições**, será de **02 (dois) dias úteis**, contados a partir da liberação da Ordem de Serviço para a **CONTRATADA**.

**1.3** O prazo para início de atendimento de **incidentes** está descrito na **TABELA DE INCIDENTES (item 3)**.
---

### **2. PRAZO DE RESOLUÇÃO DAS DEMANDAS (PRD)**

**2.1** O Prazo de Resolução das Demandas (PRD) é o intervalo de tempo que a **CONTRATADA** possui para a **entrega efetiva da solução da demanda**.

**2.1.1** O prazo para resolução da demanda, em se tratando de **requisições**, deverá ser registrado pela **CONTRATADA** no momento da abertura da Ordem de Serviço, devendo ser considerado o prazo previsto para início do atendimento (**02 dias úteis**) para fins de definição do PRD.
Este prazo poderá ser negociado entre as partes, prevalecendo, em caso de divergência, o prazo definido pela **CONTRATANTE**.

**2.1.2** O prazo para resolução de **incidentes** está descrito na **TABELA DE INCIDENTES (item 3)**.
---

### 3. TABELA DE INCIDENTES

| Severidade | Escopo | PIAD | PRD |
|-----------|--------|------|-----|
| **01** | Um problema que tenha um impacto crítico na capacidade da CONTRATANTE em manter o sistema ativo. Um número significativo de usuários da solução PROPOSTA é incapaz de executar adequadamente as suas tarefas. O sistema está inoperante ou severamente degradado. | Em até **1 hora** corrida após o registro da demanda | Em até **4 horas** corridas após o registro da demanda |
| **02** | Um problema que tenha um impacto na capacidade da CONTRATANTE em manter o sistema ativo, cuja severidade seja significativa, porém não crítica, que possa ser de natureza repetitiva. O funcionamento do sistema é afetado, mas o desempenho não foi severamente degradado. | Em até **2 horas** corridas após o registro da demanda | Em até **8 horas** corridas após o registro da demanda |
| **03** | Um problema pontual que não cause impacto na capacidade operacional da CONTRATANTE em manter o sistema ativo. Ex.: Uma funcionalidade apresentando defeito em situações específicas, limitando seu uso. | Em até **4 horas** corridas após o registro da demanda | Em até **24 horas** corridas após o registro da demanda |
| **04** | Um problema que não afeta o desempenho e/ou disponibilidade dos sistemas usados eventualmente ou temporariamente. | Em até **8 horas** corridas após o registro da demanda | Em até **36 horas** corridas após o registro da demanda |
