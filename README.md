# 🌟 Projeto Sensores em Dart – Dashboard Textual

![Dart](https://img.shields.io/badge/Dart-Blue?style=flat\&logo=dart) ![Status](https://img.shields.io/badge/Status-Funcional-green)

## 📝 Descrição

Este projeto simula sensores de **temperatura**, **umidade** e **luminosidade (LDR)** em Dart, gerando leituras periódicas e exibindo um **dashboard textual** em tempo real. O sistema calcula **estatísticas do último minuto** e mostra a **leitura atual** atualizada a cada 1 segundo.

O objetivo é praticar **List, Map e funções em Dart**, além de desenvolver um painel textual simples e funcional.

---

## 🗂 Estrutura do Projeto

```
/projeto_sensores
 ├── sensores.dart    # Simula sensores e gera leituras atuais
 ├── utils.dart       # Funções auxiliares: min, max, média
 ├── dashboard.dart   # Exibe leitura atual + estatísticas do último minuto
 └── main.dart        # Integra todos os módulos e controla a atualização
```

---

## ⚙ Funcionalidades

* Geração de **leituras simuladas** de sensores:

  * Temperatura: 20–35 °C
  * Umidade: 40–80 %
  * Luminosidade (LDR): 0–1000
* Atualização da **leitura atual** a cada 2 segundos
* Cálculo e exibição das **estatísticas do último minuto**:

  * Min, Max e Média de cada sensor
* Dashboard textual no console mostrando os dados em tempo real

---

## 🧑‍💻 Como rodar

1. Instale o **Dart SDK**: [https://dart.dev/get-dart](https://dart.dev/get-dart)
2. Clone este repositório:

```bash
git clone https://github.com/joaoaugusto-dev/atividade-pi-05092025
```

3. Navegue até a pasta do projeto:

```bash
cd projeto_sensores/bin
```

4. Execute o programa:

```bash
dart main.dart
```

---

## 🔧 Arquivos e responsabilidades

| Arquivo        | Responsável | Função                                                             |
| -------------- | ----------- | ------------------------------------------------------------------ |
| sensores.dart  | Kauan Leandrini    | Gera leituras simuladas de sensores (Map com data/hora e valores)  |
| utils.dart     | Isadora Cabral    | Funções auxiliares: calcular min, max e média                      |
| dashboard.dart | João Augusto de Freitas    | Exibe no console leitura atual e estatísticas do último minuto     |
| main.dart      | Everson Chagas    | Integra todos os módulos e controla ciclo de atualização a cada 2s |

---

## 🚀 Exemplo de saída no console

```
================ DASHBOARD SENSORES ================
 Leituras acumuladas: 3
====================================================
Selecione uma opção:
 1. Ver estatísticas de Temperatura
 2. Ver estatísticas de Umidade
 3. Ver estatísticas de Lux
 4. Ver todas as estatísticas
 0. Sair

Digite o número da opção desejada:
```

---

## 📅 Cronograma e divisão de tarefas

* **Kauan Leandrini (sensores.dart)** – Geração de leituras simuladas
* **Isadora Cabral (utils.dart)** – Funções de cálculo
* **João Augusto de Freitas (dashboard.dart)** – Dashboard e estruturação geral
* **Everson Chagas (main.dart)** – Integração e controle do ciclo de leitura

---

## 📌 Tecnologias utilizadas

* [Dart](https://dart.dev/) – Linguagem principal
* Conceitos: List, Map, funções, Timer, Console Output
