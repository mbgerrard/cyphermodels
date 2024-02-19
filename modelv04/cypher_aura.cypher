// HEADER
// Version v04


// METAMODEL REQUIREMENT CLASS NODES

MERGE (:Metamodel :RequirementClass :Purpose {Id: '100'});
MERGE (:Metamodel :RequirementClass :Stakeholder {Id: '101'});
MERGE (:Metamodel :RequirementClass :Technical {Id: '102'});

// METAMODEL REQUIREMENT CLASS RELS

MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '101' MERGE (a)-[r:DEPENDS_ON{Domain: 'Metamodel', FromValidMin: 0, FromValidMax: -1, ToValidMin: 0, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '102' MERGE (a)-[r:DEPENDS_ON{Domain: 'Metamodel', FromValidMin: 0, FromValidMax: -1, ToValidMin: 0, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '101' MERGE (a)-[r:DEPENDS_ON{Domain: 'Metamodel', FromValidMin: 0, FromValidMax: -1, ToValidMin: 0, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '100' MERGE (a)-[r:DEPENDS_ON{Domain: 'Metamodel', FromValidMin: 0, FromValidMax: -1, ToValidMin: 0, ToValidMax: -1, Sense: true}]->(b);

// METAMODEL PROPS

MERGE (:Metamodel :Prop :Technical {Id: '4', Name: 'TechnicalCategory', Type: 'SELECT_TEXT', DisplayName: 'Category', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Stakeholder {Id: '9', Name: 'Source', Type: 'FREE_TEXT', DisplayName: 'Source', Modifiable: FALSE, Required: FALSE});
MERGE (:Metamodel :Prop :Stakeholder {Id: '3', Name: 'StakeholderCategory', Type: 'SELECT_TEXT', DisplayName: 'Category', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Stakeholder {Id: '10', Name: 'UseErrorMitigation', Type: 'TAG', DisplayName: 'Use Error Mitigation', Modifiable: TRUE, Required: TRUE});
MERGE (:Metamodel :Prop :Common {Id: '7', Name: 'Specification', Type: 'FREE_TEXT', DisplayName: 'Specification', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Common {Id: '6', Name: 'Title', Type: 'FREE_TEXT', DisplayName: 'Title', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Common {Id: '8', Name: 'Comments', Type: 'FREE_TEXT', DisplayName: 'Comments', Modifiable: FALSE, Required: FALSE});
MERGE (:Metamodel :Prop :Technical {Id: '5', Name: 'VerificationMethod', Type: 'SELECT_TEXT', DisplayName: 'Verification Method', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Technical {Id: '2', Name: 'Components', Type: 'TREE', DisplayName: 'Components', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Technical {Id: '12', Name: 'DesignControl', Type: 'TAG', DisplayName: 'Design Control', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Technical {Id: '13', Name: 'Usability', Type: 'TAG', DisplayName: 'Usability', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Stakeholder {Id: '1', Name: 'Stakeholders', Type: 'TREE', DisplayName: 'Stakeholders', Modifiable: FALSE, Required: TRUE});
MERGE (:Metamodel :Prop :Technical {Id: '11', Name: 'RCM', Type: 'TAG', DisplayName: 'RCM', Modifiable: FALSE, Required: TRUE});
MATCH (a), (b) WHERE a.Id = '100' AND b.Id = '7' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '100' AND b.Id = '8' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: FALSE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '100' AND b.Id = '6' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '100' AND b.Id = '9' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: FALSE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '100' AND b.Id = '2' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '9' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: FALSE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '10' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '1' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '7' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '3' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '6' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '101' AND b.Id = '8' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: FALSE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '12' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '13' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '11' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '4' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '8' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: FALSE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '6' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '7' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '2' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '102' AND b.Id = '5' MERGE (a)-[r:HAS_PROP{Domain: 'Metamodel', AttributeRequired: TRUE, FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: -1, Sense: true}]->(b);

// METAMODEL PROPOPTIONS

MERGE (:Metamodel :PropOption :Technical {Id: '32', Value: 'PCBA', Seq: 10, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '58', Value: 'Capability & Performance', Seq: 3, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '31', Value: 'MOTOR DRIVE ASSY', Seq: 9, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '59', Value: 'UI & Ease of use', Seq: 4, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '33', Value: 'ENCODER', Seq: 11, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '56', Value: 'Safety', Seq: 1, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '35', Value: 'BOLUS BUTTON', Seq: 13, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '57', Value: 'Markets & Regulations', Seq: 2, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '34', Value: 'ADHESIVE PATCH', Seq: 12, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '60', Value: 'Architecture And Design Decisions', Seq: 5, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '63', Value: 'Function And Performance', Seq: 8, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '28', Value: 'SEPTUM NEEDLE', Seq: 6, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '64', Value: 'UI', Seq: 9, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '27', Value: 'NEEDLE SHIELD', Seq: 5, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '62', Value: 'Operation& Function', Seq: 7, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '61', Value: 'Characteristics & Properties', Seq: 6, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '30', Value: 'CONTAINER', Seq: 8, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '29', Value: 'FLUIDIC PATHWAY', Seq: 7, Level: -2});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '45', Value: 'Operation& Function', Seq: 7, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '49', Value: 'Environmental', Seq: 11, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '42', Value: 'UI & Ease of use', Seq: 4, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '50', Value: 'Manufacturing', Seq: 12, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '41', Value: 'Capability & Performance', Seq: 3, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '48', Value: 'Normative and Applicable Standard-derived', Seq: 10, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '44', Value: 'Characteristics & Properties', Seq: 6, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '46', Value: 'Function And Performance', Seq: 8, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '43', Value: 'Architecture And Design Decisions', Seq: 5, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '47', Value: 'UI', Seq: 9, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '40', Value: 'Markets & Regulations', Seq: 2, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '54', Value: 'Packaging, Handling, Shipping And Transportation', Seq: 16, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '37', Value: 'KITTED DEVICE', Seq: 15, Level: -1});
MERGE (:Metamodel :PropOption :Technical {Id: '55', Value: 'Purpose', Seq: 0, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '36', Value: 'RELEASE MECHANISM BUTTON', Seq: 14, Level: -2});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '53', Value: 'Security', Seq: 15, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '39', Value: 'Safety', Seq: 1, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '51', Value: 'Labelling And Marking', Seq: 13, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '38', Value: 'Purpose', Seq: 0, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '52', Value: 'Physical And Aesthetical', Seq: 14, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '75', Value: 'Test', Seq: 4, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '16', Value: 'SUPPLIER', Seq: 2, Level: -1});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '21', Value: 'RA DEPT', Seq: 7, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '69', Value: 'Physical And Aesthetical', Seq: 14, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '68', Value: 'Labelling And Marking', Seq: 13, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '18', Value: 'MKT DEPT', Seq: 4, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '22', Value: 'DEVICE', Seq: 0, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '19', Value: 'CLINICAL DEPT', Seq: 5, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '72', Value: 'Trace', Seq: 1, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '73', Value: 'Inspection', Seq: 2, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '17', Value: 'PATIENT-USER', Seq: 3, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '70', Value: 'Security', Seq: 15, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '74', Value: 'Demonstration', Seq: 3, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '71', Value: 'Packaging, Handling, Shipping And Transportation', Seq: 16, Level: 0});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '15', Value: 'CUSTOMER', Seq: 1, Level: -1});
MERGE (:Metamodel :PropOption :Technical {Id: '66', Value: 'Environmental', Seq: 11, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '26', Value: 'SKIN NEEDLE', Seq: 4, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '25', Value: 'START_PAUSE BUTTON', Seq: 3, Level: -2});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '14', Value: 'STAKEHOLDERS', Seq: 0, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '65', Value: 'Normative and Applicable Standard-derived', Seq: 10, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '24', Value: 'POD', Seq: 2, Level: -1});
MERGE (:Metamodel :PropOption :Stakeholder {Id: '20', Value: 'PRODUCTION DEPT', Seq: 6, Level: -2});
MERGE (:Metamodel :PropOption :Technical {Id: '23', Value: 'CONTROLLER', Seq: 1, Level: -1});
MERGE (:Metamodel :PropOption :Technical {Id: '76', Value: 'Analysis', Seq: 5, Level: 0});
MERGE (:Metamodel :PropOption :Technical {Id: '67', Value: 'Manufacturing', Seq: 12, Level: 0});
MATCH (a), (b) WHERE a.Id = '48' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '51' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '61' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '73' AND b.Id = '5' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '76' AND b.Id = '5' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '47' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '75' AND b.Id = '5' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '49' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '50' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '46' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '74' AND b.Id = '5' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '59' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '67' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '68' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '57' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '58' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '65' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '63' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '62' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '60' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '66' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '71' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '54' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '53' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '52' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '72' AND b.Id = '5' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '56' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '69' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '70' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '64' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '55' AND b.Id = '4' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '45' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '19' AND b.Id = '1' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '37' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '30' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '36' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '38' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '18' AND b.Id = '1' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '24' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '29' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '20' AND b.Id = '1' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '33' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '31' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '32' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '22' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '23' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '35' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '21' AND b.Id = '1' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '34' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '39' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '27' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '26' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '16' AND b.Id = '1' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '15' AND b.Id = '1' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '14' AND b.Id = '1' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '44' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '43' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '28' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '42' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '17' AND b.Id = '1' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '25' AND b.Id = '2' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '40' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '41' AND b.Id = '3' MERGE (a)-[r:IS_OPTION_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '24' AND b.Id = '22' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '23' AND b.Id = '22' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '25' AND b.Id = '23' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '16' AND b.Id = '14' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '17' AND b.Id = '15' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '15' AND b.Id = '14' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '20' AND b.Id = '16' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '21' AND b.Id = '16' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '18' AND b.Id = '16' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '19' AND b.Id = '16' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '36' AND b.Id = '23' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '37' AND b.Id = '22' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '29' AND b.Id = '24' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '30' AND b.Id = '24' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '28' AND b.Id = '24' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '26' AND b.Id = '24' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '27' AND b.Id = '24' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '34' AND b.Id = '24' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '35' AND b.Id = '23' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '33' AND b.Id = '23' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '31' AND b.Id = '23' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);
MATCH (a), (b) WHERE a.Id = '32' AND b.Id = '23' MERGE (a)-[r:IS_PART_OF{Domain: 'Metamodel', FromValidMin: 1, FromValidMax: 1, ToValidMin: 1, ToValidMax: 1, Sense: true}]->(b);


// MODEL

// METADATA
MERGE (md:Metadata) SET md.Id = 'md' SET md.NextId = 1001;

// MODEL NODES

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_PurposeReqs.csv' AS line MERGE (:Model :RequirementInst :Purpose  {Id: line.Id, Seq: toInteger(line.Seq)});
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_StakeholderReqs.csv' AS line MERGE (:Model :RequirementInst :Stakeholder  {Id: line.Id, Seq: toInteger(line.Seq)});
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_TechnicalReqs.csv' AS line MERGE (:Model :RequirementInst :Technical  {Id: line.Id, Seq: toInteger(line.Seq)});


// MODE RELS
// PROPERTY RELS

// TREE PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_HAS_TREE_PROP.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_TREE_PROP {Domain: 'Model'}]->(b);

// SELECT PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_HAS_SELECT_PROP.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_SELECT_PROP {Domain: 'Model'}]->(b);

// TEXT PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_HAS_TEXT_PROP.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_TEXT_PROP {Domain: 'Model', Value: line.Value}]->(b);

// TAG PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_HAS_TAG_PROP.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:HAS_TAG_PROP {Domain: 'Model', Value: toBoolean(line.Value)}]->(b);


// DEPENDENCY RELS

// DEPENDS_ON PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_DEPENDS_ON.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:DEPENDS_ON {Domain: 'Model', Id:  line.Id}]->(b);

// DECOMPOSED_FROM PROPS
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/mbgerrard/cyphermodels/main/modelv04/Model_DECOMPOSED_FROM.csv' AS line MATCH (a), (b) WHERE a.Id = line.FromId AND b.Id = line.ToId MERGE (a)-[r:DECOMPOSED_FROM {Domain: 'Model', Id:  line.Id}]->(b);


// CONSTRAINTS AND TRIGGERS
// Clear existing constraints, indexes and triggers
DROP CONSTRAINT UniqueIdConstraint IF EXISTS;

// Create CONSTRAINTs
CREATE CONSTRAINT UniqueIdConstraint IF NOT EXISTS FOR (node:RequirementInst) REQUIRE node.Id IS UNIQUE;
