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
6. Secure Development (Desarrollo seguro) + Threat modelling (Modelo de amenazas)
7. Cultura laboral

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

La respuesta es [OWASP](https://owasp.org/)

--

🐝

--

(Perdón, no había emoji de avispa)

---

# Static Code Analysis

## OWASP

- **O**pen **W**eb **A**pplication **S**ecurity **P**roject 🐝
- Hacen: Application Security Research
    - Catalogar, documentar y transmitir información para entender y prevenir vulnerabilidades
- The good guys 🦸‍♀️🦸‍♂️🦸
- [OWASP TOP 10](https://owasp.org/Top10/)

---

# Static Code Analysis

## Anatomía de una vulnerabilidad

- Common Weakness Enumeration: **CWE**
  - Catalogar "debilidades"
  - Ejemplo: _CWE-787: Out-of-bounds Write_

--

- Common Vulnerabilities and Exposures: **CVE**
  - Catalogar Vulnerabilidades específicas
  - Ejemplo: _CVE-2021-35212: An SQL injection Privilege Escalation Vulnerability was discovered in the Orion Platform reported by the ZDI Team_

--

- Common Vulnerability Scoring System **CVSS**
  - 0 a 10. None (0), Low (0.1-3.9), Mid (4.0-6.9), High (7.0-8.9), Critical (9.0-10.0)
  - Puntaje del impacto de una vulnerabilidad 😱 basado en multiples factores
  - Ejemplo: _CVE-2021-35212 tiene un puntaje de 9.0_

---

# Cumplimiento de Normativas de Seguridad (Security Compliance Checks)

> Cómo todo en la ingeniería...

--

_DEPENDE_

--

Las empresas tienen sus propios sistemas de compliance

Suelen ser basados en la industria a la que pertenecen (bancaria, industrial, servicios, etc.)

---

# Security Compliance Checks

En el caso de DevOps pueden ser políticas cómo:

--

- Taggear rescuros apropiadamente

--

- Mantener imágenes de contenedores sin vulnerabilidades

--

- prevenir automáticamente el uso de paquetes con vulnerabilidades

--

- Multi Facot authenticatioin para dispositivos

--

- Encipción de bases de datos

--

- Entrenamientos

--

- Políticas de "4+ eyes principle"

--

- ETC...