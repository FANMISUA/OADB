drop table if exists Data;
drop table if exists Reference;
drop table if exists Chemical;
drop table if exists Assay;


CREATE TABLE if not exists Chemical (
OADB_ChemicalID int PRIMARY KEY NOT NULL,
Sid text DEFAULT NULL,
Cid text DEFAULT NULL,
Cmpdname text DEFAULT NULL,
Moleculechemblid text DEFAULT NULL,
MolecularName text DEFAULT NULL,
Molecularweight text DEFAULT NULL,
Ro5violations text DEFAULT NULL,
AlogP text DEFAULT NULL,
Smiles text DEFAULT NULL,
BindingDB_ID text DEFAULT NULL,
LigandSmiles text DEFAULT NULL,
LigandInChI text DEFAULT NULL,
LigandInChIKey text DEFAULT NULL,
BindingDBLigandName text DEFAULT NULL,
Casno text DEFAULT NULL
);


CREATE TABLE if not exists Reference (
OADB_PublicationID int PRIMARY KEY NOT NULL,
DocumentChemblID text DEFAULT NULL,
SourceID text DEFAULT NULL,
SourceDescription text DEFAULT NULL,
DocumentJournal text DEFAULT NULL,
DocumentYear text DEFAULT NULL,
PMID text DEFAULT NULL,
PatentNumber text DEFAULT NULL
);

CREATE TABLE if not exists Assay(
OADB_AssayID int PRIMARY KEY NOT NULL,
baid text DEFAULT NULL,
aid text DEFAULT NULL,
geneid text DEFAULT NULL,
aidtype text DEFAULT NULL,
aidmdate text DEFAULT NULL,
aidsrcname text DEFAULT NULL,
aidname text DEFAULT NULL,
targetnamePubChem text DEFAULT NULL,
targeturl text DEFAULT NULL,
AssayChEMBLID text DEFAULT NULL,
AssayDescription text DEFAULT NULL,
AssayType text DEFAULT NULL,
AssayOrganism text DEFAULT NULL,
AssayTissueChemblID text DEFAULT NULL,
AssayTissueName text DEFAULT NULL,
AssayCellType text DEFAULT NULL,
AssaySubcellularFraction text DEFAULT NULL,
TargetChEMBLID text DEFAULT NULL,
TargetNameChembl text DEFAULT NULL,
TargetOrganismChembl text DEFAULT NULL,
TargetTypeChembl text DEFAULT NULL,
CellChEMBLID text DEFAULT NULL,
TargetNameAssignedbyCurator text DEFAULT NULL,
TargetSourceOrganismAccordingtoCurator text DEFAULT NULL,
assaynamebyCurator text DEFAULT NULL,
assaydescriptionbyCurator text DEFAULT NULL
);


CREATE TABLE if not exists Data(
OADB_DataID int PRIMARY KEY NOT NULL,
Endpoint text DEFAULT NULL,
Activity text DEFAULT NULL,
Relation text DEFAULT NULL,
Value float DEFAULT NULL,
StandardUnits text DEFAULT NULL,
pChemblValue text DEFAULT NULL,
DataValidityComment text DEFAULT NULL,
Comment text DEFAULT NULL,
PotentialDuplicate text DEFAULT NULL,
Curation text DEFAULT NULL,
PubChem int DEFAULT NULL,
ChEMBL int DEFAULT NULL,
BindingDB int DEFAULT NULL,
Receptor text DEFAULT NULL,
For_ChemicalID int DEFAULT NULL,
For_PublicationID int DEFAULT NULL,
For_AssayID int DEFAULT NULL,
  CONSTRAINT data_fk1 FOREIGN KEY (For_ChemicalID) REFERENCES Chemical (OADB_ChemicalID),
  CONSTRAINT data_fk2 FOREIGN KEY (For_PublicationID) REFERENCES Reference (OADB_PublicationID),
  CONSTRAINT data_fk3 FOREIGN KEY (For_AssayID) REFERENCES Assay (OADB_AssayID)
);