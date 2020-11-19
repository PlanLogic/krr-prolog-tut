%% Dmiles high level ? overview, a less detailed, talk about where
%% that code is.

%% hands on where we install logic



%% erikMueller, endsUpBeing
%% logicMoo_ec

hasUrl('https://us.meething.space/?room=frdcsa&mesh=false').
comment('This is a course I put together in 1 hour, its going to look that way :) (its looking like a shallow survey course on different topics in KRR)').
hasUrl('https://dai.fmph.uniba.sk/~sefranek/kri/handbook/handbook_of_kr.pdf').
hasUrl('https://www.cin.ufpe.br/~mtcfa/files/in1122/Knowledge%20Representation%20and%20Reasoning.pdf').
hasUrl('https://www.seas.upenn.edu/~cis700dr/Spring19/slides/Lec3-R-1-30-2019.pdf').

hasUrl(introductionToLogicLtl,'https://www.math.ucla.edu/~ynm/lectures/lnl.pdf').

isa(logic,mathematicalTopic)
isa(proofTheory,mathematicalTheory).
isa(setTheory,mathematicalTheory).
isa(tarskianSemantics,semantics).
isa(modelTheory,mathematicalTheory).
isa(modalLogic,mathematicalTheory).

isa(defeasibleLogic,logic).
isa(epistemicLogic,logic).
isa(autoepistemicLogic,logic).

%% (assert <I do not know Phi>)
%% (assert <Phi>)
%% (must therefore retract <I do not know Phi>)

isa(eventCalc,logicCalculus).
isa(sitCalc,logicCalculus).
isa(fluentCalc,logicCalculus).

hasUrl(fluxFrdcas,'https://github.com/aindilis/flux-frdcsa').
isa(pddl2_2,temporalLogic).

isa(sitcalc,firstOrderLogic).

uses(freeLogicForm,logicForms).
hasUrl(neodavidsonianLogicForms,'http://www.coli.uni-saarland.de/courses/incsem-12/neodavidsonian.pdf').
uses(computationalSemantics,candcTools).

are(['shanahan.pl','pttp.pl','Robert Sasaks: Prolog PDDL parser and planner','Martys Interactive Fiction Engine',mprolog],prologKrrPrograms).

%% FIXME
%% isa('Murray Shanahans Abductive Event Calculus reasoner').
%% isa('pttp.pl PTTP Prolog Technology Theorem Prover').

%% isa('Robert Sasaks: Prolog PDDL parser and planner').
%% isa('https://github.com/RobertSasak/Prolog-Planning-Library').
%% isa('Martys Interactive Fiction Engine',prologKrrPrograms).
%% isa('https://github.com/logicmoo/logicmoo_nlu/blob/master/prolog/marty_white/README.md').
%% isa('mprolog - modal logic').

%% (commonsenseReasoning).
%% ('https://www.seas.upenn.edu/~cis700dr/Spring19/').
hasUrl('FraCaS','https://nlp.stanford.edu/~wcmac/downloads/fracas.xml').

isa(naturalLanguageProcessing,artificialIntelligenceTopic).
isa(formalVerification,mathematicalTopic).

hasTopic(prologKrrTutorial,logicMOO).
hasTopic(prologKrrTutorial,riskOntology).

%% part1.pl

hasUrl(cyc,'https://www.logicmoo.org/cycdoc/toc-reference.html').
isa(megaMath,frdcsaProject).


%% tells 
comment(mpred_why/1,'gives us a proof of why this is true').

%% nonclosed world
%% inform
%% #$The
%% #$A
%% #$ThePrototypical

%% of the belief that the program always has to have nothing but knowns


%% goal(document pieces of code).

%% try to demo
%% swimming pool example

%% two paths continuous integration system that played through the demo
%% accidentally broken

%% prolog based CI

%% write some tests

%% train dmiles on https://github.com/aindilis/aop-swipl

%% once make sure I'm not regressing




