\copy Chemical FROM 'FinalChemicalTable.csv' with delimiter as ',' CSV HEADER;
\copy Reference FROM 'FinalReferenceTable.csv' with delimiter as ',' CSV HEADER;
\copy Assay FROM 'FinalAssayTable.csv' with delimiter as ',' CSV HEADER;
\copy Data FROM 'FinalDataTable.csv' with delimiter as ',' CSV HEADER;
