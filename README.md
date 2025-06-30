# 🧪 Projeto de Testes Automatizados com Robot Framework

Este projeto utiliza o **Robot Framework** para automação de testes, com foco em APIs. As bibliotecas utilizadas incluem:

- `Collections` (nativa)
- `JSONLibrary` (para manipulação de JSON)

---

## 📦 Instalação

### 1. Pré-requisitos

- Python 3.7+
- `pip` instalado

### 2. Instalar o Robot Framework
```bash
pip install robotframework
```

### 3. Para executar testes em ambiente local e guardar log na pasta logs

```bash
robot --outputdir logs test/api 
```
### 4. Para executar testes via pipeline no GitHub Actions 
# 1. A pipeline é gatilhada quando é realizado um Pull Request para a branch main
# 2. Após o PR ser mergeado, o workflow é iniciado automaticamente pelo GitHub, sendo possível acompanhar através da interface do Github no menu Actions 
# 3. O workflow é executado e ao clicar em seu nome, é possível ver todos os stages realizados assim como os artefatos da execução armazenados.
