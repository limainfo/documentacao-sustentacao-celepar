# 📘 Tutorial Operacional – Telemetria — Criação de bases

## 🔑 Fluxo padrão de acesso

```bash
ssh evaldo.lima.ext@172.19.28.18
sudo su
```

> A partir daqui, **todos os comandos são executados como root**
> **Não sair dessa origem**

---

## Dados do chamado

* **CLIENTE:** `ROBERTO MARANESI CAIXETA`
* **LOGIN (chamado):** ``

  * ( **PLACA** obrigatória para telemetria)

---

## 1️⃣ Verificar contrato e telemetria no banco central

* **Origem:** `172.19.28.18 (root)`
* **Destino:** PostgreSQL em `172.19.12.50`

### Comando

```bash
psql -h 172.19.12.50 -d bdcentral
```

### Consulta

```sql
select csclioid,
       csclinome,
       csusu_usuario,
       csusu_senha,
       case when csclisistemafonte = '1'
            then 'INTRANET'
            else 'PORTAL OPERACOES'
       end as csclisistemafonte,
       vscconoid as contrato,
       vscveiplaca,
       case when vsctelemetria = 't'
            then 'INSTALADA'
            else 'Sem Telemetria'
       end as vsctelemetria
from cliente_sincroniza
left join veiculo_sincroniza
       on csclioid = vscconclioid
where csclinome ilike '%ROBERTO MARANES%';
```

### Resultado

```text
csclioid|csclinome               |csusu_usuario|csusu_senha|csclisistemafonte|contrato  |vscveiplaca|vscveioid|vsctelemetria |
--------+------------------------+-------------+-----------+-----------------+----------+-----------+---------+--------------+
   79336|ROBERTO MARANESI CAIXETA|RMC          |RMC102829@ |INTRANET         |1051819731|TWY7G91-1  |  2259824|Sem Telemetria|
   79336|ROBERTO MARANESI CAIXETA|RMC          |RMC102829@ |INTRANET         |1051819732|TXQ9H64-1  |  2259823|Sem Telemetria|
   79336|ROBERTO MARANESI CAIXETA|RMC          |RMC102829@ |INTRANET         |1051819729|FLR0C31-1  |  2259826|Sem Telemetria|
   79336|ROBERTO MARANESI CAIXETA|RMC          |RMC102829@ |INTRANET         |1051819502|FLR0C31-4  |  1482140|INSTALADA     |
   79336|ROBERTO MARANESI CAIXETA|RMC          |RMC102829@ |INTRANET         |1051819505|TXQ9H64-3  |  2242309|INSTALADA     |
   79336|ROBERTO MARANESI CAIXETA|RMC          |RMC102829@ |INTRANET         |1051819504|TWY7G91-2  |  2213280|INSTALADA     |
   79336|ROBERTO MARANESI CAIXETA|RMC          |RMC102829@ |INTRANET         |1051819497|OXC8C61-3  |   789536|Sem Telemetria|
   79336|ROBERTO MARANESI CAIXETA|RMC          |RMC102829@ |INTRANET         |1051819503|RME0A65-3  |  1578512|Sem Telemetria|
```

### ✔️ Validar

* Telemetria = **INSTALADA**
* Anotar:

  * **CLIOID** `79336`

  * **LOGIN** `RMC`

  * **SENHA** `RMC102829@`

  * **CONTRATO** `1051819504`
    **PLACA** `TWY7G91-2`

  * **CONTRATO** `1051819502`
    **PLACA** `FLR0C31-4`

  * **CONTRATO** `1051819505`
    **PLACA** `TXQ9H64-3`

**OBS:** É importante verificar no caso de 2 Clioids diferentes qual a origem deles, quando a origem é INTRANET, você pode acessar o link da Intranet `https://intranet.sascar.com.br/index.php` Cadastro/Localização Web e consultar pelo nome para ver as informações completas. É necessário acessar o **BASE DADOS** `172.19.12.6` e alterar o campo `csclinome` colocando um `(.)` ponto final no fim do nome. Se a origem for **PORTAL OPERACOES**, você pode acessar o link do Portal de Operações `https://operationsportal.sascar.com.br/` Custumer/Cliente e consultar pelo nome para ver as informações completas. É necessário acessar o **ENTERPRISE** `172.19.12.19` e alterar o campo `cusname` colocando um `(.)` ponto final no fim do nome. O sincronismo dessas alterações pode demorar até **15 min**!

❌ Se não houver telemetria **INSTALADA** → **interromper**

---

## Links úteis

* `https://avl.sascar.com.br/pages/relatorio/historico/historicoPosicao.jsf`  (verifica recepção dados da telemetria)
* `https://telemetria.sascar.com.br/telemetria`  (cadastro da base do cliente para criação - cuidado com o destino geral, geral2, geral5, etc)
* `https://intranet.sascar.com.br/analise_telemetria.php`  (confirmação da criação da base)

---

