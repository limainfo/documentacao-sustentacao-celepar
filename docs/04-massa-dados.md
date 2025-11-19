# 🗃️ Massa de Dados
**Sistema:**  
**Ticket Mantis:**  
**Data:**  
**Responsável pela Massa:**  

---

## 1. Objetivo
Descrever os dados necessários para a execução dos cenários de teste desta demanda.

---

## 2. Massa de Dados Utilizada

| Tipo / Entidade | Valor / Exemplo      | Observação                    |
|-----------------|----------------------|-------------------------------|
| CPF             | 000.000.000-00       | CPF válido de teste           |
| ID Cliente      | 12345                | Registro previamente criado   |
| Status          | ATIVO / INATIVO      | Usado nos cenários 1 e 2      |
| Código Produto  | PROD-001             | Produto parametrizado         |

Adapte conforme o contexto do sistema.

---

## 3. Scripts SQL

### 3.1 Criação / Preparação
```sql
-- Exemplo:
-- INSERT INTO cliente (id, nome, cpf, status)
-- VALUES (12345, 'Cliente Teste', '00000000000', 'ATIVO');
```

### 3.2 Limpeza / Rollback
```sql
-- Exemplo:
-- DELETE FROM cliente WHERE id = 12345;
```

---

## 4. Dependências de Dados
- Tabelas relacionadas:  
- Chaves estrangeiras importantes:  
- Dados que não podem ser alterados:  

---

## 5. Observações Finais
Inclua qualquer detalhe relevante (uso de dados mascarados, cuidados com PRD, etc.).
