# A Leisure Attractivity Framework for Destination Choice in Travel Demand Models

**Author:** Stefano Benzoni  
**Programme:** Master of Science in Geography  
**Institution:** University of Zurich (UZH), Department of Geography  
**Course:** GEO 511 Master's Thesis  
**External partner:** Swiss Federal Railways (SBB)  
**Supervisors:** Prof. Esra Suel (UZH), Antonin Danalet (SBB), Davi Guggisberg (SBB)

---

> *“Measure what is measurable and make measurable what is not so.”*  
> — **Galileo Galilei (1564–1642)**

---


## Abstract

> *Switzerland is undergoing demographic and mobility change: the population is ageing, and leisure is already the most frequent trip purpose, especially among older adults. At the same time, national transport outlooks suggest that leisure will account for an increasing share of future travel. Together, these trends strengthen the need for a better understanding and representation of leisure mobility.*
>
> *To represent and predict where people choose to go for leisure, travel demand models typically rely on destination-choice formulations in which utility combines an accessibility term (or cost) with a destination-side attractivity term (or size term). The latter is often represented by a small number of variables, such as employment or resident population. While operationally convenient, such representations make it difficult to capture the diversity of leisure opportunities across places and to reveal differences in destination-side preferences across population groups and travel contexts. This thesis addresses this limitation by developing an improved representation of the attractivity term in zone-based travel demand modelling. The proposed formulation combines variables describing leisure-related supply, territorial structure, and environmental features.*
>
> *As a pragmatic first step to test whether this formulation can reveal behavioural differences, the analysis distinguishes leisure destination choice along two dimensions: age group (6--64 vs. 65+) and travel context (short everyday leisure vs. long day-trip leisure), yielding four estimation segments. Within a multinomial logit discrete-choice framework, segment-specific models are estimated and validated using observed leisure destination choices from the national travel diary survey, the **Swiss Mobility and Transport Microcensus**. Model performance is assessed through out-of-sample evaluation and comparison with alternative formulations. As a proof of concept, the resulting segment-specific attractivity layer is then integrated into SIMBA MOBi, the agent-based travel demand model operated by the Swiss Federal Railways (SBB).*
>
> *The results show that a richer destination-side attractivity formulation improves the representation of leisure destination choice and helps reveal heterogeneity across segments. The clearest differences emerge between short and long leisure travel contexts, while age-related differences are present but more limited. From an applied perspective, the thesis delivers a practical, flexible, and transferable framework for specifying a richer destination-side attractivity term in travel demand modelling. It also demonstrates that such a formulation can be translated into an implementation-oriented attractivity layer for operational models, while highlighting that further calibration is needed for its full benefits to emerge in a simulation environment.*

## Repository overview

This repository documents the empirical workflow and code developed for the MSc thesis:

**A Leisure Attractivity Framework for Destination Choice in Travel Demand Models**

A link to the final thesis document will be added here once the thesis is publicly available.

The repository should not be interpreted as a fully self-contained public reproduction package. Several inputs used in the full empirical workflow cannot be redistributed because they contain sensitive, confidential, licensed, very large, or otherwise non-distributable data. This applies especially to individual-level mobility data, travel-cost skims, accessibility matrices, large raw geospatial source layers, and some derived modelling inputs.

The files and notebooks are therefore provided to make the workflow transparent: they document the code, processing logic, variable construction, model estimation, and robustness checks used in the thesis.

Some notebooks can only be executed end-to-end with access to the original local data environment used during the thesis. Where data cannot be included, the notebooks still document the processing logic for transparency.

---

## Main notebooks

The repository is organised around the following main notebooks:

- `Features.ipynb`
- `geojson2gpkg.ipynb`
- `Trips.ipynb`
- `Accessibility.ipynb`
- `Model.ipynb`
- `Robustness.ipynb`

The notebooks are complementary. `Features.ipynb` documents the construction of destination-side attractivity indicators, while `Trips.ipynb`, `Accessibility.ipynb`, `Model.ipynb`, and `Robustness.ipynb` document the later stages of the modelling pipeline.

Some notebooks cannot be executed end-to-end from the repository alone because the required input data are not included.

---

## Feature construction

### `Features.ipynb`

`Features.ipynb` is the central notebook for the construction of destination-side leisure attractivity indicators.

It documents how spatial datasets are transformed into traffic-zone-level explanatory variables. The notebook combines official geospatial data, OpenStreetMap-derived layers, and selected traffic-zone geometries to construct the destination-side variables used in the thesis model.