## 2️⃣ Verificar base existente (Admin)

🔗 `https://telemetria.sascar.com.br/telemetria/admin/`
**User:** `adm`
**Pass:** `javanaveia`

Pesquisar por:
**Base Cliente → <login> `RMC`**

Registrar:

* Base existente? **SIM / NÃO**

### Lista Bases Clientes

```text
Login	
RMC
Base	
Selecione a base
 
Login	Nome	Base
ARMCARGO	ARM CARGO ( ARGENTINA)	telemetria_gerenciadoras
ARMCARGO1	ARM-CARGO	telemetria_gerenciadoras
HRMC	HRMC - TRANSPORTES LTDA - EPP	telemetria_geral
RMC983	RMC TRANSPORTES EIRELI	telemetria_geral3
```

* Base existente?  `NÃO**`
* verificar se a base já não existe, se não existir, cadastrar o cliente dentro de `"Base Cliente > Novo"`.
* **BASE:** `TELEMETRIA_GERAL5` (varia conforme a tag disponível pela torre)

```text
RMC	ROBERTO MARANESI CAIXETA	telemetria_geral5
```

---

## 3️⃣ Verificar CLIOID no telemetria_geral5 (execução remota como root)

**telemetria_geral =** `172.19.12.131`
**telemetria_geral2 =** `172.19.12.133`
**telemetria_geral3 =** `172.19.12.135`
**telemetria_geral5 =** `172.19.12.137`


* **Servidor remoto:** `172.19.12.137`
* **Usuário:** `evaldo.lima.ext`
* **Privilégio:** `root`

### 🔍 Verificar arquivo de configuração (máx. 20 itens no último idclienteXX separados por vírgula)

**Comando:**

```bash
ssh -t evaldo.lima.ext@172.19.12.137 "sudo -S cat /sistemas/etc/sincronizacao_telemetria_geral5/telemetria.cfg"
```

**Resultado:**

```text
id_cliente15=12345,12354,12453
```

Se ultrapassar 20 vírgulas, parar e avisar ao pessoal **BASE_TELEMETRIA** que ultrapassou o limite.

### PASSOS EXTRAS

**1A** – Se os campos do `telemetria.cfg` estiverem "cheios", ou seja, com 20 clioid na mesma linha é necessário efetuar os seguintes passos:

