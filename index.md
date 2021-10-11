# CSVW.org


## Hero

CSVW is a standard for describing and clarifying the content of CSV tables.

[Why CSV on the Web?]()

This site explains CSVW and suggests some tools you can use for working with it.

[Get Started]()

# Social proof

The UK Government Digital Service recommends CSVW

# Features & Benefits

Standardise dialects
Express types
Disambiguate resources
Link data together


# Nav

Standards | Tutorials | Tools

- Standards
- Tutorials
- Tools
  - Linting
  - Parsing
  - Translation
    - CSV2RDF
    - CSV2JSON

    
# Standards

The CSVW specification is quite deep, building on multiple standards. It can be quite overwhelming to read from start to finish. This page provides an overview to help you find the parts most relevant to your interests.

The [CSVW syntax specification](https://w3c.github.io/csvw/syntax/) describes a data model for tabular data. That is to say, it defines that a _table_ is a collection of _cells_ arranged into _columns_ and _rows_. It also describes how to annotate a table with a metadata file to help processors parse and interpret the contents.

The [CSVW metadata vocabulary](https://w3c.github.io/csvw/metadata/) defines the properties that can be used in an annotation. This includes things like a _schema_ of _column descriptions_, _datatypes_ and _foreign key relations_.

The metadata vocabulary defines how a table may be translated into [RDF](https://www.w3.org/TR/rdf11-concepts/) via the [csv2rdf procedure](https://w3c.github.io/csvw/csv2rdf/) or into [JSON]() via the [csv2json procedure](https://w3c.github.io/csvw/csv2json/).

These standards depend upon a range of other specifications:

- 