In broad terms, the workflow consists of:

1. loading the selected traffic-zone geometry;
2. loading leisure-related spatial datasets;
3. harmonising geometries and coordinate reference systems;
4. assigning spatial features to traffic zones;
5. aggregating features at the traffic-zone level;
6. constructing destination-level indicators;
7. exporting analysis-ready spatial layers.

The notebook is included to make the feature construction process transparent. However, it is not guaranteed to be fully executable from the repository alone. Some of the raw or intermediate geospatial input files used during feature construction are very large and may need to be available in the local data environment. Other inputs may need to be obtained separately from the original providers.

For this reason, `Features.ipynb` should be read primarily as documentation of the feature-construction methodology. It shows how the destination-side indicators were built, even though a complete rerun requires local access to the omitted or externally managed source layers.

---

### `geojson2gpkg.ipynb`

`geojson2gpkg.ipynb` is a utility notebook used to prepare GeoJSON layers for spatial analysis.

It is mainly used for OpenStreetMap-derived data. The notebook reads GeoJSON files, cleans or transforms geometries where needed, projects them to the Swiss LV95 coordinate reference system, and exports them as GeoPackage files.

The resulting `.gpkg` files can then be used as spatial inputs in `Features.ipynb`.

---

## Traffic-zone layer

The analysis is based on selected NPVM 2017 traffic zones.

The working traffic-zone layer used in the feature construction workflow is:

- `TZ/TZ.gpkg`

This file represents the selected traffic-zone geography used to aggregate destination-side features. The original traffic-zone data are based on the VM-UVEK / ARE traffic-zone dataset.

Source:

VM-UVEK. 2017. *Verkehrsmodellierung im UVEK; Daten Zustand 2017 -- Verkehrszonen*. Eidgenössisches Departement für Umwelt, Verkehr, Energie und Kommunikation (UVEK) and Bundesamt für Raumentwicklung (ARE).  
URL: https://zenodo.org/records/7777651

---

## Spatial input data

The feature construction workflow uses several categories of spatial input data.

These include:

- OpenStreetMap-derived leisure-related points and geometries;
- Swiss land-use statistics;
- building and housing statistics;
- employment and workplace statistics;
- population statistics;
- selected swissTLM3D layers;
- selected federal geodata layers related to parks, reserves, ski routes, snowshoe routes, glaciers, cableways, and other leisure-relevant features.

The spatial inputs are used to construct destination-side variables related to cultural amenities, gastronomy, outdoor activities, sport infrastructure, population, employment, land use, landscape, accessibility to leisure opportunities, and related territorial characteristics.

Some spatial source files were present in the local working environment used during the thesis, but are not distributed through this repository. The repository does not replace the original data sources and does not guarantee redistribution rights for all source datasets.

The thesis documents the conceptual selection of the variables and the role of each feature block in the destination attractivity framework.

---

## Data sources

The empirical workflow relies on a combination of public geospatial datasets, OpenStreetMap-derived data, and restricted modelling inputs.

Public or externally documented data sources include:

- **Traffic zones, NPVM 2017 / VM-UVEK / ARE**  
  Local folder: `TrafficZones_2017/` and `TZ/`  
  URL: https://zenodo.org/records/7777651  
  Citation: VM-UVEK. (2017). *Verkehrsmodellierung im UVEK: Daten Zustand 2017 – Verkehrszonen*. Eidgenössisches Departement für Umwelt, Verkehr, Energie und Kommunikation (UVEK) and Bundesamt für Raumentwicklung (ARE). Available at: https://zenodo.org/records/7777651 [Accessed 23.10.2025].

- **OpenStreetMap contributors**  
  Local folder: `OSM/`  
  URL: https://www.openstreetmap.org  
  Citation: OpenStreetMap contributors. (2026). *OpenStreetMap*. Available at: https://www.openstreetmap.org [Accessed 28.02.2026].

- **Overpass API / Overpass Turbo for OpenStreetMap data extraction**  
  Local folder: `OSM/`  
  URL: https://overpass-turbo.osm.ch  
  Citation: Overpass Turbo contributors. (2026). *Overpass Turbo - Swiss Edition*. Available at: https://overpass-turbo.osm.ch [Accessed 28.02.2026].

