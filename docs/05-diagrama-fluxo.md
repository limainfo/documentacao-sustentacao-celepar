# 🔀 Diagrama de Fluxo – Processo / Regra de Negócio
**Sistema:**  
**Módulo:**  
**Ticket Mantis:**  
**Data:**  
**Responsável:**  

---

## 1. Objetivo do Fluxo
Explique qual processo ou regra está sendo representado (ex.: fluxo de atendimento, cálculo de valor, integração etc.).

---

## 2. Diagrama (Mermaid)

```mermaid
flowchart TD
    A[Início] --> B[Receber Ticket no Mantis]
    B --> C[Análise Técnica]
    C --> D{Alteração Necessária?}
    D -->|Sim| E[Desenvolver Correção]
    D -->|Não| F[Encerrar Ticket]
    E --> G[Testar em DEV/HMG]
    G --> H{Teste OK?}
    H -->|Sim| I[Homologação Usuário]
    H -->|Não| C
    I --> J[Planejar Implantação]
    J --> K[Implantar em Produção]
    K --> L[Fim]
```

Altere o diagrama conforme o fluxo específico da demanda.

---

## 3. Descrição do Fluxo
Descreva os principais passos, decisões e caminhos alternativos.

---

## 4. Pontos Críticos / Riscos
- Regras sensíveis:  
- Dependências críticas:  
- Integrações envolvidas:  

---

## 5. Observações Finais
