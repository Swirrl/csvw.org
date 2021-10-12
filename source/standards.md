---
title: Standards
---

The CSVW specification is quite deep, building on multiple standards. It can be quite overwhelming to read from start to finish. This page provides an overview to help you find the parts most relevant to your interests.

The [CSVW syntax specification](https://w3c.github.io/csvw/syntax/) describes a data model for tabular data. That is to say, it defines that a _table_ is a collection of _cells_ arranged into _columns_ and _rows_. It also describes how to annotate a table with a metadata file to help processors parse and interpret the contents.

The schema for the metadata file is provided by the [CSVW metadata vocabulary](https://w3c.github.io/csvw/metadata/). The vocabulary defines the properties that can be used in an annotation. This includes things like a _schema_ of _column descriptions_, _datatypes_ and _foreign key relations_.

CSVW also defines how a table may be translated into [RDF](https://www.w3.org/TR/rdf11-concepts/) via the [csv2rdf procedure](https://w3c.github.io/csvw/csv2rdf/) or into [JSON]() via the [csv2json procedure](https://w3c.github.io/csvw/csv2json/).

These standards depend upon a range of other technical specifications which may be of interest themselves:

- [CSV Dialect](http://dataprotocols.org/csv-dialect/) provides a standard for describing what "kind" of CSV file you have - i.e. the _terminator strings_, _quoting rules_, and _escape rules_ etc. This allows you to use tab-separated instead of comma-separated values for example or to deal with the often invisible differences between applications and operating systems (like _encoding_ or _line endings_). The CSVW syntax specification provides some sensible [Best Practice recommendations for standardising your CSV serialisation](https://w3c.github.io/csvw/syntax/#syntax) (e.g. use UTF-8 encoding and CRLF line endings).
- [JSON-LD](https://www.w3.org/TR/json-ld/) is a serialisation for linked-data in JSON which is used for the CSVW metadata file. This standard gives JSON documents an "@context" property which defines how to get from keys and values to URIs through processes called "expansion" and "compaction". In CSVW the context is fixed for compatibility with non-JSON-LD-aware processors.
- [XML Schema Datatypes](https://www.w3.org/TR/xmlschema11-2/) lists the various datatypes like _string_, _decimal_, and _datetime_ etc. The [Datatypes section of the CSVW syntax specification](https://w3c.github.io/csvw/syntax/#datatypes) builds upon this to allow annotated datatypes that might restrict the range of a number or format strings for parsing dates.
- [Compact URIs](https://www.w3.org/TR/curie/) is a standard which describes how to make URIs shorter by using prefixes (i.e. if I tell you `dcterms` means "http://purl.org/dc/terms/" then I can write `dcterms:title` or `dcterms:publisher` without having to spell the whole URI out each time). Compact URIs are much easier for humans to read!
- [URI Template](https://datatracker.ietf.org/doc/html/rfc6570)s can be used to create URIs by interpolate variables from table cells. A template like `http://example.net/{id}` when combined with the cell value "123456", for example, will expand to the URI "http://example.net/123456". This is particularly useful for `aboutUrl` or `valueUrl` properties.

The [CSVW namespace](https://www.w3.org/ns/csvw) defines a set of RDF ontologies that may be used in annotation in their prefixed form (i.e. it provides a JSON-LD "@context"). This means that instead of writing `{ "http://purl.org/dc/terms/title": "My Great Table Group" }` you're able to write `{ "dcterms:title": "My Great Table Group" }` which is much more legible. These ontologies aren't required in an annotation but the fact that the authors chose to include them in the CSVW Namespace implies a sort of tacit recommendation. Indeed these ontologies are a great place to find useful properties for annotating your tables.

- [Data Catalog Vocabulary (DCAT)](https://www.w3.org/TR/vocab-dcat-2/) defines _Catalogs_ and _Datasets_ it also makes heavy use of Dublin Core Terms;
- [Dublin Core Terms (DCTERMS)](https://dublincore.org/specifications/dublin-core/dcmi-terms/) defines fundamental datasets metadata terms like _title_, _modified_ date, _publisher_ and _license_;
- [RDF Data Cube (QB)](https://www.w3.org/TR/vocab-data-cube/) provides a vocabulary for describing multi-dimensional statistical data building upon the [SDMX](https://sdmx.org/) standard. This defines things like _observations_, _dimensions_, and _measures_.
- [Simple Knowledge Organisation System (SKOS)](https://www.w3.org/TR/skos-primer/) can be used to express _concept schemes_ such as "thesauri, classification schemes, subject heading lists, taxonomies, folksonomies, and other similar types of controlled vocabulary".
- [Good Relations (gr)](http://www.heppnetz.de/ontologies/goodrelations/v1.html) is designed for e-commerce and defines things like _Business Entities_, _Products or Services_ and _Price Specifications_.
- [PROV](https://www.w3.org/TR/prov-primer/) let's you explain the provenance of a dataset with reference to _Entities_ and _Activities_.

This is just a shortlist, consult the namespace document itself for the full details.

Indeed if you're looking for URIs to use in your annotations then you might also like to try searching with the [Linked Open Vocabularies](https://lov.linkeddata.es/) project or browsing around the [prefix.cc namespace lookup](http://prefix.cc/) (just bear in mind that if the prefixes aren't used in the CSVW namespace then you'll need to spell out the URIs in full).