- **Swiss land-use statistics, BFS Arealstatistik / NOAS04**  
  Local folder: `Arealstatistik_2025/`  
  URL: https://data.geo.admin.ch/browser/index.html#/collections/ch.bfs.arealstatistik/items/arealstatistik  
  Citation: BFS. (2025). *Land use statistics based on the nomenclature NOAS04*. Bundesamt für Statistik (BFS). Available at: https://data.geo.admin.ch/browser/index.html#/collections/ch.bfs.arealstatistik/items/arealstatistik?.language=de-CH [Accessed 15.02.2026].

- **Building and housing statistics, BFS GWS**  
  Local folder: `Buildings_2024/`  
  URL: https://www.bfs.admin.ch/bfs/de/home/dienstleistungen/geostat/geodaten-bundesstatistik/gebaeude-wohnungen-haushalte-personen/gebaeude-wohnungen-ab-2010.assetdetail.36178236.html  
  Citation: BFS. (2024). *Gebäude- und Wohnungsstatistik (GWS): Geodaten 2024*. Bundesamt für Statistik (BFS). Available at: https://www.bfs.admin.ch/bfs/de/home/dienstleistungen/geostat/geodaten-bundesstatistik/gebaeude-wohnungen-haushalte-personen/gebaeude-wohnungen-ab-2010.assetdetail.36178236.html [Accessed 15.02.2026].

- **Employment and workplace statistics, BFS STATENT**  
  Local folder: `Jobs_2023/`  
  URL: https://www.bfs.admin.ch/bfs/de/home/dienstleistungen/geostat/geodaten-bundesstatistik/arbeitsstaetten-beschaeftigung/statistik-unternehmensstruktur-statent-ab-2011.assetdetail.36073031.html  
  Citation: BFS. (2023). *Statistik der Unternehmensstruktur (STATENT), Beschäftigte und Arbeitsstätten: Geodaten 2023*. Bundesamt für Statistik (BFS). Available at: https://www.bfs.admin.ch/bfs/de/home/dienstleistungen/geostat/geodaten-bundesstatistik/arbeitsstaetten-beschaeftigung/statistik-unternehmensstruktur-statent-ab-2011.assetdetail.36073031.html [Accessed 15.02.2026].

- **Population statistics, BFS STATPOP**  
  Local folder: `Population_2024/`  
  URL: https://www.bfs.admin.ch/bfs/de/home/dienstleistungen/geostat/geodaten-bundesstatistik/gebaeude-wohnungen-haushalte-personen/bevoelkerung-haushalte-ab-2010.assetdetail.36171301.html  
  Citation: BFS. (2024). *Statistik der Bevölkerung und Haushalte (STATPOP), Geodaten 2024*. Bundesamt für Statistik (BFS). Available at: https://www.bfs.admin.ch/bfs/de/home/dienstleistungen/geostat/geodaten-bundesstatistik/gebaeude-wohnungen-haushalte-personen/bevoelkerung-haushalte-ab-2010.assetdetail.36171301.html [Accessed 15.02.2026].

- **swissTLM3D, Swiss Federal Office of Topography Swisstopo**  
  Local folder: `swissTLM3D_2025/`  
  URL: https://www.swisstopo.admin.ch/de/landschaftsmodell-swisstlm3d  

- **Pro Natura nature preserves**  
  Local file: `GEOADMIN/Reserves_2024.gpkg`  
  URL: https://data.geo.admin.ch/browser/index.html#/collections/ch.pronatura.naturschutzgebiete/items/naturschutzgebiete  
  Citation: Pro Natura. (2023). *Nature Reserves of Pro Natura*. Pro Natura Switzerland. Available at: https://data.geo.admin.ch/browser/index.html#/collections/ch.pronatura.naturschutzgebiete/items/naturschutzgebiete?.language=de-CH&.asset=asset-naturschutzgebiete_2056-gpkg [Accessed 10.03.2026].

- **Swiss parks of national importance, BAFU**  
  Local folder: `GEOADMIN/Parks_2025/`  
  URL: https://data.geo.admin.ch/browser/index.html#/collections/ch.bafu.schutzgebiete-paerke_nationaler_bedeutung/items/schutzgebiete-paerke_nationaler_bedeutung  
  Citation: BAFU. (2025). *Swiss National Park and parks of national importance (Zones)*. Bundesamt für Umwelt (BAFU). Available at: https://data.geo.admin.ch/browser/index.html#/collections/ch.bafu.schutzgebiete-paerke_nationaler_bedeutung/items/schutzgebiete-paerke_nationaler_bedeutung [Accessed 28.01.2026].

