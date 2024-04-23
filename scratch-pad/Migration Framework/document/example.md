Migration Framework notes:

Can the concept of composability be applied to migration frameworks?


* Planning, scoping, resourcing and ultimately costing a migration to AWS is made up of many distinct but dependant aspects of a customers business and IT estate
* Each data set belongs and is owned by one aspect but may have multiple dependant aspects
* Each aspect will have it’s own data and parameters but may be enriched or depend upon other aspects.
* Business drivers will combine many aspects, individual applications are likely to combine fewer dependant aspects but should be governed by the over arching business drivers. At the IT level aspects may be more discreet in nature



* Consider each aspect like a micro-service with its own unique parameters, associated data and rules which apply
* Each aspect may have its own schema representing the data required to describe its functions
* Each aspect may have its own set of parameters which can and cannot be adjusted
* Each aspect may have data unique only to itself and data it owns but which effects other aspects

! high level aspects may have child aspects. These may be considered functions of the parent.



* By clearly defining these aspects, their properties and the data which is uniquly owned
* Additionally we determine what data is owned by other micro-services on which there are dependencies
* Each micro-service contains the rules by which data specific to it are determined, what tasks may be performed and what outputs that can be obtained from it
* Available interactions are published along with the schema used


A composition layer enables multiple aspects to be combined  as required to represent a specific

* rules, analysis and manipulation of the combined data is applied at the appropriate Business Service and the composition layer federates all calls to the appropriate aspect (micro-service)
* Verified Permissions Rules determine when data can be read, written, modified or deleted within the scope of each service interaction


Example Graph representation of relationship between Outcomes, Roles and Skills:



As we extrapolate the above out across a range of verticals on an engagement we can start to include additional aspects related to an outcome, such as what data is required to achieve, the process and amount of effort required and what artefacts may be produced as part of the outcome.

The diagram below illustrates this in a simplified way and we would expect multiple outcomes to be listed under each vertical each with multiple activities and associated skills and skill level.

In the lower half of the illustration we see a simplified example of how these connections might be made as we progress through a migration

* Portfolio Analysis and planning owns both the input data (Discovery Tooling) and the output data (Customer Portfolio) of the vertical
* Artefacts (not shown) may include discovery questionnaires, confluence pages, R disposition criteria specific the customer (although the decision log where a specific disposition was agreed woudl be owned by the Governance vertical)
* Continuous Wave Assessment is a consumer of the Customer Portfolio data and an owner of the Wave Plan data
* Migration Execution consumes the Wave Plan data to feed the factory but specifically to execute on the data, any changes required to the wave plan data should be actioned by the owner of the data
* We also see here an example of multiple verticals, Migration Execution, Governance and Operations all contributing artefacts in this stage. 
    -Governance for example is reliant on the servers migrated metrics to report on the progress of the migration,
    -Migration Execution are reliant on Operations artefacts/outcomes to define the tagging strategy that determines what tags to apply to migrated servers
    -Migration Execution owns the run books and automation script the factory relies on to execute..

