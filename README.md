# Sand and Stars: A Synoptic Digital Edition

A synoptic documentary digital edition of Siddy Wronsky's unpublished novel *Sand und Sterne. Erzählung aus dem Lande Israel* (Sand and Stars. A Tale from the Land of Israel), written between 1933 and 1939.

## About the Edition

The edition presents three parallel versions of the text:

- **German original** (188 pages) — the manuscript, likely authored and annotated by Wronsky herself
- **Hebrew translation** (84 pages) — by Yossef Achai
- **English translation** (109 pages) — by an anonymous translator

The manuscript was discovered in 2017 by Ayana Halpern at the **Central Zionist Archive (CZA)** in Jerusalem (archival reference: A149/10). It represents a unique witness to the intersection of social work, Zionist migration, and gender during the 1930s.

## Live Edition

The interactive digital edition is available at:
**[sand-and-stars.dzi.de](https://sand-and-stars.dzi.de:8443/exist/apps/Sand-and-Stars/index.html)**

The TEI Publisher interface provides a four-column synoptic view with synchronised scrolling, contextual notes, and interactive maps.

## Project Context

This edition was created in the framework of the **Deutsches Zentralinstitut für soziale Fragen (DZI)** digitisation project, uniting the DZI and the **e-Lijah Lab for Digital Humanities** at the University of Haifa, with support from the **digiS funding programme** (Zuse-Institute at the Free University Berlin).

## Technical Workflow

1. **Transcription**: Facsimile scans from CZA were transcribed using [Transkribus](https://readcoop.eu/transkribus/) with custom-trained HTR models
2. **Annotation**: Named entities, editorial corrections, and scholarly commentary were added using [Recogito](https://recogito.pelagios.org/) and direct TEI encoding
3. **Alignment**: The three versions were manually aligned at sub-sentence level using the [XML-Planter](https://xmlplanter.dh-dev.com/)
4. **Publication**: Hosted on [TEI Publisher](https://teipublisher.com/) (eXist-db)

## Encoding Principles

- **Hybrid diplomatic/normalized transcription**: The `<choice>` element preserves both original and corrected forms
- **German manuscript**: Deletions (`<del>`) and additions (`<add>`) annotated to show Wronsky's creation process
- **Translation versions**: Deletions and additions generally accepted silently
- **Named entities**: Persons (`<persName>`) and places (`<placeName>`) identified, with links to external authority files (Wikipedia, geo-kima.org) stored in `@ana` attributes
- **Synoptic alignment**: Sentence-level xml:id scheme `{Version}_{Section}_{Chapter}_{Segment}` enables cross-version synchronisation

## Repository Structure

```
data/                    TEI XML edition file
resources/
  odd/                   ODD customisation files (TEI Publisher rendering)
  css/                   Stylesheets
  fonts/                 Junicode font files
  images/                Logos and favicons
  scripts/               JavaScript for interactive features
  i18n/                  Internationalisation files
modules/                 XQuery modules (TEI Publisher application logic)
templates/               HTML templates for the TEI Publisher interface
```

## Key Files

| File | Description |
|------|-------------|
| `data/Sand%26StarsSynoptic.xml` | The TEI XML synoptic edition (all three versions) |
| `resources/odd/SandNStars.odd` | ODD file defining the TEI Publisher rendering |
| `resources/css/SandNStars.css` | Custom stylesheet for the edition |
| `templates/pages/SandStarsSynoptic.html` | Synoptic viewer template |

## Contributors

| Name | Role |
|------|------|
| **Sinai Rusinek** | Editor, project supervision, alignment, TEI encoding |
| **Stephanie Pigorsch** | Editor, research coordination (DZI) |
| **Ayana Halpern** | Transcription, annotation, research |
| **Dayana Lau** | Transcription, annotation |
| **Gil Shalit** | Technical development (XML-Planter, TEI Publisher) |
| **Yehudit Avnir** | Research consulting |

## Related Publication

Avnir, Y., Halpern, A., Lau, D., Pigorsch, S., & Wilke, B. (Eds.). (2025). *Siddy Wronsky. Sand und Sterne -- חול וכוכבים -- Sand and Stars. Edition of the 1930's Novel in the Context of Jewish History, Gender and Social Work*. Nomos.

## License

This edition is licensed under [Creative Commons Attribution 4.0 International (CC-BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

## Citation

Please cite this edition as:

> Rusinek, S., Pigorsch, S., Halpern, A., Lau, D., Shalit, G., & Avnir, Y. (2025). *Sand and Stars: A Synoptic Digital Edition*. Elijah Lab for Digital Humanities, University of Haifa / DZI. https://github.com/sinairusinek/Sand-and-Stars