- **Ski routes, Swisstopo**  
  Local folder: `GEOADMIN/Skiroutes_2024/`  
  URL: https://data.geo.admin.ch/browser/index.html#/collections/ch.swisstopo-karto.skitouren/items/skitouren  
  Citation: Swisstopo. (2024). *Skitouren*. Swiss Federal Office of Topography. Available at: https://data.geo.admin.ch/browser/index.html#/collections/ch.swisstopo-karto.skitouren/items/skitouren?.language=en [Accessed 15.01.2026].

- **Snowshoe routes, Swisstopo**  
  Local folder: `GEOADMIN/Snowshow_routes_2024/`  
  URL: https://data.geo.admin.ch/browser/index.html#/collections/ch.swisstopo-karto.schneeschuhrouten/items/schneeschuhrouten  
  Citation: Swisstopo. (2024). *Schneeschuhrouten*. Swiss Federal Office of Topography. Available at: https://data.geo.admin.ch/browser/index.html#/collections/ch.swisstopo-karto.schneeschuhrouten/items/schneeschuhrouten?.language=en [Accessed 15.01.2026].

- **Winter cableways, Swisstopo**  
  Local folder: `GEOADMIN/Cableways_2024/`  
  URL: https://data.geo.admin.ch/browser/index.html#/collections/ch.swisstopo.bahnen-winter/items/bahnen-winter  
  Citation: Swisstopo. (2024). *Cableways/skilifts winter*. Swiss Federal Office of Topography. Available at: https://data.geo.admin.ch/browser/index.html#/collections/ch.swisstopo.bahnen-winter/items/bahnen-winter [Accessed 15.01.2026].

- **Swiss Glacier Inventory, GLAMOS**  
  Local folder: `GEOADMIN/Glacier_2016/`  
  URL: https://www.glamos.ch/downloads#inventories/A10g-05  
  Citation: GLAMOS. (2016). *SCHWEIZER GLETSCHER*. Glacier Monitoring Switzerland (GLAMOS). Available at: https://www.glamos.ch/downloads#inventories/A10g-05 [Accessed 15.02.2026].

- **Hiking trails, Swisstopo**  
  Local file: `GEOADMIN/Hiking_2023.gpkg`  
  URL: https://data.geo.admin.ch/browser/index.html#/collections/ch.swisstopo.swisstlm3d-wanderwege/items/swisstlm3d-wanderwege  
  Citation: Swisstopo. (2025). *swissTLM3D – Topographisches Landschaftsmodell der Schweiz*. Swiss Federal Office of Topography. Available at: https://www.swisstopo.admin.ch/de/landschaftsmodell-swisstlm3d [Accessed 15.01.2026].

Restricted or non-distributable inputs include:

- **MTMC individual-level data**  
  Citation: ARE & BFS. (2021). *Mikrozensus Mobilität und Verkehr (MZMV)*. Bundesamt für Raumentwicklung (ARE) und Bundesamt für Statistik (BFS). Available at: https://www.are.admin.ch/de/mzmv [Accessed 23.10.2025].
- internal SBB/MOBi5 travel-cost skims;
- SBB accessibility layers;
- derived origin-destination utility matrices;
- EMU accessibility matrices;
- model-ready datasets derived from confidential or restricted inputs.

These restricted inputs are not included in the repository.

---

## Large local or external geospatial inputs

Some geospatial input files used during the thesis workflow are very large raw or intermediate files. They are listed here to clarify which parts of the workflow require substantial local storage and which files may be needed for a complete local rerun of the feature-construction steps.

The most relevant large local or external geospatial inputs include:

- `swissTLM3D_2025/SWISSTLM3D_2025.gpkg`
- `swissTLM3D_2025/BB/RelevantLC.gpkg`
- `Arealstatistik_2025/LandUse_2020.csv`
- `Arealstatistik_2025/arealstatistik_2056.gpkg`
- `Arealstatistik_2025/Arealstatistik_2020.gpkg`
- `swissTLM3D_2025/gewaesser/River.gpkg`
- `GEOADMIN/Hiking_2023.gpkg`
- `Jobs_2023/STATENT_2023.csv`
- `OSM/Outdoor/Rivers/Rivers.geojson`
- `Buildings_2024/Buildings_2024.gpkg`
- `Buildings_2024/GWS2024.csv`
- `OSM/Superinfrastructure/SI.gpkg`
- `OSM/Outdoor/Rivers/Rivers.gpkg`
- `Population_2024/Population_2024.gpkg`
- `Population_2024/STATPOP2024.csv`
- `Jobs_2023/Jobs_2023.gpkg`
- `OSM/Superinfrastructure/SI.geojson`

