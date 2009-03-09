; This file contains basic scheme wrappers for atom creation.
;
(define (Node . x)
	(apply cog-new-node (append (list 'Node) x)))
(define (Link . x)
	(apply cog-new-link (append (list 'Link) x)))
(define (ConceptNode . x)
	(apply cog-new-node (append (list 'ConceptNode) x)))
(define (NumberNode . x)
	(apply cog-new-node (append (list 'NumberNode) x)))
(define (OrderedLink . x)
	(apply cog-new-link (append (list 'OrderedLink) x)))
(define (UnorderedLink . x)
	(apply cog-new-link (append (list 'UnorderedLink) x)))
(define (SetLink . x)
	(apply cog-new-link (append (list 'SetLink) x)))
(define (SubsetLink . x)
	(apply cog-new-link (append (list 'SubsetLink) x)))
(define (ListLink . x)
	(apply cog-new-link (append (list 'ListLink) x)))
(define (MemberLink . x)
	(apply cog-new-link (append (list 'MemberLink) x)))
(define (AndLink . x)
	(apply cog-new-link (append (list 'AndLink) x)))
(define (OrLink . x)
	(apply cog-new-link (append (list 'OrLink) x)))
(define (NotLink . x)
	(apply cog-new-link (append (list 'NotLink) x)))
(define (FalseLink . x)
	(apply cog-new-link (append (list 'FalseLink) x)))
(define (TrueLink . x)
	(apply cog-new-link (append (list 'TrueLink) x)))
(define (ForallLink . x)
	(apply cog-new-link (append (list 'ForallLink) x)))
(define (ExistLink . x)
	(apply cog-new-link (append (list 'ExistLink) x)))
(define (ScholemLink . x)
	(apply cog-new-link (append (list 'ScholemLink) x)))
(define (ContextLink . x)
	(apply cog-new-link (append (list 'ContextLink) x)))
(define (ImplicationLink . x)
	(apply cog-new-link (append (list 'ImplicationLink) x)))
(define (VariableNode . x)
	(apply cog-new-node (append (list 'VariableNode) x)))
(define (VariableScopeLink . x)
	(apply cog-new-link (append (list 'VariableScopeLink) x)))
(define (EvaluationLink . x)
	(apply cog-new-link (append (list 'EvaluationLink) x)))
(define (AssociativeLink . x)
	(apply cog-new-link (append (list 'AssociativeLink) x)))
(define (InheritanceLink . x)
	(apply cog-new-link (append (list 'InheritanceLink) x)))
(define (SimilarityLink . x)
	(apply cog-new-link (append (list 'SimilarityLink) x)))
(define (ExtensionalInheritanceLink . x)
	(apply cog-new-link (append (list 'ExtensionalInheritanceLink) x)))
(define (ExtensionalSimilarityLink . x)
	(apply cog-new-link (append (list 'ExtensionalSimilarityLink) x)))
(define (IntensionalInheritanceLink . x)
	(apply cog-new-link (append (list 'IntensionalInheritanceLink) x)))
(define (IntensionalSimilarityLink . x)
	(apply cog-new-link (append (list 'IntensionalSimilarityLink) x)))
(define (ProcedureNode . x)
	(apply cog-new-node (append (list 'ProcedureNode) x)))
(define (GroundedProcedureNode . x)
	(apply cog-new-node (append (list 'GroundedProcedureNode) x)))
(define (GroundedPredicateNode . x)
	(apply cog-new-node (append (list 'GroundedPredicateNode) x)))
(define (GroundedSchemaNode . x)
	(apply cog-new-node (append (list 'GroundedSchemaNode) x)))
(define (SchemaNode . x)
	(apply cog-new-node (append (list 'SchemaNode) x)))
(define (PredicateNode . x)
	(apply cog-new-node (append (list 'PredicateNode) x)))
(define (SatisfyingSetLink . x)
	(apply cog-new-link (append (list 'SatisfyingSetLink) x)))
(define (SchemaExecutionLink . x)
	(apply cog-new-link (append (list 'SchemaExecutionLink) x)))
(define (SchemaEvaluationLink . x)
	(apply cog-new-link (append (list 'SchemaEvaluationLink) x)))
(define (ExecutionLink . x)
	(apply cog-new-link (append (list 'ExecutionLink) x)))
(define (ExecutionOutputLink . x)
	(apply cog-new-link (append (list 'ExecutionOutputLink) x)))
(define (PredictiveImplication . x)
	(apply cog-new-link (append (list 'PredictiveImplication) x)))
(define (TailPredictiveImplication . x)
	(apply cog-new-link (append (list 'TailPredictiveImplication) x)))
(define (SequentialAndLink . x)
	(apply cog-new-link (append (list 'SequentialAndLink) x)))
(define (SimultaneousAndLink . x)
	(apply cog-new-link (append (list 'SimultaneousAndLink) x)))
(define (EventualSequentialAND . x)
	(apply cog-new-link (append (list 'EventualSequentialAND) x)))
(define (EventualSequentialImplication . x)
	(apply cog-new-link (append (list 'EventualSequentialImplication) x)))
(define (HypotheticalLink . x)
	(apply cog-new-link (append (list 'HypotheticalLink) x)))
(define (MixedImplicationLink . x)
	(apply cog-new-link (append (list 'MixedImplicationLink) x)))
(define (ExtensionalImplicationLink . x)
	(apply cog-new-link (append (list 'ExtensionalImplicationLink) x)))
(define (EquivalenceLink . x)
	(apply cog-new-link (append (list 'EquivalenceLink) x)))
(define (ExtensionalEquivalenceLink . x)
	(apply cog-new-link (append (list 'ExtensionalEquivalenceLink) x)))
(define (DistinguishedNode . x)
	(apply cog-new-node (append (list 'DistinguishedNode) x)))
(define (CountLink . x)
	(apply cog-new-link (append (list 'CountLink) x)))
(define (WordNode . x)
	(apply cog-new-node (append (list 'WordNode) x)))
(define (ReferenceLink . x)
	(apply cog-new-link (append (list 'ReferenceLink) x)))
(define (DocumentNode . x)
	(apply cog-new-node (append (list 'DocumentNode) x)))
(define (SentenceNode . x)
	(apply cog-new-node (append (list 'SentenceNode) x)))
(define (ParseNode . x)
	(apply cog-new-node (append (list 'ParseNode) x)))
(define (ParseLink . x)
	(apply cog-new-link (append (list 'ParseLink) x)))
(define (WordInstanceNode . x)
	(apply cog-new-node (append (list 'WordInstanceNode) x)))
(define (WordInstanceLink . x)
	(apply cog-new-link (append (list 'WordInstanceLink) x)))
(define (FeatureNode . x)
	(apply cog-new-node (append (list 'FeatureNode) x)))
(define (FeatureLink . x)
	(apply cog-new-link (append (list 'FeatureLink) x)))
(define (LinkGrammarRelationshipNode . x)
	(apply cog-new-node (append (list 'LinkGrammarRelationshipNode) x)))
(define (LinkGrammarDisjunctNode . x)
	(apply cog-new-node (append (list 'LinkGrammarDisjunctNode) x)))
(define (DefinedLinguisticConceptNode . x)
	(apply cog-new-node (append (list 'DefinedLinguisticConceptNode) x)))
(define (DefinedLinguisticRelationshipNode . x)
	(apply cog-new-node (append (list 'DefinedLinguisticRelationshipNode) x)))
(define (DefinedFrameNode . x)
	(apply cog-new-node (append (list 'DefinedFrameNode) x)))
(define (DefinedFrameElementNode . x)
	(apply cog-new-node (append (list 'DefinedFrameElementNode) x)))
(define (FrameElementLink . x)
	(apply cog-new-link (append (list 'FrameElementLink) x)))
(define (WordSenseNode . x)
	(apply cog-new-node (append (list 'WordSenseNode) x)))
(define (WordSenseLink . x)
	(apply cog-new-link (append (list 'WordSenseLink) x)))
(define (PartOfSpeechNode . x)
	(apply cog-new-node (append (list 'PartOfSpeechNode) x)))
(define (PartOfSpeechLink . x)
	(apply cog-new-link (append (list 'PartOfSpeechLink) x)))
(define (LemmaNode . x)
	(apply cog-new-node (append (list 'LemmaNode) x)))
(define (LemmaLink . x)
	(apply cog-new-link (append (list 'LemmaLink) x)))
(define (HolonymLink . x)
	(apply cog-new-link (append (list 'HolonymLink) x)))
(define (CosenseLink . x)
	(apply cog-new-link (append (list 'CosenseLink) x)))
(define (AGISIMSoundNode . x)
	(apply cog-new-node (append (list 'AGISIMSoundNode) x)))
(define (AGISIMTasteNode . x)
	(apply cog-new-node (append (list 'AGISIMTasteNode) x)))
(define (AGISIMSmellNode . x)
	(apply cog-new-node (append (list 'AGISIMSmellNode) x)))
(define (AGISIMSelfNode . x)
	(apply cog-new-node (append (list 'AGISIMSelfNode) x)))
(define (AGISIMPerceptNode . x)
	(apply cog-new-node (append (list 'AGISIMPerceptNode) x)))
(define (AGIMSIMVisualPerceptNode . x)
	(apply cog-new-node (append (list 'AGIMSIMVisualPerceptNode) x)))
(define (AGISIMPixelPerceptNode . x)
	(apply cog-new-node (append (list 'AGISIMPixelPerceptNode) x)))
(define (AGISIMPolygonPerceptNode . x)
	(apply cog-new-node (append (list 'AGISIMPolygonPerceptNode) x)))
(define (AGISIMObjectPerceptNode . x)
	(apply cog-new-node (append (list 'AGISIMObjectPerceptNode) x)))
(define (CWPixelPerceptNode . x)
	(apply cog-new-node (append (list 'CWPixelPerceptNode) x)))
(define (CWColorNode . x)
	(apply cog-new-node (append (list 'CWColorNode) x)))
(define (FWVariableNode . x)
	(apply cog-new-node (append (list 'FWVariableNode) x)))
(define (FeelingNode . x)
	(apply cog-new-node (append (list 'FeelingNode) x)))
(define (GoalNode . x)
	(apply cog-new-node (append (list 'GoalNode) x)))
(define (LearnedSchemaGoalNode . x)
	(apply cog-new-node (append (list 'LearnedSchemaGoalNode) x)))
(define (SchemaGoalImplicationLink . x)
	(apply cog-new-link (append (list 'SchemaGoalImplicationLink) x)))
(define (SLNode . x)
	(apply cog-new-node (append (list 'SLNode) x)))
(define (SLObjectNode . x)
	(apply cog-new-node (append (list 'SLObjectNode) x)))
(define (SLPetNode . x)
	(apply cog-new-node (append (list 'SLPetNode) x)))
(define (SLAvatarNode . x)
	(apply cog-new-node (append (list 'SLAvatarNode) x)))
(define (SLStructureNode . x)
	(apply cog-new-node (append (list 'SLStructureNode) x)))
(define (SLAccessoryNode . x)
	(apply cog-new-node (append (list 'SLAccessoryNode) x)))
(define (SLHumanoidNode . x)
	(apply cog-new-node (append (list 'SLHumanoidNode) x)))
(define (AtTimeLink . x)
	(apply cog-new-link (append (list 'AtTimeLink) x)))
(define (TimeNode . x)
	(apply cog-new-node (append (list 'TimeNode) x)))
(define (SpaceMapNode . x)
	(apply cog-new-node (append (list 'SpaceMapNode) x)))
(define (HebbianLink . x)
	(apply cog-new-link (append (list 'HebbianLink) x)))
(define (AsymmetricHebbianLink . x)
	(apply cog-new-link (append (list 'AsymmetricHebbianLink) x)))
(define (SymmetricHebbianLink . x)
	(apply cog-new-link (append (list 'SymmetricHebbianLink) x)))
(define (InverseHebbianLink . x)
	(apply cog-new-link (append (list 'InverseHebbianLink) x)))
(define (SymmetricInverseHebbianLink . x)
	(apply cog-new-link (append (list 'SymmetricInverseHebbianLink) x)))
