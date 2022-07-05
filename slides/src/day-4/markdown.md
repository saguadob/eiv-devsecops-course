class: center, middle

# Día 4
SRE

---

# Agenda

1. Introducción Conferencistas
2. Tématicas del curso
3. ...

---

.left-column[
Intro SRE
]
.right-column[
## Qué es SRE?
_Site Reliability Engineering_
.center[
  <iframe width="560" height="315" src="https://www.youtube.com/embed/uTEL8Ff1Zvk?cc_lang_pref=es&cc_load_policy=1" title="What's the Difference Between DevOps and SRE? (class SRE implements DevOps)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  ]
]

???
# 20 minutos
---
.left-column[
Intro SRE
]
.right-column[
# El sysadmin tradicional
]

???
# 15 minutos
---
.left-column[
Intro SRE
]
.right-column[
# Recap Devops
- Reduce Silos
- Accidents Are Normal
- Change Should Be Gradual
- Tooling and Culture Are Interrelated
- Measurement Is Crucial
]
???
# 15 minutos
---
.left-column[
Intro SRE
]
.right-column[
## El rol del Ingeniero de Resiliencia
- DevSecOps son prácticas y principios
- SRE es un rol de trabajo, que utiliza un conjunto de prácticas y principios.

> Discusión: En Colombia existe el Ingeniero DevOps como profesión. Qué pasa con el Ingeniero de Resiliencia?
]
???
# 10 minutos
---
.left-column[
Intro SRE
]
.right-column[
# Extrapolación de prácticas
- OPS es un problema de Software
- Administrar basado en Niveles de Servicio Objetivos (_SLO_)
- Trabajar para minimizar el _trabajo arduo_ (_toil_)
- Agiliddad basada en reducir el coste de error
- Compartir responsabilidades con los desarrolladores
]
???
# 20 minutos
---
.left-column[
Intro SRE
]
.right-column[
# Fundamentos
- Implementar Indicadores de Servicio
- Monitoreo
- Alertas basadas en Indicadores de Servicio
- Eliminar el trabajo arduo
- Simplicidad
???
# 5 minutos
---
.left-column[
SLOs
]
.right-column[
# Indicadores de Servicio
## Por qué son necesarios
- Los ingenieros son recursos escasos
- Nuevos projectos VS Cuidar lo existente
- Tomar decisiones informadas
  - Cuidar el servicio a corto plazo
  - Mantener o mejorar el indicador a mediano y largo plazo
## Línea de inicio
- Madurez de un sistema:
  - Greenfield
  - Greenfield en producción sin expectativas
  - Brownfield sin entendimiento de como mejorar su servicio
- Meta:
  - Todos los interesados (_stakeholders_) aprueban indicadores
  - Responsables de cuidar el indcador saben que lo pueden lograr con normalidad.
  - La organización toma enserio los indicadores para tomar decisiones.
  - Hay procesos para _esculpir_ los indicadores.

]
???
# 15 minutos
> Otherwise, you won’t be able to adopt an error budget–based approach to reliability. SLO compliance will simply be another KPI (key performance indicator) or reporting metric, rather than a decision-making tool.
---
.left-column[
SLO's
]
.right-column[
## Definiciones
- SLO _Service Level Objective_
  Nivel de fiabilidad/resiliencia de un servicio que utiliza un cliente. Expresado en `%`.
  - ⬆️ 🙂 / ⬇️ 😟
  - __Nunca 100%__
- SLI _Service Level Indicator_
  - Es el `qué` se va a medir con un SLO
      - Llamados HTTP exitosos
      - Consultas a base de datos exitosas
      - Correos de confirmación de pago enviados exitosamente
  - Normalmente se mide como la relación:  
      $$\frac{\text{número de eventos buenos}}{\text{total de eventos}}$$
- SLA _Service Level Agreement_
  - Contrato que estipula el mínimo SLO en una `ventana` de tiempo estipulada
  - Define las consecuencias de no cumplir el SLO estipulado
    - Económicas
    - Legales
]
???
# 15 minutos
---
.left-column[
SLO
]
.right-column[
## Definiciones
- 
]
???
# ? minutos

---
.left-column[

]
.right-column[
## 
]
???
# ? minutos

---
.left-column[

]
.right-column[
## 
]
???
# ? minutos

---