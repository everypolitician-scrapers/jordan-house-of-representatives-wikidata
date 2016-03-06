#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/jordan-house-of-representatives-wikipedia', column: 'wikiname')
ids = EveryPolitician::Wikidata.wdq('claim[39:17524418]')

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { en: names }, output: false)
