class: center, middle

# DevSecOps y SRE

## para el diseño , desarrollo y operaciónd e sistemas de información modernos.

---

layout: false
.left-column[
  ## Quién soy?
]
.right-column[

- Sebastián Aguado Bedoya

- Egresado de la ECI del programa de Ingeniería de Sistemas

- +10 años de experiencia en Desarrollo de Software, +4 ãnos de experiencia en DevOps

- _Senior Cloud Engineer_ en Neptune Software AS

- Touch support for smart phones and pads, i.e. swipe to navigate slides

.footnote[.red[*] At least browsers try their best]
]

# Acerca del curso

- Este es el material  del curso porque
- 
---

# Agenda Día 1

- Historía de DevOps
- Dónde empezar.


---

# Historía de DevSecOps



---
.left-column[
  # Dónde empezar?
  ## Flujos de Valor (_Value Stream_)
]
.right-column[

- Hacer el ejercicio de _Value Stream Mapping_

- Qué parte del sistema genera valor al cliente?

- Generar iniciativas
  - (_ej._) Eliminar testing como una fase, incuirlo al día a dia
  - (_ej._) Reducir el tiempo ed despliegues

- __Objetivo__: Incrementar la productividad del equipo de desarrollo

]

???
# 20 minutos
- Value Stream: Desde que una idea se concibe hasta que está a manos del cliente.
- Cliente: Quién se beneficia del sistema

---
.left-column[
  # Dónde empezar?
]
.right-column[
## Tipos de Projectos

- Greenfield: Empezar desde 0
- Brownfield: Proyectos que ya tienen madures.

### Claves para transformación
- Escoger personas simpatéticas e innovadoras
- Crecer de manera __silenciosa__
- Convencer a los opositores.
]
???

---

.left-column[
# Dónde empezar
]
.right-column[
## Cómo fomentar la _evolución_ del flujo de Valor
1. Estar de acuerdo en una meta en común
2. Planear mejoras a corto plazo
3. Usar 20% del ciclo de dessarrollo para reducir la _deuda técnica_.
4. Usar las herramientas apropiadas para alcanzar el estado desdeado.
    _The righ tools for the right job_
]

???
1. Ejemplos de metas comunes
  - Reduce the percentage of the budget spent on product support and unplanned work by 50%.
  - Ensure lead time from code check-in to production release is one week or less for 95% of changes.
  - Ensure releases can always be performed during normal business hours with zero downtime.
  - Integrate all the required information security controls into the deployment pipeline to pass all required compliance requirements.
---
.left-column[
Diseño del equipo
]
.right-column[
  ![:scale 100%](../img/dia1_equipo.png)
- Desarrollo, Testing, Operaciones y Seguridad es parte del trabajo de cada miembro. Un equipo de generalistas
- Incluir _Ops_ en todos los días del desarrollo
  - Self-service
  - Tener un miembro dedicado ó alquilado del equipo _OPS_
  - OPS debe ser integrado en los rituales DEV (sprint planning, retro, etc)
]

???
Un equipo puede ser como un producto de Azure
Las tareas de OPS deben aparecer en el tablero kanban
---
.left-column[
DEV
]
.right-column[
- Obtener código fuente
- Cómo contribuir?
- Entornos de desarrollo efímeros
- Greenfield / Brownfield
- Flujos de desarrollo
  - Gitflow
  - Githubflow
- Controles locales
- Contribuir a _trunk_
- Colaboración basada en _Pull Request_
- CI/CD
- Actividades adicionales de desarrollo
- Intro a Infrastructure as Code
- Desarrollo a base de incremento de valor
- Extra: 12 factor development
]
---
.left-column[
# DEV
]
.right-column[
## Obtener código fuente
- Sistema de versionamiento de Código (_VCS Version Control System)
  - GIT
  - Subversion
  - Team Foundation
- Arquitectura de VCS
  - Monorepo
  - Múltiples repositorios
]

???
# 5 - 10 min
- Comentar experiencia con herramientas como Github, GitLab, Az Devops
- Empezar con uno solo, y luego transicionar a múltiples.
- Recomendar usar GIT y sus variaciones
---
.left-column[
DEV
]
.right-column[
# Cómo contribuir al código fuente?
]

???
# 5 min
---