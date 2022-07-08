class: center, middle

# Día 4
SRE

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
- Encargado de desplegar software a diferentes entornos
- _Corren_ el servicio y responden
- Al ser un paradigma, es fácil encontrar talento.
- Un sysadmin no tiene la necesidad de reinventar, usa un arsenal de herramientas con excelencia.
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
# El rol del Ingeniero de Resiliencia
- DevSecOps son prácticas y principios
- SRE es un rol de trabajo, que utiliza un conjunto de prácticas y principios.

> Discusión: En Colombia existe el Ingeniero DevOps como profesión. Qué pasa con el Ingeniero de Resiliencia?

## Objetivo Ideal (_propusto por Google_)
- Un ing. de Resiiencia tiene un % de trabajo operativo
- El otro porcentaje es trabajo de desarrollo de software enfocado a OPS
- Un SRE intenta con software reducir el % de trabajo operativo

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
]
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
]

---
.left-column[
SLOs
]
.right-column[
# Indicadores de Servicio
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
# Definiciones
- SLO _Service Level Objective_
  Nivel de fiabilidad/resiliencia de un servicio utilizado un cliente. Expresado en `%`.
  - ⬆️ 🙂 / ⬇️ 😟
  - __Nunca 100%__
- SLI _Service Level Indicator_
  - Es el `qué` se va a medir con un SLO
      - Llamados HTTP exitosos
      - Consultas a base de datos exitosas
      - Correos de confirmación de pago enviados exitosamente
  - Normalmente se mide como la relación:  
      $$\frac{\text{número de eventos buenos}}{\text{total de eventos}}$$

]
???
# 15 minutos
---
.left-column[
SLO's
]
.right-column[
# Definiciones
- Fallo presupuestado _Error Budget_  
  `(100 - SLO)`%
- SLA _Service Level Agreement_
  - Contrato que estipula el mínimo SLO en una `ventana` de tiempo estipulada
  - Define las consecuencias de no cumplir el SLO estipulado
    - Económicas
    - Legales
]
???
# ? minutos
---
.left-column[
SLO's
]
.right-column[
# SLI
- Especificación:  
  > Se espicifica como una valoración de una característica de un servicio sin importar como se mide  
  `Porcentaje de peticiones http que cargaron en < 100 ms`
- Implementación
  > Es la especificación y el cómo se mide  
  `Porcentaje de peticiones http que cargaron en < 100 ms, medido por el cliente web usando un framework de telemetria`
- Escoger apropiada
  - Comunes: Disponibilidad, latencia
  - Otras: Durabilidad, Integridad, etc
- Escoger fuente apropiada de información
  > Ej. Logs de un balanceador de carga
]
???
# ? minutos
---
.left-column[
SLO
]
.right-column[
# Cómo escoger el primer SLO
- Acumular métricas durante un tiempo prolongado
- Aplicar fórmula `# buenos / # total`
- Ese es el primer SLO
- De ahora en adelante solo pude mejorar
- Ejemplo de [documento de SLO](https://sre.google/workbook/slo-document/)
]
???
# ? minutos
---
.left-column[
SLO
]
.right-column[
# Ventana de tiempo apropiada
- Rolling window
- Ventana de calendario
- Empatar con ventanas del negocio
- Rolling de 4 semanas es un buen inicio
]
???
# ? minutos
---
.left-column[
SLO
]
.right-column[
# Acuerdo con los interesados
- Error Budget policy  
  [Documento Ejemplo](https://sre.google/workbook/error-budget-policy/)
- El SLO debe crear satisfacción a los usuarios.
# Extras
- Usar reportes y tableros de control
- Mejorar los SLO es una tarea constnte
- tomar decisiones basadas en SLO's y Error budget
- [Explicación visual](https://www.youtube.com/watch?v=y2ILKr8kCJU)
]
???
# ? minutos
---
.left-column[
Monitoreo
]
.right-column[
# Caracteristias de una etrategia de monitoreo
- Velocidad
- Calculaciones
- Interfaz (gráficos)
- Alertas

## Recomendaciones
- Consistencia / repetición
- No atarse a un sola solución
]
???
# ? minutos

---

.left-column[
Monitoreo
]
.right-column[
# Métricas

- Cómo escogerlas?
  - Que demuestren cambio intencionado
  - Medición de dependencias
  - Saturación

## Métricas segun capa
- RED
- USE
]
???
# ? minutos

---

.left-column[
Monitoreo
]
.right-column[
## Tipos de monitoreo
- Black box
- White box
## Alertas basada en SLO's
Diferentes condiciones que hacen que se dispare una alerta
Usar los tipos usados en esta [guía](https://sre.google/workbook/alerting-on-slos/)
]
???
# ? minutos

---

.left-column[
Monitoreo
]
.right-column[
# Servicios con poco volumen de tráfico
- Generar tráfico sintético
- Combinar servicios
- Cambiar la naturaleza de los servicios
  - Fallos tolerables
  - Tolerar un mayor fallo presupuestado
- Bajar el SLO o aumentar la ventana
]
???
# ? minutos

---
.left-column[
Monitoreo
]
.right-column[
# Alertas a gran escala
- Ningun servicio requiere sus propios parametros
- Clasificar en categorias 

## Ejemplo
Categroias recomnedadas por Google
https://sre.google/workbook/alerting-on-slos/
]
???
# ? minutos

---

.left-column[
Toil
]
.right-column[
# Trabajo arduo
- Manual
- Repetitivo
- Se puede automatizar
- Espontaneo
- No tiene valor a largo plazo
- Crece a la misma velocidad que la causa del trabajo
]

???
# ? minutos

---

.left-column[
Toil
]
.right-column[
# Medición del trabajo arduo _toil_
- Análisis costo beneficio de intentar removerlo
- Usar principios DevSecOps!
![:scale 80%](https://lh3.googleusercontent.com/Nf3p898ln4j5W6RgFYMy1KUKZ_j7NutXzM0BWdp1lEDdncBjOBGR15XsXRPNxRhE9_s6Be1Y8Y24Ep9L909k2j8EEJwgVAFluEctpA=s878)
]

???
# ? minutos

---

.left-column[
Toil
]
.right-column[
# Tipos de trabajo
- Procesos de negocio
- Interrupciones producción
- Cuidar los lanzamientos
- Migraciones
- Planeación de ingeniería
- Troubleshooting
]

???
# ? minutos
---

.left-column[
Toil
]
.right-column[
# Gestion del trabajo arduo
- Idenntificacion y Medición
- Eliminar la causa del trbajo
- Rechazarlo (_data driven_)
- Usar SLO's
- Empezar con trabajo con _origen humano_
- Self-Service
- Promover la reducción como una cracteristica
- Cautela al automatizar (_safe programming_)
- Retroalimentación
]
???
# ? minutos
---

.left-column[
Simplicidad
]
.right-column[
# Objetivo final
Un sistema simple tiene dos caracteristicas
- Falla menos
- Fallos son fáciles de reparar

## Medir complejidad
- Tiempo de capacitación
- Tiempo de explicación
- Diversidad adinistrativa
- Diversidad de configuración
- Edad
]

???
# ? minutos
---

.left-column[
Simplicidad
]
.right-column[
- Los sistemas no nacen complejos, creen organicamente
- Ningún equipo de producto tiene visión holística
- SRE es quién ve un solo sistema _end to end_

# Prácticas simples
- SRE hace diagramas de todo un sistema y los comparte
- SRE revisa todos los documentos de diseño, si un nuevo sistema / componente crea complejidad, SRE promueve alternativas
]

???
# ? minutos
---
