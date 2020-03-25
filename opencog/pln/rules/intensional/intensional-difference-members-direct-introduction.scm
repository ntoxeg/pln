;; Rule for introducing
;;
;; MemberLink
;;   X
;;   IntensionalDifferenceLink
;;     A
;;     B
;;
;; based on the direct evidence of patterns of A and B, and
;; the intensional difference between them.
;;
;; IntensionalDifferenceLink
;;   A
;;   B
;; AttractionLink
;;   A
;;   X
;; AttractionLink
;;   B
;;   X
;; |-
;; MemberLink <TV>
;;   X
;;   IntensionalDifferenceLink
;;     A
;;     B

;; Rule
(define intensional-difference-members-direct-introduction-rule
  (let* ((A (Variable "$A"))
         (B (Variable "$B"))
         (X (Variable "$X"))
         (CT (Type "ConceptNode")))
    (Bind
      (VariableSet
        (TypedVariable A CT)
        (TypedVariable B CT)
        (TypedVariable X CT))
      (And
        (Present
          (IntensionalDifference A B)
          (Attraction A X)
          (Attraction B X)))
      (ExecutionOutput
        (GroundedSchema "scm: intensional-difference-members-direct-introduction")
        (List
          ;; Conclusion
          (Member X (IntensionalDifference A B))
          ;; Premise
          (IntensionalDifference A B))))))

;; Formula
(define (intensional-difference-members-direct-introduction conclusion premise)
  ;; Given two concepts A and B, return the attraction link
  ;;
  ;; Attraction <TV>
  ;;   A
  ;;   B
  (define (get-attraction A B)
    (cog-link 'AttractionLink A B))

  ;; Given an attraction link, return the strength which is
  ;; the product of the mean and the confidence of the TV on
  ;; on the attraction link
  ;;
  ;; Attraction <TV>
  ;;   A
  ;;   B
  (define (get-pattern-strength at)
      (if (null? at) 0 (* (cog-mean at) (cog-confidence at))))

  ;; Given the attraction links of A and B, calculate the
  ;; strength of the TV expressed as
  ;;
  ;; min(attraction(A,X), 1 - attraction(B,X))
  ;;
  ;; where the attraction(A,X) is the strength of the TV of
  ;;
  ;; Attraction <TV>
  ;;   A
  ;;   X
  (define (get-strength A-at B-at)
    (min (cog-mean A-at) (- 1 (get-pattern-strength B-at))))

  ;; Given the attraction links of A and B, calculate the
  ;; confidence of the TV expressed as
  ;;
  ;; min(attraction(A,X), attraction(B,X))
  ;;
  ;; where the attraction(A,X) is the confidence of the TV of
  ;;
  ;; Attraction <TV>
  ;;   A
  ;;   X
  (define (get-confidence A-at B-at)
    (min (cog-confidence A-at) (cog-confidence B-at)))

  (let* ((MembLink conclusion)
         (A (gar premise))
         (B (gdr premise))
         (memb (gar MembLink))
         (A-at (get-attraction A memb))
         (B-at (get-attraction B memb))
         (TVs (get-strength A-at B-at))
         (TVc (get-confidence A-at B-at))
         (TV (stv TVs TVc)))
    (if (< 0 TVc) (cog-merge-hi-conf-tv! MembLink TV))))

; Name the rule
(define intensional-difference-members-direct-introduction-rule-name
  (DefinedSchemaNode "intensional-difference-members-direct-introduction-rule"))
(DefineLink intensional-difference-members-direct-introduction-rule-name
  intensional-difference-members-direct-introduction-rule)
