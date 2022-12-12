\copy Chemical FROM 'C:\temp\data\test_oadb\FinalChemicalTable.csv' with delimiter as ',' CSV HEADER;
\copy Reference FROM 'C:\temp\data\test_oadb\FinalReferenceTable.csv' with delimiter as ',' CSV HEADER;
\copy Assay FROM 'C:\temp\data\test_oadb\FinalAssayTable.csv' with delimiter as ',' CSV HEADER;
\copy Data FROM 'C:\temp\data\test_oadb\FinalDataTable.csv' with delimiter as ',' CSV HEADER;