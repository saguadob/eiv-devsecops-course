class: center, middle

# dev__SEC__ops

## Seguridad

---

# Agenda

1. Análisis estático de Código Fuente (Static Analysis)
2. Cumplimiento de normativas de Seguridad (Security Compliance checks)
3. Detección activa de vulnerabilidades (Vulnerability detection)
4. Protección en la cadena de suministros (Supply Chain Protections)
5. Cómo mitigar todas de las anteriores
6. Cultura laboral
7. Secure Development (Desarrollo seguro) + Threat modelling (Modelo de amenazas)

---

# A Análisis estático de Código Fuente (Static Analysis)

Es como un `linter`

--

pero mas sabroso 🌮

---

# A Análisis estático de Código Fuente (Static Analysis)

## Sabores 🍬

Hay principalmente dos:

1. Integrado (como un `linter`)

--

2. Estático (se corre una vez el código esta hecho, como las pruebas)

--

  - 😐 Antes: Commit → Build → Test → Deploy

--

  - 😊 Ahora: Commit → **Secure** → Build → Test → Deploy

---

# Static Code Analysis

## Ejemplos - Integrados

- [SonarLint](https://www.sonarlint.org/vscode)

  .img-75[![Sonar](https://sonarcloud.io//images/marketing/sonarlint-presentation/detect-issue.png)]


---

# Static Code Analysis

## Ejemplos - Estáticos

- [SonarQ](https://sonarcloud.io/)

  .img-50[![Sonar](https://sonarcloud.io/images/marketing/features/risk-analysis.png)]

- [GitHub CodeQL](https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/about-code-scanning)

---

# Static Code Analysis

Pero ¿cómo funcionan?

La respuesta es OWASP

--

🐝

--

(Perdón, no había emoji de avispa)