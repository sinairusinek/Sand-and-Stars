# Data: XML Editions

This folder contains two versions of the TEI XML synoptic edition of Siddy Wronsky's *Sand und Sterne* (*Sand and Stars*).

## Files

| File | Description |
|------|-------------|
| `Sand&StarsSynoptic.xml` | Full research version with all annotations |
| `Sand&StarsSynoptic-presentation.xml` | Clean presentation version for archival deposit |

## Full Research Version

The full version preserves the complete scholarly annotation layer as produced during the editorial process. It includes:

- **Entity annotation**: 113 `<persName>` and 80 `<placeName>` elements marking named entities in the text
- **Entity linking**: 118 `@ana` attributes linking annotated entities to external authority files
- **Certainty markers**: 45 `@cert` attributes indicating the editorial confidence level of specific readings or identifications
- **Citation structures**: `<cit>` and `<bibl>` elements encoding bibliographic references within the text body
- **Supplied readings**: `<supplied>` elements for editorially supplied text
- **XML comments**: 116 commented-out `<choice>`/`<sic>`/`<corr>` fragments from the April 2025 proofreading phase, preserved for documentary purposes

This version is intended for researchers who wish to work with the full annotation layer, including annotations that are not rendered in the TEI Publisher edition.

## Clean Presentation Version

The presentation version retains only the markup that is actively rendered by the TEI Publisher ODD customisation (`SandNStars.odd`). The following annotations were removed:

- All `<persName>` elements (unwrapped, text content preserved)
- All `<placeName>` elements (unwrapped, text content preserved)
- All `@ana` attributes
- All `@cert` attributes
- All `<cit>` elements (unwrapped)
- All body `<bibl>` elements (unwrapped)
- All `<supplied>` elements (unwrapped)
- All XML comments

The following markup is preserved in both versions:

- **Synoptic alignment** via `xml:id` attributes (`{Version}_{Section}_{Chapter}_{Segment}`)
- **Editorial apparatus**: `<choice>`/`<sic>`/`<corr>`, `<add>`, `<del>`
- **Editorial notes**: `<note>` elements with historical, cultural, and codicological commentary
- **Structural encoding**: `<div>`, `<head>`, `<p>`, `<lg>`, `<l>`, `<epigraph>`
- **Cross-references**: `<ref>` elements with `@target` attributes

## TEI Publisher Edition

The online interactive edition, rendered via TEI Publisher, is available at:
https://sand-and-stars.dzi.de:8443/exist/apps/Sand-and-Stars/index.html

The presentation version corresponds to the markup rendered in that edition.
