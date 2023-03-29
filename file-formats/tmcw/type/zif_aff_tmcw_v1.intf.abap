INTERFACE zif_aff_tmcw_v1
  PUBLIC.


  "! <p class="shorttext">Object Type</p>
  "! Object type
  "! $values {@link /stmc/zif_aff_tmcw_v1co_object_type}
  "! $default {@link /stmc/if_affzif_aff_tmcw_v1ect_type.dp}
  TYPES ty_object_type    TYPE c LENGTH 16. "/stmc/cr_v_kind.
  "! <p class="shorttext">Object Subtype</p>
  "! Object subtype
  "! $values {@link /stmc/if_aff_tmcw_zif_aff_tmcw_v1btype}
  "! $default {@link /stmc/if_aff_tmcw_v1.datzif_aff_tmcw_v1provider}
  TYPES ty_object_subtype TYPE c LENGTH 16. "/stmc/cr_v_kind.

  CONSTANTS:
    "! <p class="shorttext">Object Type</p>
    "! Object type
    BEGIN OF co_object_type, "/stmc/cl_cm_constants=>e_cm_object_type

      "! <p class="shorttext">Data Model</p>
      "! Data model
      dp  TYPE ty_object_type VALUE 'DP',

      "! <p class="shorttext">Direct Request</p>
      "! Direct requests
      dr  TYPE ty_object_type VALUE 'DR',

      "! <p class="shorttext">Remote Database SQL</p>
      "! Remote Database SQL
      rds TYPE ty_object_type VALUE 'RDS',

      "! <p class="shorttext">Data Provider Request</p>
      "! Data provider request
      rq  TYPE ty_object_type VALUE 'RQ',

      "! <p class="shorttext">User Interface</p>
      "! User interface
      ui  TYPE ty_object_type VALUE 'UI',

      "! <p class="shorttext">Topology</p>
      "! Topology
      tm  TYPE ty_object_type VALUE 'TM',

    END OF co_object_type.
  CONSTANTS:
    BEGIN OF co_object_subtype,
      " DP

      "! <p class="shorttext">Provider</p>
      "! Provider
      provider        TYPE ty_object_subtype VALUE 'PROVIDER',

      "! <p class="shorttext">Function</p>
      "! Function
      function        TYPE ty_object_subtype VALUE 'FUNCTION',

      "! <p class="shorttext">Service</p>
      "! Service
      service         TYPE ty_object_subtype VALUE 'SERVICE',

      "! <p class="shorttext">Conversion Exit</p>
      "! Conversion Exit
      conv_exit       TYPE ty_object_subtype VALUE 'CONV_EXIT',
      " UI

      "! <p class="shorttext">Screen</p>
      "! Screen
      screen          TYPE ty_object_subtype VALUE 'SCREEN',

      "! <p class="shorttext">Core Screen</p>
      "! Core screen
      core_screen     TYPE ty_object_subtype VALUE 'CORE_SCREEN',


      "! <p class="shorttext">Core Favorite</p>
      "! Core favorite
      core_favorite   TYPE ty_object_subtype VALUE 'CORE_FAVORITE',

      "! <p class="shorttext">Core Navigation</p>
      "! Core navigation
      core_navigation TYPE ty_object_subtype VALUE 'CORE_NAVIGATION',


      "! <p class="shorttext">Folder</p>
      "! Folder
      folder          TYPE ty_object_subtype VALUE 'FOLDER',

      "! <p class="shorttext">Bootstrap</p>
      "! Bootstrap
      bootstrap       TYPE ty_object_subtype VALUE 'BOOTSTRAP',


      "! <p class="shorttext">Floorplan</p>
      "! Floorplan
      floorplan       TYPE ty_object_subtype VALUE 'FLOORPLAN',

      "! <p class="shorttext">Color Schema</p>
      "! Service
      color_schema    TYPE ty_object_subtype VALUE 'COLOR_SCHEMA',

      "! <p class="shorttext">Screen Group</p>
      "! Screen group
      screen_group    TYPE ty_object_subtype VALUE 'SCREEN_GROUP',
      " RQ

      "! <p class="shorttext">Request</p>
      "! Request
      request         TYPE ty_object_subtype VALUE 'REQUEST',
      " RDS

      "! <p class="shorttext">Source</p>
      "! Source
      source          TYPE ty_object_subtype VALUE 'SOURCE',

      "! <p class="shorttext">Processor</p>
      "! Processor
      processor       TYPE ty_object_subtype VALUE 'PROCESSOR',

      " DR
      "       request   type ty_object_subtype value 'REQUEST',


      "! <p class="shorttext">Map</p>
      "! Map
      map             TYPE ty_object_subtype VALUE 'MAP',

      " TM

      "! <p class="shorttext">Subtype</p>
      "! Subtype
      sub             TYPE ty_object_subtype VALUE 'SUBTYPE',

    END OF co_object_subtype.

  TYPES:
    "! <p class="shorttext">Object Classification</p>
    "! Object classification
    BEGIN OF ty_object_classification,

      "! <p class="shorttext">Object Type</p>
      "! Object type
      object_type    TYPE ty_object_type,

      "! <p class="shorttext">Object Subtype</p>
      "! Object subtype
      object_subtype TYPE ty_object_subtype,

    END OF ty_object_classification.
  TYPES:
    BEGIN OF ty_object_attributes,
      "! <p class="shorttext">Short Text</p>
      "! Short text
      docr_label_short TYPE c      LENGTH 60,

      "! <p class="shorttext">Description</p>
      "! Description
      docr_label_long  TYPE c      LENGTH 255,


      "! <p class="shorttext">Attributes</p>
      "! Attributes
      attributes       TYPE string,
    END OF ty_object_attributes.

  TYPES:
    "! <p class="shorttext">Technical Monitoring Content</p>
    "! Technical monitoring content (TMCW)
    BEGIN OF ty_main,

      "! $required
      format_version TYPE zif_aff_types_v1=>ty_format_version,

      "! <p class="shorttext">Header</p>
      "! Header
      "! $required
      header         TYPE zif_aff_types_v1=>ty_header_60_cloud,

      "! <p class="shorttext">Classification</p>
      "! Classification
      "! $required
      classification TYPE ty_object_classification,

      "! <p class="shorttext">Attributes</p>
      "! Attributes
      "! $required
      execution      TYPE ty_object_attributes,

    END OF ty_main.


ENDINTERFACE.
