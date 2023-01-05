-- Verify spottrek:master.playout on pg

BEGIN;

select
  id ,
  broadcaster_id ,
  contenttype_id ,
  channel_id ,
  advertisement_id ,
  contentlanguage_id ,
  telecastdate ,
  telecastday ,
  telecaststarttime ,
  telecastendtime ,
  telecastduration ,
  descriptor_id ,
  breaknumber ,
  positioninbreak ,
  countinbreak ,
  durationinbreak , -- not sure of data type
  breakduration , -- not sure of data type
  countperprogram ,
  durationperprogram , -- not sure of data type
  totalbreakcountperprogram ,
  totalbreakdurationperprogram ,
  promotypecode ,
  promocategory_id ,
  promosponsorname ,
  promoprogramnamecode ,
  promoprogramthemecode ,
  promoprogramgenrecode ,
  programtheme_id ,
  programgenre_id ,
  programsegmentnumber ,
  numberofsegmentsinprogram ,
  productservicenamecode ,
  brand_id ,
  subbrandnamecode ,
  advertiser_id ,
  commercialprogramnamecode ,
  commercialprogramthemecode ,
  commercialprogramgenrecode ,
  sport ,
  originalorrepeat ,
  live ,
  combinedpositioninbreak ,
  combinedcountinbreak ,
  promoprogramstarttime ,
  commercialprogramstarttime ,
  spotid ,
  lastmodifieddate ,
  adbreakcode ,
  promobroadcastercode ,
  beam ,
  split ,
  market ,
  splitregion ,
  splitplatform ,
  prodhouse ,
  created_on
from master.playout
where false;

ROLLBACK;