* Abrir o arquivo `telemetria.cfg` com um `vi`: `vi telemetria.cfg`
* Copiar a última linha, que está “cheia” (SEM OS CLIOID'S) e colar na nova linha que você criou logo abaixo.
* Salvar o arquivo;

**2A** – Abrir o arquivo `sincroniza_telemetria_lib.tcl` com um `vi` e pesquisar qual foi a última linha inclusa;

* Ex: No nosso caso seria a linha `"15"` (que consta no `telemetria.cfg`), pesquisa-se esta linha e inclui após o campo `le_id_cliente15` a palavra `le_id_cliente16`, e assim consecutivamente quando necessário;
* Pesquisando por `id_cliente15` serão exibidos 5 campos, e em todos eles é necessário incluir o `id_cliente16` (Sempre copiando a informação anterior);

**3A** – Incluir o id_cliente atual no arquivo `sincronizacao_telemetria.tcl`:

* Da mesma forma que o passo anterior, é necessário incluir o `id_cliente16` nos locais que são necessários.
* Neste arquivo há 3 campos a serem incluídos. (Sempre copiando a informação anterior).

Concluídos esses passos, basta voltar ao **Processo Normal[1]**.

---

### Incluir o novo cliente

* **COMANDO PARA EXECUÇÃO DO SCRIPT DE CRIAÇÃO**
  Altere o `'BLUE TIPPERS SEQ PTY LTD'` pelo nome do cliente e o `1051624101` por um termo com telemetria do cliente.
  **Termo =** (campo contrato da consulta inicial dessa página)

**Comando:**

```bash
ssh -t evaldo.lima.ext@172.19.12.137 "sudo -S bash /sistemas/etc/sincronizacao_telemetria_geral5/novo_cliente_telemetria_geral5.sh 'ROBERTO MARANESI CAIXETA' 1051819504 testar"
```

**Resultado:**

```text
#####################################################
#           Notificacao de Seguranca                #
# Acesso restrito apenas para usuarios autorizados. #
# Todas as atividades neste servidor estao sendo    #
# monitoradas!                                      #
#####################################################

evaldo.lima.ext@172.19.12.137's password:
Your password will expire in 2 days.
[sudo] password for evaldo.lima.ext:
Your password will expire in 2 days.
Cliente encontrado ID:  79336  |  ROBERTO MARANESI CAIXETA
CONTRATO: 1051819504
Placa:  TWY7G91-2
Iniciando backup
Fazendo backup para $folderbkp/telemetria.cfg
Iniciando alteracoes

##############################################################
###Funcao: alterar_telemetria_cfg:  79336 | ROBERTO MARANESI CAIXETA
##############################################################
String valida:  475665,483650,261565,483657,48163
Linha a ser alterada de  /sistemas/etc/sincronizacao_telemetria_geral5/telemetria.cfg : 875
Adicionando linha de comentario apos linha: 825
Nova Linha: # 79336 | ROBERTO MARANESI CAIXETA

##############################################################
###Funcao: testar:  79336 | ROBERTO MARANESI CAIXETA
##############################################################
******************Testando Nova Telemetria*******************
Nao existem dados na telemetria_sistema da corporativa. Inserindo dados. Sera necessario aguardar sincronizacao
INSERT 0 1
psql: error: connection to server at "172.19.12.51", port 5432 failed: FATAL:  conversion between LATIN9 and LATIN1 is not supported
Veitelemetria:
Aviso: Veitelemetria falsa na gerenciadora ou veiculo inexistente. Favor verificar cadastro do veiculo na gerenciadora
Equipamento cadastrado: 1319122
Sincronizando dovia
Fim sincronismo dovia
Erro ao gerar telemetria, clioid: 79336 nao encontrado em /tmp/out_teste_telemetria.txt
```

---

### 🔎 Confirmar inclusão do cliente

```bash
ssh -t evaldo.lima.ext@172.19.12.137 "sudo -S cat -n /sistemas/etc/sincronizacao_telemetria_geral5/telemetria.cfg| grep <cod_cliente> || echo \"CLIOID nao encontrado apos execucao\"'"
```

❌ Se não aparecer → **parar e analisar logs**

---

### 🔎 Verificar se o CLIOID já existe e se o grupo atingiu 290 itens

```bash
ssh -t evaldo.lima.ext@172.19.12.137 "sudo -S su -c 'cat -n /sistemas/etc/sincronizacao_telemetria_geral5/telemetria.cfg | grep 79336 || echo \"CLIOID 79336 nao encontrado.\"'"
```

```text
CLIOID 79336 nao encontrado.
```

**Comando:**

```bash
vim /sistema/etc/cfg/telemetria.cfg
```

**Resultado (base conforme telemetria_geral5 e ip 172.19.12.137):**

```ini
[telemetria_geral5_novo1]
bdstring = host=172.19.12.137 dbname=telemetria_geral5 user=consumer_fila password=c0ns4i connect_timeout=60
clioid = 0
geroid = 0
exige_clientes = " 413099 ... 48163 "
```

**Resultado (após modificação):**

```ini
# 79336 | ROBERTO MARANESI CAIXETA


[telemetria_geral5_novo1]
bdstring = host=172.19.12.137 dbname=telemetria_geral5 user=consumer_fila password=c0ns4i connect_timeout=60
clioid = 0
geroid = 0
exige_clientes = " 413099 ... 48163 79336 "
```

**IMPORTANTE:** Se atentar ao limite de **290 clioid por grupo** (bloco `-[nome_bloco]` - exige clientes). Se passar dessa quantidade os dados de telemetria deixam de ser gravados para os clientes.

### ✔️ Validar

* Limite do servidor: **290 CLIOIDs**
* Se já existir → **não inserir novamente**

---

## 4️⃣ Interromper service `mtelemetria_filad.service`

* **Servidor local:** `172.19.28.18 (root)`

```bash
systemctl stop mtelemetria_filad.service
systemctl status mtelemetria_filad.service


systemctl start mtelemetria_filad.service
systemctl status mtelemetria_filad.service
```

---

## 5⃣ Verificações finais

* Login na Telemetria (usuário: `RMC`, login: `adm`, senha:`RMC102829@`):

  * 🔗 `https://telemetria.sascar.com.br/telemetria/pages/login.jsf`

* Consulta da placa `<veiplaca>` (testar as placas inicialmente obtidas que possuem telemetria instalada)

* AVL Relatórios → Histórico de posições (placa/identificação -> pesquisar desde o início do mês atual) - dados telemetria em tempo real:

  * 🔗 `https://avl.sascar.com.br/pages/relatorio/historico/historicoPosicao.jsf`

* Intranet (placa -> pesquisar - evidência para finalizar Jira):

  * 🔗 `https://intranet.sascar.com.br/analise_telemetria.php`

---

## 📄 Texto padrão – Resposta ao atendimento

```text
Criada a base e sincronizada com sucesso.
Os dados de acesso são os mesmos do SASWEB – usuário: RMC.

<dados https://intranet.sascar.com.br/analise_telemetria.php>

Dados Cliente
Cliente: ROBERTO MARANESI CAIXETA	Placa: FLR0C31-4	Equipamento: MSC_830_A_T6
Base: telemetria_geral5	Contrato: 1051819502	Período: 10/01/2026 até 12/01/2026
Modelo: FH-540 6X4 2P (DIESEL) (E5)	Marca: VOLVO	ISV: ISV VRT


At.te,
Responsável pela resolução do ticket
```
