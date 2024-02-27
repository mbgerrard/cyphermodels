Cypher
// HEADER
// Version v05


// *** METAMODEL ***

// METAMODEL NODES
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_ClassNodes_Purpose.csv' AS line MERGE (:Metamodel  :RequirementClass  :Purpose  {Id: line.Id });
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_ClassNodes_Stakeholder.csv' AS line MERGE (:Metamodel  :RequirementClass  :Stakeholder  {Id: line.Id });
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_ClassNodes_Technical.csv' AS line MERGE (:Metamodel  :RequirementClass  :Technical  {Id: line.Id });
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_PropsNodes_Common.csv' AS line MERGE (:Metamodel  :Prop  :Common  {Id: line.Id, Name: line.Name, Type: line.Type, DisplayName: line.DisplayName, Modifiable: toBoolean(line.Modifiable), Required: toBoolean(line.Required) });
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_PropsNodes_Stakeholder.csv' AS line MERGE (:Metamodel  :Prop  :Stakeholder  {Id: line.Id, Name: line.Name, Type: line.Type, DisplayName: line.DisplayName, Modifiable: toBoolean(line.Modifiable), Required: toBoolean(line.Required) });
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_PropsNodes_Technical.csv' AS line MERGE (:Metamodel  :Prop  :Technical  {Id: line.Id, Name: line.Name, Type: line.Type, DisplayName: line.DisplayName, Modifiable: toBoolean(line.Modifiable), Required: toBoolean(line.Required) });
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_PropOptionsNodes_Stakeholder.csv' AS line MERGE (:Metamodel  :PropOption  :Stakeholder  {Id: line.Id, Seq: toInteger(line.Seq), Value: line.Value });
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_PropOptionsNodes_Technical.csv' AS line MERGE (:Metamodel  :PropOption  :Technical  {Id: line.Id, Seq: toInteger(line.Seq), Value: line.Value });

// METAMODEL RELS
// CLASS DEPENDENCIES
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_ClassRels.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:DEPENDS_ON {Domain: 'Metamodel'}]->(b);

// CLASS PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_PropsClassRels.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_PROP {Domain: 'Metamodel'}]->(b);

// PROPOPTIONS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_PropOptionsRels_Props.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:IS_OPTION_OF {Domain: 'Metamodel'}]->(b);

// TREE STRUCTURE
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Metamodel_PropOptionsRels_Tree.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:IS_PART_OF {Domain: 'Metamodel'}]->(b);



// MODEL

// METADATA
MERGE (md:Metadata) SET md.Id = 'md' SET md.NextId = 1001;

// *** MODEL ***

// MODEL NODES

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_PurposeReqs.csv' AS line MERGE (:Model :RequirementInst :Purpose  {Id: line.Id, Seq: toInteger(line.Seq), Suspect: toBoolean(line.Suspect)});
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_StakeholderReqs.csv' AS line MERGE (:Model :RequirementInst :Stakeholder  {Id: line.Id, Seq: toInteger(line.Seq), Suspect: toBoolean(line.Suspect)});
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_TechnicalReqs.csv' AS line MERGE (:Model :RequirementInst :Technical  {Id: line.Id, Seq: toInteger(line.Seq), Suspect: toBoolean(line.Suspect)});


// MODEL RELS
// PROPERTY RELS

// TREE PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_HAS_TREE_PROP.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_TREE_PROP {Domain: 'Model'}]->(b);

// SELECT PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_HAS_SELECT_PROP.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_SELECT_PROP {Domain: 'Model'}]->(b);

// TEXT PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_HAS_TEXT_PROP.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_TEXT_PROP {Domain: 'Model', Value: line.Value}]->(b);

// TAG PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_HAS_TAG_PROP.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_TAG_PROP {Domain: 'Model', Value: toBoolean(line.Value)}]->(b);


// DEPENDENCY RELS

// DEPENDS_ON PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_DEPENDS_ON.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:DEPENDS_ON {Domain: 'Model', Id:  line.Id}]->(b);

// DECOMPOSED_FROM PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv05/Model_DECOMPOSED_FROM.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:DECOMPOSED_FROM {Domain: 'Model', Id:  line.Id}]->(b);


// CONSTRAINTS AND TRIGGERS
// Clear existing constraints, indexes and triggers
DROP CONSTRAINT UniqueIdConstraint IF EXISTS;

// Create CONSTRAINTs
CREATE CONSTRAINT UniqueIdConstraint IF NOT EXISTS FOR (node:RequirementInst) REQUIRE node.Id IS UNIQUE;
