# Get Started

Check out our [**Blocks Directory**](https://looker.com/platform/blocks/directory#data) for a full list of data blocks and use cases

[**Start Modeling**](https://discourse.looker.com/t/data-block-data-block-setup-instructions-and-everything-in-between/5949) by reading through this discourse post.



# DDL Statements


### Schema

(**Note**: The [original version](https://github.com/llooker/datablocks-gsod) of DDL statements are for Amazone Redshift, below are the Getaround-customized DDLs for Postgres.)

```

CREATE table datablocks_gsod.zipcode
(
  zip_code integer,
  latitude numeric,
  longitude numeric,
  city text,
  state text,
  county text
);

CREATE table datablocks_gsod.zipcode_station
(
  zip_code integer,
  year integer,
  nearest_station_id text,
  distance_from_nearest_station numeric
);

CREATE table datablocks_gsod.zcta_county_map
(
  zcta5 text,
  state text,
  county text,
  geoid text,
  poppt bigint,
  hupt bigint,
  areapt bigint,
  arealandpt bigint,
  zpop bigint,
  zhu bigint,
  zarea bigint,
  zarealand bigint,
  copop bigint,
  cohu bigint,
  coarea bigint,
  coarealand bigint,
  zpoppct numeric,
  zhupct numeric,
  zareapct numeric,
  zarealandpct numeric,
  copoppct numeric,
  cohupct numeric,
  coareapct numeric,
  coarealandpct numeric
);

CREATE table datablocks_gsod.stations
(
  usaf text,
  wban text,
  name text,
  country text,
  state text,
  call text,
  lat text,
  lon text,
  elev text,
  begin timestamp with time zone,
  "end" timestamp with time zone
)
;

CREATE table datablocks_gsod.gsod
(
  stn text,
  wban text,
  year integer,
  mo integer,
  da integer,
  temp numeric,
  count_temp integer,
  dewp numeric,
  count_dewp integer,
  slp numeric,
  count_slp integer,
  stp numeric,
  count_stp integer,
  visib numeric,
  count_visib integer,
  wdsp numeric,
  count_wdsp integer,
  mxpsd numeric,
  gust numeric,
  max numeric,
  flag_max text,
  min numeric,
  flag_min text,
  prcp numeric,
  flag_prcp text,
  sndp numeric,
  fog smallint,
  rain_drizzle smallint,
  snow_ice_pellets smallint,
  hail smallint,
  thunder smallint,
  tornado_funnel_cloud smallint
);
```
