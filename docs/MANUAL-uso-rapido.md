# 📘 Manual de Uso Rápido dos Templates

Este manual explica **quando** e **como** usar cada modelo deste repositório.

---

## 1. Visão Geral do Fluxo

Fluxo típico de sustentação:

> Ticket → Análise → Desenvolvimento → Testes → Entrega

Mapeamento dos documentos:

| Fase                   | Documento                                   |
|------------------------|---------------------------------------------|
| Início da Análise      | `01-analise-impacto.md`                     |
| Especificação da Solução | `02-change-request-historia-usuario.md`   |
| Planejamento dos Testes | `03-cenarios-teste.md`                     |
| Preparação da Massa    | `04-massa-dados.md`                         |
| Entendimento do Processo/Regra | `05-diagrama-fluxo.md`              |
| Mudanças de UI/Tela    | `06-prototipo-tela.md`                      |

---

## 2. Como Usar na Prática – Exemplo por Ticket

Suponha que você receba o ticket **MANTIS-1234**.

Sugestão de organização:

```text
sustentacao/
└─ MANTIS-1234-correcao-erro-x/
   ├─ analise-impacto-MANTIS-1234.md
   ├─ change-request-MANTIS-1234.md
   ├─ cenarios-teste-MANTIS-1234.md
   ├─ massa-dados-MANTIS-1234.md
   ├─ diagrama-fluxo-MANTIS-1234.md
   └─ prototipo-tela-MANTIS-1234.md
```

Você pode:
- Copiar os templates de `docs/`
- Renomear com o número do ticket
- Preencher apenas os relevantes à demanda

---

## 3. Dicas de Preenchimento

- **Se o ticket é muito simples (ex.: ajuste de texto):**  
  Use apenas:
  - `01-analise-impacto.md` (bem resumido)
  - `03-cenarios-teste.md` (1 ou 2 cenários simples)

- **Se houver alteração de regra de negócio:**  
  Inclua:
  - `01-analise-impacto.md`
  - `02-change-request-historia-usuario.md`
  - `05-diagrama-fluxo.md`
  - `03-cenarios-teste.md`

- **Se houver alteração de tela:**  
  Inclua também:
  - `06-prototipo-tela.md`

- **Se houver consultas/updates mais complexos em banco:**  
  Use:
  - `04-massa-dados.md`

---

## 4. Boas Práticas Gerais

- Sempre referencie o **Ticket Mantis** no topo de cada documento.
- Use linguagem clara e objetiva (pense que outro analista pode ler isso no futuro).
- Registre **decisões** (por que você escolheu uma solução e não outra).
- Quando possível, inclua **evidências de teste** (prints, logs, etc.).
- Versione tudo em Git (histórico é ouro em sustentação).

---

## 5. Ajustes à Realidade da Empresa

Quando tiver acesso ao **PDS – Processo de Desenvolvimento de Sistemas CELEPAR** ou a modelos internos:

- Adapte títulos e numeração de seções conforme o padrão oficial.
- Inclua logotipo, rodapé ou informações institucionais se necessário.
- Caso haja códigos de documentos (ex.: “DOC-ANL-001”), adicione-os aos títulos.

Este repositório foi pensado para ser um **ponto de partida profissional** e facilmente adaptável a padrões internos.
