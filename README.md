# RDF converter for GTDB


## Usage
  
  Usage: rdf_converter_gtdb.rb [options]
    -p print prefixes
    -m <file> 

Input file is ar53_metadata.tsv or bac120_metadata.tsv distributed at https://data.gtdb.ecogenomic.org/releases/ .

  Example:

  > ruby rdf_converter_gtdb.rb -p -m bac120_metadata.tsv

## Usage(Docker)
### Build ruby container
```
$ docker compose build
$ docker compose run --rm ruby ruby -v
ruby 3.2.6 (2024-10-30 revision 63aeb018eb) [x86_64-linux]
```
### Data download
```
$ curl -o "data/bac120_metadata.tsv.gz" "https://data.gtdb.ecogenomic.org/releases/latest/bac120_metadata.tsv.gz"
$ gunzip data/bac120_metadata.tsv.gz > data/bac120_metadata.tsv
```

### Convert to ttl
```
$ docker compose run --rm ruby ruby /usr/src/app/bin/rdf_converter_gtdb.rb -p -m /data/bac120_metadata.tsv > data/bac120_metadata.ttl
```
