# Documentação de Sustentação – Modelo Padrão

Este repositório contém modelos de documentação em **Markdown** para uso em atividades de **sustentação de sistemas**, seguindo boas práticas de grandes empresas de TI e alinhado ao ciclo:

> Ticket → Análise → Desenvolvimento → Testes → Entrega

## 📂 Estrutura

- `docs/01-analise-impacto.md`  
- `docs/02-change-request-historia-usuario.md`  
- `docs/03-cenarios-teste.md`  
- `docs/04-massa-dados.md`  
- `docs/05-diagrama-fluxo.md`  
- `docs/06-prototipo-tela.md`  
- `docs/MANUAL-uso-rapido.md`  

## ✅ Como usar

1. Ao receber um ticket no Mantis, crie uma pasta ou arquivo por demanda (ex.: `SISXPTO-1234/`).
2. Copie os templates necessários de `docs/` para a pasta da demanda.
3. Preencha somente o que for aplicável à solicitação.
4. Versione as alterações normalmente (Git).

Sugestão de uso por fase:

- **Início da análise** → `01-analise-impacto.md`
- **Definição da solução** → `02-change-request-historia-usuario.md`
- **Preparação de testes** → `03-cenarios-teste.md` + `04-massa-dados.md`
- **Documentação de fluxo/regra** → `05-diagrama-fluxo.md`
- **Alterações de tela/UI** → `06-prototipo-tela.md`

Mais detalhes em: `docs/MANUAL-uso-rapido.md`.


Perfeito! Segue o texto **formatado de forma técnica, padronizada e pronta para uso em documentação oficial (Markdown ou Word)**:

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

