(define (domain Farmer)
	(:requirements :strips)
	(:predicates (IS-FOX ?x) (IS-GOOSE ?x) (IS-BEANS ?x) (IS-FARMER ?x) (onLeft ?x))

	(:action cross :parameters (?x)
		:precondition (and (IS-GOOSE ?x) (onLeft ?x) (onLeft farmer))
		:effect (and (not (onLeft ?x)) (not (onLeft farmer))))

	(:action cross :parameters (?x)
		:precondition (and (IS-GOOSE ?x) (not (onLeft ?x)) (not (onLeft farmer)))
		:effect (and (onLeft ?x) (onLeft farmer)))

	(:action cross :parameters (?x)
		:precondition (and (IS-FOX ?x) (onLeft ?x) (onLeft farmer) (not (and (onLeft beans) (onLeft goose))))
		:effect (and (not (onLeft ?x)) (not (onLeft farmer))))

	(:action cross :parameters (?x)
		:precondition (and (IS-FOX ?x) (not (onLeft ?x)) (not (onLeft farmer)) (not (and (not (onLeft beans)) (not (onLeft goose)))))
		:effect (and (onLeft ?x) (onLeft farmer)))

	(:action cross :parameters (?x)
		:precondition (and (IS-BEANS ?x) (onLeft ?x) (onLeft farmer) (not (and (onLeft fox) (onLeft goose))))
		:effect (and (not (onLeft ?x)) (not (onLeft farmer))))

	(:action cross :parameters (?x)
		:precondition (and (IS-BEANS ?x) (not (onLeft ?x)) (not (onLeft farmer)) (not (and (not (onLeft fox)) (not (onLeft goose)))))
		:effect (and (onLeft ?x) (onLeft farmer)))

	(:action cross :parameters (?x)
		:precondition (and (IS-FARMER ?x) (onLeft ?x) (not (and (onLeft fox) (onLeft goose))) (not (and (onLeft beans) (onLeft goose))))
		:effect (not (onLeft ?x)))

	(:action cross :parameters (?x)
		:precondition (and (IS-FARMER ?x) (not (onLeft ?x)) (not (and (not (onLeft fox)) (not (onLeft goose)))) (not (and (not (onLeft beans)) (not (onLeft goose)))))
		:effect (onLeft ?x))
)

         




