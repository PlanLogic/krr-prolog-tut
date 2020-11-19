%% from /game/media/storage-sshfs/all/[Des_Conway]_The_Home_Security_Handbook(b-ok.org).pdf

physicalSecurity :-
	Definitions = [
		       'vulnerability is the vector by which a threat harms us',
		       'threat is any occurrence that causes harm',
		       'risk is extent of exposure to threats',
		       'impact of a threat is a a measure of the damage sustained if the threat happens',
		       'likelihood is the frequency of the exposure to a threat',
		       'countermeasure is something that can be done to improve safety and security'
		      ].

genls([impact,likelihood],risk).
genls([vulnerability,threat,risk],item).
genls([person,property,facility],target).

%% isa(V,vulnerability).
%% isa(T,threat).
%% hasThreat(V,T).
argIsa(hasThreat/2,1,vulnerability).
argIsa(hasThreat/2,2,threat).

%% isa(L,likelihood).
%% hasRisk(T,likelihood(L)).
%% isa(I,impact).
%% hasRisk(T,impact(I)).
argIsa(hasRisk/2,1,threat).
argIsa(hasRisk/2,2,risk).

%% isa(Pe,person).
%% isa(Pr,property).
%% isa(F,facility).
%% isExposedToThreat(Pe,T).
%% isExposedToThreat(Pr,T2).
%% isExposedToThreat(F,T3).
argIsa(isExposedToThreat/2,1,target).
argIsa(isExposedToThreat/2,2,threat).


increaseCausally(done(C,E),and(safety(S),security(S))) :-
	isa(C,countermeasure),
	appliesTo(C,S).

%% hasCountermeasure(V,C).
%% hasCountermeasure(T,C).
%% hasCountermeasure(L,C).
%% hasCountermeasure(I,C).
argIsa(hasCountermeasure/2,1,item).
argIsa(hasCountermeasure/2,2,countermeasure).


hasCountermeasureTypes(T,[
			  ignoreItHopeItGoesAway,
			  takeActionTo(reduce,L,A),
			  takeActionTo(reduce,I,A),
			  takeActionTo(avoid,L,A),
			  takeActionTo(avoid,I,A),
			  takeActionTo(remove,T,A)
			 ]).

hasCountermeasure(T,C).
isa(R,reason).
neg(isAppropriate(C,T,R)).
neg(isAcceptable(C,T,R)).

moreAcceptableThan(C1,C2).
moreSensibleThan(C1,C2).

isUnrealistic(C,T).
isFoolhardy(C,T).

courseOfAction.

genls([additionalThreat,modifiedThreat],threat).

arg2Isa(hasAdditionalThreat/2,additionalThreat).
isa(AdditionalThreat,additionalThreat) :-
	 foreach(member(Threat,Threats),isa(Threat,threat)),
	 SetOfThreats = setFn(Threats),
	 hasAdditionalThreat(SetOfThreats,AdditionalThreat),
	 isa(AdditionalThreat,threat).

arg2Isa(hasModifiedThreat/2,modifiedThreat).
isa(ModifiedThreat,modifiedThreat) :-
	 foreach(member(Threat,Threats),isa(Threat,threat)),
	 SetOfThreats = setFn(Threats),
	 hasModifiedThreat(SetOfThreats,ModifiedThreat),
	 isa(ModifiedThreat,threat).

hasCircumstances(Pe,Circumstances) :-
	foreach(member(Circumstance,Circumstances),isa(Circumstances,circumstance)).

hasPrimaryObjective(User,
		    [
		     findall(X,genls(X,threat),SortsOfThreats),
		     'recognize all additional and/or modified threats to which we are vulnerable due to our circumstances'
		     %% foreach(SetOfThreats,(isa(SetOfThreats,setTFn(
		     ]).

