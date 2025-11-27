# Passo a passo: Integração do projeto **garh** com o SonarQube

## 1. Criar o projeto no SonarQube
```yaml
version: "3.8"

services:
  sonarqube-db:
    image: postgres:14-alpine
    container_name: sonarqube-db
    restart: unless-stopped
    environment:
      POSTGRES_USER: sonar
      POSTGRES_PASSWORD: sonar
      POSTGRES_DB: sonarqube
    volumes:
      - postgresql_data:/var/lib/postgresql/data
    networks:
      - sonarnet

  sonarqube:
    image: sonarqube:latest
    container_name: sonarqube
    restart: unless-stopped
    ports:
      - "9000:9000"
    environment:
      SONAR_JDBC_URL: jdbc:postgresql://sonarqube-db:5432/sonarqube
      SONAR_JDBC_USERNAME: sonar
      SONAR_JDBC_PASSWORD: sonar
      SONAR_ES_BOOTSTRAP_CHECKS_DISABLE: "true"
    volumes:
      - sonarqube_data:/opt/sonarqube/data
      - sonarqube_logs:/opt/sonarqube/logs
      - sonarqube_extensions:/opt/sonarqube/extensions
    networks:
      - sonarnet
    depends_on:
      - sonarqube-db

volumes:
  postgresql_data:
  sonarqube_data:
  sonarqube_logs:
  sonarqube_extensions:

networks:
  sonarnet:
    driver: bridge
```
```cmd
docker compose up -d
```

1. Acesse: `http://localhost:9000/projects`
2. Clique em **Create Project**.
3. Selecione **Local Project**.

### 1.1. Configurar os dados do projeto

Preencha o formulário **Create a local project**:

- **Project display name\***: `garh`  
- **Project key\***: `br.gov.pr.celepar:garh`  
- **Main branch name\***: `master`

Clique no botão **NEXT**.

Na tela seguinte, mantenha **“Follows the instance’s default”**.

Clique em **CREATE PROJECT**.

---

## 2. Gerar o token do projeto

1. Na tela de **Link Locally**, selecione **Provide a token**.
2. Em **Generate a project token**, escolha:
   - **Token name\***: `Analyze "garh"`
   - **Expires in**: `No expiration`
3. Clique em **GENERATE**.
4. Copie o token exibido (ele será usado no comando Maven).
5. Clique em **CONTINUE**.
6. Na etapa de escolha do método de análise, clique em **MAVEN**.

---

## 3. Ajustar o Maven para aceitar repositórios HTTP (apenas uma vez)

1. Descubra o caminho do Maven:

```cmd
   where mvn
````

Exemplo de saída:

```text
C:\Program Files\apache-maven-3.9.8\bin\mvn
```

2. Abra o arquivo de configuração global:

   ```text
   C:\Program Files\apache-maven-3.9.8\conf\settings.xml
   ```

3. Procure pelo bloco:

   ```xml
   <mirror>
     <id>maven-default-http-blocker</id>
     <mirrorOf>external:http:*</mirrorOf>
     <name>Pseudo repository to mirror external repositories initially using HTTP.</name>
     <url>http://0.0.0.0/</url>
   </mirror>
   ```

4. **Comente ou remova** esse `<mirror>...</mirror>`.

5. Salve o arquivo.

6. Feche todos os terminais abertos.

7. Abra **um novo Prompt de Comando** (não use PowerShell).

---

## 4. Executar a análise com Maven

1. Abra o **Prompt de Comando**.

2. Vá até a pasta do projeto:

   ```cmd
   D:\Documentos\HITSS\garh
   ```

3. Execute o comando abaixo (ajuste o token, se necessário):

   ```cmd
   mvn clean verify sonar:sonar   -Dsonar.projectKey=br.gov.pr.celepar:garh  -Dsonar.projectName=garh   -Dsonar.host.url=http://localhost:9000   -Dsonar.token=sqp_TOKENID
   ```

4. Ao final da execução, o Maven exibirá uma URL com o resultado da análise.
   Abra essa URL no navegador para visualizar o relatório do SonarQube para o projeto **garh**.