These files were used as raw or intermediate inputs for feature construction. They are not required for understanding the methodology, but they are required for a complete rerun of the corresponding feature-construction steps.

Where possible, the README provides links to the original data providers so that users with the appropriate rights and storage capacity can obtain the source data independently.

---

## Trip extraction

### `Trips.ipynb`

`Trips.ipynb` documents the extraction of observed leisure trips from the Swiss Mobility and Transport Microcensus (MTMC).

The MTMC trips data are not included in this repository because they contain sensitive individual-level mobility information. For the same reason, the extracted trip tables are also not provided. The notebook is included only to document the processing logic.

The notebook prepares the observed chosen alternatives used in the destination choice model. Short trips are extracted from `wegeinland`, while long or day trips are extracted from `tagesreisen`.

For short trips, the extraction keeps leisure-related outward trips. This avoids using return trips from leisure activities back home, because those trips do not represent a leisure destination choice.

The extracted trips are assigned to NPVM 2017 traffic zones and segmented by age group (6-64 vs. 65+) and trip type into four model segments:

- `YS`: young, short trips;
- `OS`: old, short trips;
- `YL`: young, long/day trips;
- `OL`: old, long/day trips.

The resulting origin-destination observations are used as the chosen alternatives in the destination choice estimation.

---

## Accessibility and travel-cost preparation

### `Accessibility.ipynb`

`Accessibility.ipynb` documents the preparation of the origin-destination impedance and accessibility variables used in the destination choice model.

This part of the workflow is included for transparency, but it is not fully reproducible from the repository alone. The main skim and accessibility inputs rely on internal SBB/MOBi5 data that cannot be redistributed. Therefore, the car and public transport skim matrices, SBB accessibility layers, derived utility matrices, and EMU matrices are not provided.

