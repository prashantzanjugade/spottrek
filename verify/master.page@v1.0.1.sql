BEGIN;

select * from master.page where name in ('dashboard','monitoring-report','ad-hoc-report','summary-report','feed-missing-report','brand-master','channel-master','content-language-master','genre-master','program-master','promo-master','account-manager-master','user-master','rate-card','client-listing','group-advertiser','renew-client','subscription-listing','subscription-approvals','billing-details','billing-requests','billing-adjustments');

COMMIT;
