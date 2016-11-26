#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/jordan-house-of-representatives-wikipedia', column: 'wikiname')

sparq = 'SELECT ?item WHERE { ?item wdt:P39 wd:Q%s . }'
ids = EveryPolitician::Wikidata.sparql(sparq % 17524418)
raise "No ids" if ids.empty?

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { en: names })