The notebook documents how the internal origin-destination skims were processed and aligned with the selected traffic zones. Distances are converted to kilometres, travel times are converted to minutes, and the matrices are reduced to the traffic-zone universe (7'978) used in the thesis.

The workflow constructs mode-specific utilities for walking, cycling, car, and public transport. These utilities are then combined into a logsum-based accessibility measure. This accessibility variable enters the destination choice model as the EMU component.

The beeline distance matrix is the only accessibility-related component that can be reproduced without internal SBB inputs. It is computed directly from traffic-zone centroids in EPSG:2056.

The notebook also contains diagnostic checks comparing alternative impedance measures and inspecting the generated matrices before model estimation.

---

## Model estimation

### `Model.ipynb`

`Model.ipynb` documents the destination choice modelling pipeline used in the thesis.

The notebook estimates multinomial logit destination choice models for leisure travel. The estimation is carried out separately for the four analysis segments defined in the thesis:

- young, short leisure trips (`YS`);
- old, short leisure trips (`OS`);
- young, long/day leisure trips (`YL`);
- old, long/day leisure trips (`OL`).

For each segment, the model explains the probability of choosing a destination traffic zone as a function of destination-side attractivity variables and accessibility-related components. The segmented structure is used to assess whether leisure destination preferences differ across age groups and travel contexts.

The notebook is included to make the modelling logic transparent. It is not intended to be fully re-trained from this repository alone, because the required trip-level data, travel-cost inputs, accessibility matrices, sampled choice sets, and derived model-ready datasets are not publicly distributed.

The notebook covers the main modelling workflow, including:

- preparation of destination-side explanatory variables;
- transformation and standardisation of attractivity variables;
- construction of segment-specific model inputs;
- person-based train and out-of-sample splitting;
- alternative out-of-sample split logic;
- sampled choice-set construction;
- benchmark model estimation;
- final proposed segmented model estimation;
- full-choice-set out-of-sample evaluation;
- coefficient interpretation.

The modelling workflow includes several benchmark specifications. These benchmarks are used to compare the final proposed segmented model against simpler or differently structured alternatives. They include accessibility-only benchmarks, SIMBA-oriented benchmark specifications, and non-segmented model variants.

The final proposed segmented model is the main thesis specification. Benchmark specifications are retained in the notebook because they document the model-development process and provide comparative evidence.

The notebook also includes post-estimation interpretation steps. These include Hessian-based inference and odds-based coefficient interpretation, which are used to translate selected estimated coefficients into more interpretable effects.

---

## Variable analysis outputs

The repository includes the `VariableAnalysis` outputs to document the selection and diagnostic checking of the destination-side explanatory variables.

The relevant files are:

- `TZ_sel.gpkg`
- `TZ_first_sel_log1p.gpkg`
- `corr_log1p_matrix.csv`
- `corr_log1p_pairs.csv`
- `vif_log1p.csv`

These files are included for transparency. They show how the candidate destination-side variables were selected, transformed, and checked before model estimation.

`TZ_sel.gpkg` contains the selected 13 traffic-zone variables before the final log-transformation step.  
`TZ_first_sel_log1p.gpkg` contains the selected destination-side variables after applying the `log1p` transformation where appropriate.  
`corr_log1p_matrix.csv` and `corr_log1p_pairs.csv` contain correlation diagnostics.  
`vif_log1p.csv` contains variance inflation factor diagnostics used to assess multicollinearity among candidate explanatory variables.

These outputs help document why the final variable set was retained for the model.

---

## Robustness analysis

### `Robustness.ipynb`

`Robustness.ipynb` documents the robustness analysis carried out for the destination choice modelling framework.

The notebook is included for transparency. Its purpose is to show how the robustness checks were implemented, how alternative specifications were constructed, and how their results were compared with the baseline specification.

The robustness analysis follows a one-change-at-a-time design. Starting from the baseline model, one modelling component is modified while the remaining estimation and evaluation pipeline is kept unchanged. Each alternative specification is then re-estimated and evaluated using the same full-choice-set out-of-sample procedure as the baseline.

This design makes it possible to assess whether the main empirical conclusions depend on a specific modelling decision.

The notebook covers seven robustness families:

- `R1`: preprocessing choices;
- `R2`: alternative accessibility components;
- `R3`: sampled choice-set construction;
- `R4`: out-of-sample split design;
- `R5`: survey-year sensitivity;
- `R6`: regularisation;
- `R7`: spatial spillovers and residual spatial dependence.

Across these checks, the notebook compares each alternative specification against the baseline using the same core predictive-performance metrics used in the thesis:

- weighted negative log-likelihood;
- mean reciprocal rank;
- McFadden's pseudo-R2;
- Spearman correlation;
- Jensen-Shannon divergence.

The robustness notebook should not be interpreted as an attempt to optimise the specification ex post. Its role is to verify whether the conclusions of the final proposed model remain stable when individual modelling choices are changed.

---

## Reproducibility limitations

This repository is not a fully executable reproduction archive.

The following inputs are not publicly provided:

- MTMC individual-level data;
- extracted trip-level OD tables;
- internal SBB/MOBi5 travel-cost skims;
- SBB accessibility layers;
- accessibility matrices derived from internal inputs;
- large raw geospatial source layers;
- model-ready datasets that depend on confidential or non-distributable sources;
- full estimation outputs.

As a result, some notebooks are provided as transparent methodological documentation rather than as scripts that can be executed end-to-end by an external user.

The parts of the workflow based only on public spatial datasets can be reproduced if the corresponding source data are available locally. The parts relying on confidential, licensed, or very large data require access to those original inputs.

This limitation also applies to parts of `Features.ipynb`: although the feature-construction logic is documented, a complete rerun requires access to large local or externally managed source layers.

---

## How to read this repository

The recommended reading order is:


1. `geojson2gpkg.ipynb`  
   for the preparation of selected GeoJSON inputs;

2. `Features.ipynb`  
   for the construction of destination-side attractivity indicators;

3. `Trips.ipynb`  
   for the documented logic of observed leisure-trip extraction;

4. `Accessibility.ipynb`  
   for the preparation of impedance and accessibility variables;

5. `Model.ipynb`  
   for the destination choice estimation and evaluation workflow;

6. `Robustness.ipynb`  
   for the sensitivity checks around the baseline and final proposed specifications.

This order follows the empirical structure of the thesis: spatial feature construction, trip extraction, accessibility preparation, model estimation, and robustness evaluation.

---

## Notes on data availability

The repository is designed to support transparency, not unrestricted redistribution of all empirical inputs.

Where possible, public geospatial sources are referenced and processed outputs are documented. Where the workflow depends on confidential, licensed, very large, or sensitive data, the notebooks document the processing logic without providing the underlying inputs.

This distinction is important for interpreting the repository correctly. The code explains how the thesis results were produced, but some results cannot be regenerated without access to the original restricted or local datasets.

---

## Citation

When using or referring to this repository, please cite the corresponding MSc thesis:

Benzoni, Stefano (2026). *A Leisure Attractivity Framework for Destination Choice in Travel Demand Models*. MSc thesis, University of Zurich.