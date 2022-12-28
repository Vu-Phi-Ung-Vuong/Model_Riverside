(self.mfeModules=self.mfeModules||[]).push(["pcmall-sellervoucherlist",["React","Redux","ReactRedux","PlatformApi","ReactRouter","WithInjectReducer","FeatureToggles","ReactDom","Account","Experiments","Platform","NebulaCore"],function(e,t,r,o,c,a,s,i,l,n,u,h){return(self["mfeStartuppcmall-pcpagevoucherdetail"]||function(){})(614),["pcmall-pcpagevoucherdetail",(self.wpJsonpPcmallPcpagevoucherdetail=self.wpJsonpPcmallPcpagevoucherdetail||[]).push([[614,455],{7481:function(e,t,r){"use strict";r.d(t,{Z:function(){return y}});var o=r(3804),c=r.n(o),a=r(893),s=r.n(a),i=r(7561),l=r(9877),n={localSellerVoucher:"fMuliD",voucherRightInfoContainer:"Ax1gnw",voucherRightInfo:"OWhQTX",voucherRightContainer:"LMftOW",voucherLeft:"_0RNxyO",logo:"ugqDad",expiry:"NnO9xG",header:"lSfUeI",officialHeader:"w1z2TD",preferredHeader:"rNTbI5",sMartHeader:"tdN833",specificProduct:"jYK2YY",voucherClaimFieldSolid:"_2nEy8v",applyBtn:"_1t187B",ofs:"BpOvRD",sMart:"voVd7V",border:"D1DNly",bottomBorder:"NRtI7o",topBadge:"xk4GQg"},u=r(7122),h=r(6775),d=r(6704),m=r(5529),p=r(5377),v=r(5325),f=r(7691),_=r(4742),g=r(6102),E=r(429),N=r(119),C=r(6866),S=r(5606),R=r(6781),x={progress:N.Z.INIT},y=(0,R.Z)((0,d.withI18nCollections)([l.L])((function(e){var t=e.voucher,r=e.className,o=e.voucherLocation,a=e.hideShopLogo,l=void 0!==a&&a,R=e.disableClaimingOnFullyClaimed,y=void 0!==R&&R,O=e.usePreferredShopBackgroundColor,T=void 0!==O&&O,b=e.isShopeeMart,D=e.sizeStyle,P=t.quota_type,L=t.is_shop_official,M=t.shop_id,I=t.promotionid,Z=t.voucher_code,w=t.percentage_used,B=P===i.Y.USAGE_CONTROLLED_PRIVATE_VOUCHER,V=(0,v.useSelector)((function(e){return(0,m.Au)(e.featureToggles,p.v_0)})),H=(0,v.useSelector)((function(e){return t&&t.voucher_code&&e.voucher.claimProgress[t.voucher_code]||x})),k=t.is_claimed_before||H.progress===N.Z.OK,A=k?(0,S.np)(t)?2:1:0,F={location:o,shopid:M,promotion_id:I,status:A,voucher_code:Z,usage_progress:w},K=(0,_.Z)("SellerVoucherBody",F,[A]),U=(0,h.useHistory)(),z=(0,C.oW)(),G=function(){var e=(0,f.D)(t,{useVLP:V,enableEncodeUrl:z});(0,S.np)(t)&&(e=(0,S.Xz)(t,e)),U.push(e||"")},W=(0,g.Z)("VoucherShopIcon",F),Y=c().useMemo((function(){return k?t.remaining_usage_limit||0:t.usage_limit_per_user||0}),[k,t]);return c().createElement("div",{ref:K,className:s()(n.localSellerVoucher,r)},Y>1&&c().createElement("div",{className:n.bottomBorder}),Y>1&&c().createElement("div",{className:n.rightCorner},c().createElement(u.ZD,{num:k?t.remaining_usage_limit||0:t.usage_limit_per_user||0})),c().createElement(u.rO,{voucher:t,usePreferredShopColorScheme:T,isOfficial:L,isShopeeMart:b},c().createElement(u.Tg,{voucher:t,className:n.voucherLeft,voucherLocation:o,showRightBorder:!l,onClick:!l&&W||void 0},!l&&c().createElement(u.Mg,{shouldGoToShopPage:!0,logoClassName:n.logo})),c().createElement(u.Ec,{className:n.voucherRightContainer,voucherLocation:o,voucher:t,onClick:G},c().createElement("div",{className:n.voucherRightInfoContainer},c().createElement("div",{className:n.voucherRightInfo},c().createElement(u.PU,{sizeStyle:D,className:s()(n.header,T&&(b?n.sMartHeader:L?n.officialHeader:n.preferredHeader))}),c().createElement(u.s_,{voucher:t,isOfs:L,isShopeeMart:b,className:n.specificProduct}),c().createElement(u.EU,{className:n.expiry,voucher:t,upcomingGrayText:T}),l&&c().createElement("div",{className:n.border}))),c().createElement(E.ZP,{targetData:{voucher:t,voucherLocation:o},targetType:"ButtonClaimVoucher"},c().createElement(u.ve,{voucher:t,className:s()(L?n.ofs:"",b?n.sMart:"",n.voucherClaimFieldSolid),applyBtnClassName:n.applyBtn,disableClaimingOnFullyClaimed:y,afterClaim:G,applyText:(0,d.t)("label_voucher_seller_voucher_use"),shouldExpandButtonClickArea:!0,needAnimation:!0,needSzDfp:!0}))),B&&c().createElement(u.Vp,{onTop:l})))})))},5864:function(e,t,r){"use strict";r.d(t,{Z:function(){return n}});var o=r(3804),c=r.n(o),a=r(6704),s=r(9877),i=r(429),l=r(7481),n=(0,r(6781).Z)((0,a.withI18nCollections)([s.L])((function(e){var t=e.vouchers,r=e.isShopeeMart,o=e.targetType,s=e.targetData;return t?c().createElement(i.ZP,{targetType:o,targetData:s},c().createElement("div",{className:"voucher-ticket-list"},c().createElement("div",{className:"voucher-ticket-list__header"},(0,a.t)("label_shop_voucher")),c().createElement("div",{className:"voucher-ticket-list__sub-header"},(0,a.t)("voucher_shop_description")),c().createElement("div",{className:"voucher-ticket-list__list",tabIndex:-1},t.slice(0,50).map((function(e,t){return c().createElement(l.Z,{voucher:e,className:"P+04Au",key:t,voucherLocation:t,isShopeeMart:r})}))))):null})))},6686:function(e){"use strict";e.exports=l},1408:function(e){"use strict";e.exports=n},1437:function(e){"use strict";e.exports=s},6161:function(e){"use strict";e.exports=u},6704:function(e){"use strict";e.exports=o},3804:function(t){"use strict";t.exports=e},7274:function(e){"use strict";e.exports=i},5325:function(e){"use strict";e.exports=r},6775:function(e){"use strict";e.exports=c},4857:function(e){"use strict";e.exports=t}},0,[[5864,666,788,573]]]),"Z",null]},1]),function(){if(window&&window.__DECKER_HOOK__){var e=window.__DECKER_HOOK__;function t(){e.sendToDevtools("MFE_LOAD_SLOT",{slotName:"pcmall-sellervoucherlist",tag:"pc-v5.28.0",branch:"heads/pc-v5.28.0",lastCommit:"chore(release): pc-v5.28.0",lastCommitHash:"386a101a5abe6b6034f5a3aff8bec3dc7e90cc7b",updated:"2022-11-24T03:54:17.449Z"})}e.on("MFE_RETRIEVE_SLOTS",t),t()}}();
//# sourceMappingURL=https://sourcemap.webfe.shopee.io/pcmall-voucher/_/pcmall-sellervoucherlist.9fc9e7bb4069e6304db7.legacy.js.map