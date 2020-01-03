require 'open-uri'

open('http://ru.wikibooks.org/wiki/Ruby'){ |f|
    p f.meta
    p f.read
}
