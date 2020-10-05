!classDefinition: #AlejandroElEncargado category: 'PrimerClase'!
DenotativeObject subclass: #AlejandroElEncargado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AlejandroElEncargado class' category: 'PrimerClase'!
AlejandroElEncargado class
	instanceVariableNames: ''!

!AlejandroElEncargado class methodsFor: 'as yet unclassified' stamp: 'SF 10/1/2020 21:28:46'!
saludoCon: unSaludo

	^unSaludo, ' Sergio'! !


!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase'!
GuardiaDeSkyrim class
	instanceVariableNames: 'cantidadDeVecesQueHablaronConmigo frasesDelGuardia'!

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AH 10/4/2020 23:17:25'!
contestarSegunCantidadDeVecesQueHablaronConmigo
	| respuesta |
	respuesta := frasesDelGuardia at: (	cantidadDeVecesQueHablaronConmigo min: (frasesDelGuardia size)).
	^respuesta.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AH 10/4/2020 23:07:52'!
conversar
	self recordarQueConversaronConmigo.
	^self contestarSegunCantidadDeVecesQueHablaronConmigo ! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AH 10/4/2020 23:25:11'!
frasesDelGuardia
	"Aqui se guardan todas las frases del guardia"
	frasesDelGuardia := #('Hola, bienvenido!!' 'Hola de nuevo!!' '¿Otra vez aquí?' 'Ya me cansé de verte').
	! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AH 10/4/2020 23:29:43'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeVecesQueHablaronConmigo := 8.
	frasesDelGuardia := #('Hola, bienvenido!!' 'Hola de nuevo!!' '¿Otra vez aquí?' 'Ya me cansé de verte' ).! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AH 10/4/2020 23:25:05'!
recordarQueConversaronConmigo
	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1.
! !

GuardiaDeSkyrim initializeAfterFileIn!