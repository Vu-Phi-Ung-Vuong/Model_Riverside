!function(){"use strict";var e,a,c,d,f,b,o={},t={};function r(e){if(t[e])return t[e].exports;var a=t[e]={id:e,loaded:!1,exports:{}};return o[e].call(a.exports,a,a.exports,r),a.loaded=!0,a.exports}r.m=o,r.x=function(){},r.microfeA=function(e,a){var c,d,f=e.exports;function b(){c(f)}var o=e.exports=new Promise((function(e,a){c=e,d=a}));a().then((function(){if(e.exports.then){var a=e.exports;e.exports=o,a.then(b,d)}else b()})).catch(d)},function(){var e={0:{version:"1.0.34"},1:{version:"0.2.46"},2:{version:"1.1.19"},3:{version:"4.0.0"},4:{version:"2.3.1"}},a={0:"shopee__settings",1:"shopee__domain",2:"shopee__language",3:"shopee_common__currency",4:"shopee_common__time"},c={type:"module",requester:"pcmall-static"};if(r.microfeM=function(d){return Platform.getModule(a[d],Object.assign({},c,e[d]))},r.microfeI=function(d){return Platform.getModuleImmediate(a[d],Object.assign({},c,e[d]))},window&&window.__DECKER_HOOK__){var d=window.__DECKER_HOOK__;function f(){d.sendToDevtools("MFE_FEDERATED_MODULES_INFO",{base:c,map:e,name:a})}d.on("MFE_RETRIEVE_FEDERATED_MODULES_INFO",f),f()}}(),r.amdD=function(){throw new Error("define cannot be used indirect")},r.amdO={},r.n=function(e){var a=e&&e.__esModule?function(){return e.default}:function(){return e};return r.d(a,{a:a}),a},a=Object.getPrototypeOf?function(e){return Object.getPrototypeOf(e)}:function(e){return e.__proto__},r.t=function(c,d){if(1&d&&(c=this(c)),8&d)return c;if("object"==typeof c&&c){if(4&d&&c.__esModule)return c;if(16&d&&"function"==typeof c.then)return c}var f=Object.create(null);r.r(f);var b={};e=e||[null,a({}),a([]),a(a)];for(var o=2&d&&c;"object"==typeof o&&!~e.indexOf(o);o=a(o))Object.getOwnPropertyNames(o).forEach((function(e){b[e]=function(){return c[e]}}));return b.default=function(){return c},r.d(f,b),f},r.d=function(e,a){for(var c in a)r.o(a,c)&&!r.o(e,c)&&Object.defineProperty(e,c,{enumerable:!0,get:a[c]})},r.f={},r.e=function(e){return Promise.all(Object.keys(r.f).reduce((function(a,c){return r.f[c](e,a),a}),[]))},r.u=function(e){return({91:"address.TH_address_to_zip-live-json",117:"PageGroupBuyList",147:"ProductDetailsPage",182:"ShopeeMart",197:"EReceiptForm96",215:"EReceiptForm37",221:"EReceiptForm73",285:"EReceiptForm128",293:"PageDownloadApp",369:"PageShareExpiration",425:"EReceiptForm66",462:"PageFlashSale",473:"RouteRedirectToMyAccountPayment",559:"OfficialShopRecommendPagePopular",561:"PageVerifyPassword",566:"PageVerifyEmail",569:"InformationBlockES",601:"ShopeeFoodPaymentSelectionPage",639:"InstallmentFilter",642:"BannerSDKPlayground",726:"EReceiptForm55",728:"EReceiptForm152",773:"EReceiptForm63",809:"PageSimilarProducts",866:"EReceiptForm49",975:"InformationBlockPL",986:"InformationBlockBR",993:"ShopeeMartDealsPage",1086:"ResetPasswordByEmail",1110:"EReceiptForm29",1136:"SignupByOTP",1178:"PageDailyDiscoverCampaign",1179:"InformationBlockVN",1186:"f52c856809e7ffd956e1330b48fbd34d",1200:"PageOAuth",1226:"EReceiptForm133",1235:"EReceiptForm14",1242:"InformationBlockID",1281:"SearchPage",1286:"PFBCookieSetter",1299:"SearchInMicrositePage",1303:"EReceiptForm60",1326:"firebase",1331:"PageRedirectToFlashSaleSMart",1337:"PCSummaryNotificationContainer",1430:"PaymentSelectionPage",1466:"PageVerifyLinkReceiver",1540:"PageYouMayAlsoLike",1575:"RedirectRwBrowseDeal",1615:"RouteRedirectForSBrowser",1714:"UserPage",1951:"EReceiptForm1",1968:"PageDPPaymentSelection",1981:"ResetPassword",2063:"PageAuthenticationIVS",2109:"RedirectRwMyGroups",2142:"LoginByPassword",2161:"PageAddressSelectionDemo",2162:"address.TW-live-json",2249:"EReceiptForm145",2252:"EReceiptForm97",2258:"PageAddressDemo",2357:"EReceiptForm35",2372:"EReceiptForm118",2412:"PageBranchReselection",2446:"PageAntiCrawlerError",2460:"EReceiptForm114",2496:"CollectionPage",2553:"PageVoucherLanding",2601:"OrderListPage",2718:"EReceiptForm5",2810:"address.ID-live-json",2845:"PageIdentityVerification",2854:"RedirectToCoinsHistory",2897:"sentry",2935:"PageItemRatings",2964:"ShopeeMartSearchPage",2975:"hash",3046:"InformationBlockCL",3053:"address.MX-live-json",3121:"PageSVSPaymentSelection",3149:"PageSearchUser",3152:"OfficialShopRecommendPageJustForYou",3186:"PageAntiCrawlerVerify",3187:"PageUserGDPRCookieSettings",3269:"EReceiptForm27",3395:"PageShopHotDeals",3423:"EReceiptForm126",3467:"PageDailyDiscover",3507:"PageUserAddress",3519:"EReceiptForm130",3538:"ShopeeMartVoucherLandingPage",3559:"EReceiptForm0",3573:"EReceiptForm19",3621:"PageKYCFreeShipping",3679:"AbandonedCartLandingPage",3750:"EditOrderAddress",3754:"PageGenericDownloadApp",3758:"PageUserPassword",3785:"InformationBlockTH",3790:"LikedItemsLandingPage",3817:"EReceiptForm78",3823:"EReceiptForm86",3917:"CoinExpirationPage",3933:"EReceiptForm148",4001:"OrderDetailPage",4006:"InformationBlockFR",4031:"SearchResultVoucher",4044:"address.TH_address_to_zip-en-live-json",4075:"EReceiptForm26",4106:"AccountAddPassword",4147:"PageSeoBrand",4166:"EReceiptForm107",4255:"PageVerifyQr",4269:"EReceiptForm146",4281:"PageRedirectAutoCollection",4325:"MyAccountPage",4343:"PageAuthenticationShopeePay",4344:"PageLINEIntegration",4376:"PageAllCategories",4406:"address.PH-live-json",4474:"PageVerifyCaptcha",4518:"DebugInformation",4540:"EReceiptForm32",4557:"PageIntegrationAddressCallback",4571:"PageUserGDPR",4575:"DailyDealsLanding",4596:"ReturnPage",4615:"PageWelcomePackage",4643:"EReceiptForm85",4645:"PageFindSimilarProducts",4699:"EReceiptForm89",4702:"RouteRedirectToHome",4794:"AccountChangePhoneNumber",4812:"address.CL-live-json",4859:"ShopeeMartAddOnDealsPage",4864:"EReceiptForm3",4935:"TopProductPage",5144:"LoginByWhatsappToken",5174:"SocialBindAccount",5216:"address.ID_address_to_zip-live-json",5279:"EReceiptForm20",5322:"LoginByOTP",5345:"EReceiptForm77",5366:"PageAccountRedirect",5375:"AccountChangePassword",5415:"PageOrderReturnInstructions",5440:"PageOrderReturnSelectCourier",5461:"EReceiptForm8",5479:"ComponentBuilderPlayground",5483:"InformationBlockPH",5484:"SeparateBundleLanding",5500:"ProductLabelLanding",5703:"address.TH-en-live-json",5738:"PageShopeeBuddy",5770:"EReceiptForm136",5823:"PCLazyFooter",5847:"address.TW_address_to_zip-live-json",5873:"address.TH-live-json",5897:"PageIframeDataPipe",5959:"InformationBlockSG",6046:"EReceiptForm42",6057:"SearchResultFilterApplied",6061:"PageVerifyOTP",6081:"InformationBlockAR",6082:"address.CO-live-json",6147:"EReceiptForm45",6184:"ShopeePlayPaymentSelectionPage",6197:"EReceiptForm132",6207:"WidgetGallery",6222:"EventPage",6231:"PageTopProductsCategoryLanding",6239:"NewUserTopProductLanding",6243:"PageFromSameShop",6255:"ShopeeMartLCategoryPage",6326:"LogisticAddressModal",6368:"EReceiptForm82",6470:"PageShopRatings",6485:"AccountChangePhoneNumberV2",6491:"EReceiptForm58",6539:"LogisticsSelectionModal",6547:"AccountAddPhoneNumberV2",6623:"EReceiptForm139",6743:"LoginByQRCode",6756:"address.VN-live-json",6776:"InformationBlockIN",6805:"EReceiptForm135",6922:"PageReportUser",6980:"EReceiptForm34",6995:"test-sdk-new",7026:"MarketplacePaymentPage",7037:"ProductLabelFilter",7066:"EReceiptForm50",7086:"EReceiptForm116",7116:"EReceiptForm57",7119:"shopee-phonelib",7171:"PageVerifyEmailLinkSender",7173:"EReceiptForm22",7194:"EReceiptForm141",7412:"EReceiptForm102",7464:"HotWordList",7537:"FindSimilarProductResult",7565:"WebTrackerBridge",7598:"PageIntegrationTWEInvoice",7642:"PurchaseListPage",7708:"NewUserDealsLanding",7761:"PageBrandSale",7776:"PageVerifyLinkSender",7791:"EReceiptForm38",7793:"CookieConsentBannerV2",7813:"SingleBundleLanding",7839:"InformationBlockMY",7905:"EReceiptForm88",7917:"EReceiptForm62",7925:"address.TW_zip_to_address-live-json",7942:"EReceiptForm92",7950:"shopee_duss",7978:"EReceiptForm91",7997:"ShopeeMartBuyAgainPage",8009:"PageAntiCrawlerTest",8035:"PageSearch",8044:"CurationFilter",8097:"PageCRM",8122:"address.BR-live-json",8130:"SearchResultCorrected",8153:"EReceiptForm71",8214:"EReceiptForm65",8225:"FooterInfoBlockPreview",8257:"InformationBlockTW",8293:"MartSearchNoResultGeneral",8299:"address.PL-live-json",8345:"EReceiptForm110",8419:"EReceiptForm138",8422:"EReceiptForm100",8501:"ShopRecommendedForYouPage",8505:"EReceiptForm70",8517:"EReceiptForm104",8534:"PageVerifyEmailLinkReceiver",8616:"InformationBlockMX",8623:"InformationBlockCO",8637:"PageUserEmail",8681:"EReceiptForm12",8696:"ShopSearchPage",8713:"PageLKPPSSO",8729:"PageGDPRCookieGuestSetting",8731:"EReceiptForm31",8798:"PageFlashSaleSMart",8850:"EReceiptForm54",8861:"EReceiptForm43",8912:"EReceiptForm15",8953:"ProgramForm",8958:"EReceiptForm9",8969:"EReceiptForm112",8970:"EReceiptForm11",8972:"test-sdk-stable",9090:"PageUserPayment",9148:"PageCheckout",9171:"EReceiptForm124",9196:"address.SG-live-json",9211:"EReceiptForm52",9276:"PageNotification",9358:"AccountAddPhoneNumber",9393:"PageUserPhone",9489:"ShopeeMartRecommendationSeeMore",9607:"EReceiptForm6",9611:"PageDevtool",9618:"EReceiptForm108",9633:"EReceiptForm99",9695:"db0f232d6248515605a4ab4db4344121",9720:"EReceiptForm105",9796:"EReceiptForm120",9802:"address.MY-live-json",9924:"PageCustomKYCTW",9936:"EReceiptForm83",9968:"LegacyFindSimilarProductResult"}[e]||e)+"."+{91:"8bfe403d725a4a49",117:"c78573153ef4066a",147:"cfceb657532990ba",182:"3b2e4f3f9ba3d1aa",197:"6f122fbac2a288be",215:"cbc25ddfed4e80bf",218:"f15b801c21e68e72",221:"52182605fce360b3",285:"d0d867d15cb3b76f",293:"a52416f1f86b4400",369:"77959b448573e4b3",425:"da5a93389a8dffa9",462:"db034c397c373162",473:"681890a6f6bc1fed",517:"1eea3654ea958fc4",534:"2719224646b4b4a6",559:"04c60d5b70fc8d0e",561:"9ca099cbe972cb33",566:"9072b4f2bd1c2c2a",569:"fb913bfde4bcf407",601:"38b3b2022b3ae03f",639:"19765aa2cfb319f0",642:"027bdd25bf84cf7b",726:"554a27fb2d6e6cc0",728:"3440b25eaa1d83cf",753:"9383707516db3ebd",773:"06f1c0f78524ebac",809:"48f4f6121504e590",866:"a2d11c12aa527b4b",891:"ce6f428749cd231b",952:"e8156d9f37d42f74",975:"063a2cb3d0232dca",986:"3f0b7ec483305050",991:"6f9528665f135349",993:"80e1f3abb0cefbab",1086:"ffebe34a22619eda",1110:"641176f3840a61c2",1136:"bf7b2e6c785de385",1178:"c33db92d586b6969",1179:"9e0a917b1a8c619e",1186:"c823e34db6ba711c",1200:"821ba0407817e4e3",1226:"130abd54b4e1808c",1235:"cac7b6ed365de864",1242:"91904f07f3ae2cfe",1281:"8493113ed3a299ac",1286:"759d3c6f29d2057a",1299:"8c7eb667f96315f5",1301:"1688c78e1855170f",1303:"6a7342add58f3e6c",1314:"76f108ea4efed665",1326:"9fafead03e87c4c4",1331:"31f22512aa4cede8",1337:"e5996a54fc5337ce",1430:"ea6c5fda6098e0b2",1466:"999ee7df7b981483",1482:"e66e5c96769958a3",1540:"19b1629d7933f006",1575:"04abced6a5848472",1610:"b615bb98eef6b12e",1615:"a2561e0e2e9d6952",1641:"f2d3e34855d3ad44",1660:"ce1e2f42c100ddd2",1670:"8ec9396c0e96df58",1714:"c5fcc6b07a04600f",1797:"e8b1f16e1527e132",1827:"c6310fd61f85cb4a",1836:"4f316974fb3299ee",1904:"4c85fedc4f18180c",1918:"77ad74b543495075",1951:"ff04ed57182f1df7",1959:"4c76afacf54e3c6f",1968:"2784e9483f77c01f",1981:"36ed2bd7eaca5267",2021:"c66199351790385a",2063:"de10df0612c2ead2",2109:"e8a681ba99f22f75",2142:"8903904bb5750c28",2161:"5ec2a0e6f05c0e56",2162:"c942ad1eba6d0734",2249:"6d72af87bb8afd78",2252:"bc6964f1e08d0d8e",2258:"d73e1efe16fd1cce",2289:"970b7201d8b8e6a5",2357:"dd0ac2451871dc41",2372:"5b3745bf2e11f172",2387:"1277db24daa64f7c",2412:"230b58d14a264c18",2446:"a34e0346e3deb5f5",2460:"ee86e32c54c73e1c",2496:"5e86f71493fc8783",2553:"9ca00f9d62d6591f",2559:"b7e8a2766f80aa23",2601:"068458d6242890bf",2718:"f077481281b53434",2810:"a713f4bf7f62c481",2845:"2d36d6157df2f9a0",2854:"fb79f0ba26dda47a",2874:"cddc0bb391614274",2897:"1e109e6c975c4e01",2935:"905745a30ef7c735",2964:"75d8595fe7392d75",2975:"14804f9e13db5ba9",3046:"601fc2de5957e5f5",3053:"24a09e3b25b1f5e0",3121:"6ed6539c7315ff85",3149:"7cba05ddfa20cc59",3152:"ae12c307da8f4c1f",3186:"4d904536a8b49974",3187:"ee6c38c234a51477",3196:"43d331aca1b6ffbf",3214:"a683a5c24e8f6446",3269:"5d0411b70ba9f079",3298:"b50ff7b6c28937aa",3395:"9389455b589562ba",3397:"87514391e29c2256",3423:"b372545fc2be07ed",3467:"636586982698c88d",3507:"30a9d71627a3f582",3519:"f8da2d788adc5369",3538:"7536f7e433ae5f8d",3559:"d619348a2cbfd4a1",3573:"ce9ac84a09ee297d",3621:"89297057beea013e",3679:"2faa0c63517465f3",3726:"f2aacf598f90a317",3728:"545b34a055a62b64",3750:"b98914013f280ecb",3754:"0044d4d18a04fe7b",3758:"adebc883ae7ec9f2",3785:"41444625f5d20822",3790:"749bfb1498142370",3817:"f49f78bed18860cc",3823:"f12a2e4b654f2209",3917:"be904e05c0b4aa62",3933:"c0c4b9ae4cebfc5f",4001:"725a160729c00c45",4006:"c8862bd68fedc8b2",4031:"b830fdc24405c247",4044:"b472890eb748ce58",4075:"55836c0a24d1019d",4106:"acad1f50eb2e57e5",4147:"0e39169bd54ddb68",4166:"ab7d14a8a5b9f87a",4255:"df55617fff882c85",4269:"bfe4fb508c836618",4281:"477d385bb73b20eb",4323:"4dbc51151e4d2614",4325:"9db57496598bdcad",4343:"53fc3571a6cea164",4344:"e82084948310d2e5",4376:"f0e2327e860f8584",4406:"948e2ebfc95670ab",4474:"e37305ce8f51d4d4",4495:"e681488f4fb67769",4518:"baca17664c446f04",4540:"1b34e222ad37ba05",4557:"277713faa083ad6b",4571:"03de74819b43ed15",4574:"69eb37f29874989d",4575:"1287e2fe1b94189b",4590:"81bb3f3a99f40933",4596:"72270084b07c8350",4609:"738551cdc1a850ba",4615:"3f1769b4bd6a61a2",4643:"eeb870e1f98b31ba",4645:"f3c92c1974a834f7",4685:"d175d9b3a2b466dd",4699:"bb90a5752fd41f81",4702:"f7c9b27790674d47",4721:"e455a707c487d003",4744:"d5a935ddfb2cf97d",4771:"1555b926693d1b89",4794:"df0d597434dcf119",4812:"247fa88d7e245893",4836:"7b66f06b72e60869",4859:"a2f55e5ef9271942",4864:"2c7efd17a8fca7de",4935:"d1640a4fdc3270b9",4971:"25502e1d15871878",4984:"9b9de5d0b9ebcac8",5016:"23cbbe105b3803c4",5119:"0f986f8485fb1e36",5128:"045ede1537ac66c7",5144:"062da80787a12b6f",5174:"b2bfe350677f45a2",5188:"9abb7b2b5fe73552",5210:"bf3a32bd567e9122",5216:"0f0c3ae4715bd486",5279:"7edf32f86d9277b4",5322:"7b8fb8b8ae9a86d5",5345:"e6bda3253f9bfac3",5356:"1c7fde26b2d581d3",5366:"a0bb616c4808e1bd",5375:"9eebff69df7778b7",5415:"19a94ac1ea734371",5423:"0880013be44eeee0",5430:"a3732f582bc66866",5440:"ac2d896faa69d2d5",5461:"f907ec97792c2713",5479:"051e8ba53ea44a75",5483:"eff500d2b45e1bd3",5484:"08da058e23cb4129",5500:"ec65a8b749ba0c89",5512:"7add6927623bb523",5604:"dd570e389c99c3b3",5703:"98facba037cb91ec",5738:"c0810f3a4951a03c",5770:"a91cc6de8f6ef391",5818:"ec0735f2d79462d4",5823:"c4722add4b06a850",5847:"d0b3733b5111b894",5873:"a13acc9854434709",5897:"0cc6e9af0db69174",5959:"0f98322be99ca696",5971:"8fc0fbe154f614f8",6002:"0b5a835da735ef2e",6022:"3f99178d82200fe7",6040:"a2d242089214d1b4",6046:"486e5394501d4691",6051:"63d4b53727eb601f",6057:"028b620c4eba83f4",6061:"79b0db1e85620cc5",6081:"671f2587de332c4c",6082:"13d9f9381e01baf7",6134:"e59e4dc022e359c1",6147:"e9409e9991962d75",6156:"1a0eca2e5de1de8d",6184:"760e7a16551b2074",6197:"501b6565bed2a9ea",6207:"9d33cbb25fda5541",6222:"fe5312fe29143c9a",6231:"d546ad8a332805e0",6239:"62a334c63efb3197",6243:"5dbee34d8585266d",6255:"eeff9fd19b9a0391",6266:"ac57e6b996bdadbb",6277:"d04ba5e692c0d179",6326:"565b61e22997f8b9",6368:"98f955e76f625e4b",6470:"748a6654a61ce18e",6473:"51b9823c9695a560",6485:"e9b2ea08ba9fa3c8",6491:"76853d09ba6b7c47",6539:"612ffc94965421b3",6547:"366eb9e68a0c80db",6623:"2a7ea228b7d2e37c",6629:"fb6468a8391b3971",6645:"b3aaa877fe4c72f4",6677:"995c1d28785675a2",6743:"ceb643371a9ec8d2",6756:"cd62a8dda8b9b4f4",6776:"a76ecb7fe14011b9",6805:"2e15db2762e0f842",6858:"f436c82252f5a13a",6908:"6171a8f3ac61dd06",6922:"051c95a05ee1cadf",6980:"58ab0fb10a00e3f1",6995:"735b7a8d619dba52",7026:"b70314b0e3c22114",7037:"3c9ce0599dbddfdb",7045:"b5200aa3e8200b93",7066:"0469172e2e7b6497",7086:"57910450b00ff662",7088:"43a8ee0ed786e28b",7094:"39510176d226e73c",7116:"53b4634ff1dbca50",7119:"f9f4abdfa12e9a7e",7171:"0dce4ab01f29546f",7172:"7bfda2f1de173723",7173:"f1aa898221ef33cf",7194:"1ac806056e99bdf9",7412:"1ce88890a97a1849",7464:"2f558d8ba760ffbe",7510:"1e7e93af72ecac45",7537:"05e3489d981d5b67",7565:"e9dba9b1fea06ad0",7578:"811dd77d7a3a15c1",7598:"bebd53a11f72895a",7624:"78fe96e48d071cab",7642:"6fef8587905d901e",7708:"78fec29f53dbe621",7761:"6957ef3a741f2240",7766:"cf2c4c91582a778f",7776:"d0aab990f58c1355",7791:"5c0eb52ff454c45a",7793:"695a4c55ef1e4af5",7813:"c802482c802e061a",7822:"2669cf257ed71f40",7839:"59361dab49bb2305",7856:"36797193e814e20e",7905:"61749b2abfe642e5",7917:"6c50e06058bccf4b",7925:"034642194a1cb303",7942:"ef51123023ca8c5e",7950:"ae81af1cb9fab444",7978:"bdddab9001928427",7997:"0c7699b75575e4c7",8009:"6fa986c72960f564",8035:"998a8612be0bfb12",8044:"00578492b6c39815",8097:"9385f222f1d7c7d2",8122:"ab9784048f5ce44b",8130:"f501353e8b80c283",8153:"0c57df781ca6aba3",8214:"651cf94b8fa4b372",8225:"05ac0f55fbf90591",8257:"9eebfba579ec5b5a",8293:"66a8808db8157a10",8299:"c56709abb821d85d",8345:"1eb59993a46692df",8419:"b7b65cbdd60d5f0a",8422:"e9323763649989cc",8495:"4506341db1e10f7f",8501:"802bd9dea35e34b6",8505:"4cf650b2f3947c2f",8517:"7ba8dc85cff7be62",8533:"777cc58f5cc40be2",8534:"8e1e173dd7d1ce8e",8616:"a6293ba610f66f5d",8623:"90b38ff01868019d",8637:"7ce8a6ef7dfa990c",8681:"730027d235a71db7",8696:"5c02951f6bd6b884",8713:"39e69c04dcd9efed",8729:"2c73ceb176565faa",8731:"01d8f3495790f521",8798:"5ef0b0b5dabf3602",8850:"bb1a1b4294e74616",8861:"4a93aa0350fe7301",8912:"a8dfff93b1ea6489",8953:"818497e779361db7",8958:"a01e68eb7313f93b",8969:"07d1b54183fd753c",8970:"0f6009b4238c3a64",8972:"f55dcfadb1154a64",9016:"4cc369b008f0ba3b",9090:"a2e221d2552f1599",9107:"14af96d82355ff84",9148:"676bef3edc8d7043",9171:"746bc705e91974fb",9196:"ada43bb54e56da16",9211:"e248157a40bd85a8",9238:"fa5ad08bd0de0710",9239:"9511274d55b07443",9276:"8d4ced5acdb72fa8",9291:"9b92fc8ce9c4d395",9358:"eaa9f15803f1cfd6",9386:"66b21ced212388ab",9393:"8e068239ba26b731",9437:"cca9cdd891f85295",9489:"efa8285b2762c883",9562:"76bf6f3ead763fba",9607:"a0163b5be0e96d6a",9608:"9fba0ea2a958bf2e",9611:"784d75eb52c9cb96",9618:"0f1370563675a4d0",9633:"5af23c452c3ef178",9669:"a59af42deb612f46",9695:"c2b44adec69e262d",9720:"b2fd6f73dbea1cf1",9796:"771c187b923e72f3",9802:"261816bf3de981e8",9870:"af70e8fc13ce593c",9924:"d32492447126e695",9936:"e1b4184b59f468f5",9948:"0252ecc3817e77e0",9968:"ad6871e5edc666f4"}[e]+".legacy.js"},r.miniCssF=function(e){return 4296===e?"bundle.527ba6dabd72ece7.legacy.css":e+"."+{197:"6f122fbac2a288be",215:"cbc25ddfed4e80bf",285:"d0d867d15cb3b76f",293:"a52416f1f86b4400",369:"77959b448573e4b3",425:"da5a93389a8dffa9",559:"04c60d5b70fc8d0e",561:"9ca099cbe972cb33",566:"9072b4f2bd1c2c2a",569:"fb913bfde4bcf407",601:"38b3b2022b3ae03f",642:"027bdd25bf84cf7b",726:"554a27fb2d6e6cc0",728:"3440b25eaa1d83cf",773:"06f1c0f78524ebac",809:"48f4f6121504e590",866:"a2d11c12aa527b4b",952:"e8156d9f37d42f74",975:"063a2cb3d0232dca",986:"3f0b7ec483305050",993:"80e1f3abb0cefbab",1086:"ffebe34a22619eda",1110:"641176f3840a61c2",1136:"bf7b2e6c785de385",1178:"c33db92d586b6969",1179:"9e0a917b1a8c619e",1200:"821ba0407817e4e3",1226:"130abd54b4e1808c",1235:"cac7b6ed365de864",1242:"91904f07f3ae2cfe",1281:"8493113ed3a299ac",1299:"8c7eb667f96315f5",1303:"6a7342add58f3e6c",1337:"e5996a54fc5337ce",1466:"999ee7df7b981483",1540:"19b1629d7933f006",1714:"c5fcc6b07a04600f",1951:"ff04ed57182f1df7",1968:"2784e9483f77c01f",1981:"36ed2bd7eaca5267",2063:"de10df0612c2ead2",2142:"8903904bb5750c28",2161:"5ec2a0e6f05c0e56",2249:"6d72af87bb8afd78",2252:"bc6964f1e08d0d8e",2258:"d73e1efe16fd1cce",2357:"dd0ac2451871dc41",2412:"230b58d14a264c18",2446:"a34e0346e3deb5f5",2460:"ee86e32c54c73e1c",2496:"5e86f71493fc8783",2553:"9ca00f9d62d6591f",2601:"068458d6242890bf",2718:"f077481281b53434",2845:"2d36d6157df2f9a0",2964:"75d8595fe7392d75",3046:"601fc2de5957e5f5",3121:"6ed6539c7315ff85",3149:"7cba05ddfa20cc59",3152:"ae12c307da8f4c1f",3186:"4d904536a8b49974",3187:"ee6c38c234a51477",3269:"5d0411b70ba9f079",3395:"9389455b589562ba",3467:"636586982698c88d",3507:"30a9d71627a3f582",3519:"f8da2d788adc5369",3538:"7536f7e433ae5f8d",3573:"ce9ac84a09ee297d",3621:"89297057beea013e",3679:"2faa0c63517465f3",3750:"b98914013f280ecb",3754:"0044d4d18a04fe7b",3758:"adebc883ae7ec9f2",3785:"41444625f5d20822",3790:"749bfb1498142370",3817:"f49f78bed18860cc",3823:"f12a2e4b654f2209",4001:"725a160729c00c45",4006:"c8862bd68fedc8b2",4075:"55836c0a24d1019d",4106:"acad1f50eb2e57e5",4147:"0e39169bd54ddb68",4166:"ab7d14a8a5b9f87a",4255:"df55617fff882c85",4325:"9db57496598bdcad",4343:"53fc3571a6cea164",4344:"e82084948310d2e5",4376:"f0e2327e860f8584",4474:"e37305ce8f51d4d4",4518:"baca17664c446f04",4540:"1b34e222ad37ba05",4557:"277713faa083ad6b",4571:"03de74819b43ed15",4575:"1287e2fe1b94189b",4596:"72270084b07c8350",4615:"3f1769b4bd6a61a2",4643:"eeb870e1f98b31ba",4645:"f3c92c1974a834f7",4699:"bb90a5752fd41f81",4721:"e455a707c487d003",4794:"df0d597434dcf119",4864:"2c7efd17a8fca7de",5174:"b2bfe350677f45a2",5322:"7b8fb8b8ae9a86d5",5345:"e6bda3253f9bfac3",5375:"9eebff69df7778b7",5415:"19a94ac1ea734371",5440:"ac2d896faa69d2d5",5461:"f907ec97792c2713",5479:"051e8ba53ea44a75",5483:"eff500d2b45e1bd3",5484:"08da058e23cb4129",5500:"ec65a8b749ba0c89",5738:"c0810f3a4951a03c",5770:"a91cc6de8f6ef391",5823:"c4722add4b06a850",5959:"0f98322be99ca696",6046:"486e5394501d4691",6061:"79b0db1e85620cc5",6081:"671f2587de332c4c",6184:"760e7a16551b2074",6197:"501b6565bed2a9ea",6207:"9d33cbb25fda5541",6231:"d546ad8a332805e0",6239:"62a334c63efb3197",6243:"5dbee34d8585266d",6255:"eeff9fd19b9a0391",6326:"565b61e22997f8b9",6368:"98f955e76f625e4b",6470:"748a6654a61ce18e",6485:"e9b2ea08ba9fa3c8",6491:"76853d09ba6b7c47",6539:"612ffc94965421b3",6547:"366eb9e68a0c80db",6623:"2a7ea228b7d2e37c",6743:"ceb643371a9ec8d2",6776:"a76ecb7fe14011b9",6805:"2e15db2762e0f842",6922:"051c95a05ee1cadf",6980:"58ab0fb10a00e3f1",7026:"b70314b0e3c22114",7066:"0469172e2e7b6497",7086:"57910450b00ff662",7094:"39510176d226e73c",7116:"53b4634ff1dbca50",7171:"0dce4ab01f29546f",7194:"1ac806056e99bdf9",7412:"1ce88890a97a1849",7464:"2f558d8ba760ffbe",7537:"05e3489d981d5b67",7598:"bebd53a11f72895a",7642:"6fef8587905d901e",7708:"78fec29f53dbe621",7766:"cf2c4c91582a778f",7776:"d0aab990f58c1355",7791:"5c0eb52ff454c45a",7793:"695a4c55ef1e4af5",7813:"c802482c802e061a",7822:"2669cf257ed71f40",7839:"59361dab49bb2305",7905:"61749b2abfe642e5",7917:"6c50e06058bccf4b",7942:"ef51123023ca8c5e",7978:"bdddab9001928427",7997:"0c7699b75575e4c7",8009:"6fa986c72960f564",8214:"651cf94b8fa4b372",8257:"9eebfba579ec5b5a",8293:"66a8808db8157a10",8345:"1eb59993a46692df",8419:"b7b65cbdd60d5f0a",8422:"e9323763649989cc",8501:"802bd9dea35e34b6",8505:"4cf650b2f3947c2f",8517:"7ba8dc85cff7be62",8534:"8e1e173dd7d1ce8e",8616:"a6293ba610f66f5d",8623:"90b38ff01868019d",8637:"7ce8a6ef7dfa990c",8681:"730027d235a71db7",8696:"5c02951f6bd6b884",8713:"39e69c04dcd9efed",8729:"2c73ceb176565faa",8731:"01d8f3495790f521",8850:"bb1a1b4294e74616",8912:"a8dfff93b1ea6489",8958:"a01e68eb7313f93b",8969:"07d1b54183fd753c",8970:"0f6009b4238c3a64",9090:"a2e221d2552f1599",9148:"676bef3edc8d7043",9211:"e248157a40bd85a8",9276:"8d4ced5acdb72fa8",9358:"eaa9f15803f1cfd6",9489:"efa8285b2762c883",9607:"a0163b5be0e96d6a",9611:"784d75eb52c9cb96",9618:"0f1370563675a4d0",9633:"5af23c452c3ef178",9720:"b2fd6f73dbea1cf1",9924:"d32492447126e695",9936:"e1b4184b59f468f5",9948:"0252ecc3817e77e0",9968:"ad6871e5edc666f4"}[e]+".legacy.css"},r.g=function(){if("object"==typeof globalThis)return globalThis;try{return this||new Function("return this")()}catch(e){if("object"==typeof window)return window}}(),r.hmd=function(e){return(e=Object.create(e)).children||(e.children=[]),Object.defineProperty(e,"exports",{enumerable:!0,set:function(){throw new Error("ES Modules may not assign module.exports or exports.*, Use ESM export syntax, instead: "+e.id)}}),e},r.o=function(e,a){return Object.prototype.hasOwnProperty.call(e,a)},c={},d="shopee-pc:",r.l=function(e,a,f,b){if(c[e])c[e].push(a);else{var o,t;if(void 0!==f)for(var n=document.getElementsByTagName("script"),i=0;i<n.length;i++){var s=n[i];if(s.getAttribute("src")==e||s.getAttribute("data-webpack")==d+f){o=s;break}}o||(t=!0,(o=document.createElement("script")).charset="utf-8",o.timeout=120,r.nc&&o.setAttribute("nonce",r.nc),o.setAttribute("data-webpack",d+f),o.src=e),c[e]=[a];var l=function(a,d){o.onerror=o.onload=null,clearTimeout(u);var f=c[e];if(delete c[e],o.parentNode&&o.parentNode.removeChild(o),f&&f.forEach((function(e){return e(d)})),a)return a(d)},u=setTimeout(l.bind(null,void 0,{type:"timeout",target:o}),12e4);o.onerror=l.bind(null,o.onerror),o.onload=l.bind(null,o.onload),t&&document.head.appendChild(o)}},r.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},r.nmd=function(e){return e.paths=[],e.children||(e.children=[]),e},r.p="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/",f=function(e){return new Promise((function(a,c){var d=r.miniCssF(e),f=r.p+d;if(function(e,a){for(var c=document.getElementsByTagName("link"),d=0;d<c.length;d++){var f=(o=c[d]).getAttribute("data-href")||o.getAttribute("href");if("stylesheet"===o.rel&&(f===e||f===a))return o}var b=document.getElementsByTagName("style");for(d=0;d<b.length;d++){var o;if((f=(o=b[d]).getAttribute("data-href"))===e||f===a)return o}}(d,f))return a();!function(e,a,c,d){var f=document.createElement("link");f.rel="stylesheet",f.type="text/css",f.onerror=f.onload=function(b){if(f.onerror=f.onload=null,"load"===b.type)c();else{var o=b&&("load"===b.type?"missing":b.type),t=b&&b.target&&b.target.href||a,r=new Error("Loading CSS chunk "+e+" failed.\n("+t+")");r.code="CSS_CHUNK_LOAD_FAILED",r.type=o,r.request=t,f.parentNode.removeChild(f),d(r)}},f.href=a,document.head.appendChild(f)}(e,f,a,c)}))},b={6658:0},r.f.miniCss=function(e,a){b[e]?a.push(b[e]):0!==b[e]&&{197:1,215:1,285:1,293:1,369:1,425:1,559:1,561:1,566:1,569:1,601:1,642:1,726:1,728:1,773:1,809:1,866:1,952:1,975:1,986:1,993:1,1086:1,1110:1,1136:1,1178:1,1179:1,1200:1,1226:1,1235:1,1242:1,1281:1,1299:1,1303:1,1337:1,1466:1,1540:1,1714:1,1951:1,1968:1,1981:1,2063:1,2142:1,2161:1,2249:1,2252:1,2258:1,2357:1,2412:1,2446:1,2460:1,2496:1,2553:1,2601:1,2718:1,2845:1,2964:1,3046:1,3121:1,3149:1,3152:1,3186:1,3187:1,3269:1,3395:1,3467:1,3507:1,3519:1,3538:1,3573:1,3621:1,3679:1,3750:1,3754:1,3758:1,3785:1,3790:1,3817:1,3823:1,4001:1,4006:1,4075:1,4106:1,4147:1,4166:1,4255:1,4325:1,4343:1,4344:1,4376:1,4474:1,4518:1,4540:1,4557:1,4571:1,4575:1,4596:1,4615:1,4643:1,4645:1,4699:1,4721:1,4794:1,4864:1,5174:1,5322:1,5345:1,5375:1,5415:1,5440:1,5461:1,5479:1,5483:1,5484:1,5500:1,5738:1,5770:1,5823:1,5959:1,6046:1,6061:1,6081:1,6184:1,6197:1,6207:1,6231:1,6239:1,6243:1,6255:1,6326:1,6368:1,6470:1,6485:1,6491:1,6539:1,6547:1,6623:1,6743:1,6776:1,6805:1,6922:1,6980:1,7026:1,7066:1,7086:1,7094:1,7116:1,7171:1,7194:1,7412:1,7464:1,7537:1,7598:1,7642:1,7708:1,7766:1,7776:1,7791:1,7793:1,7813:1,7822:1,7839:1,7905:1,7917:1,7942:1,7978:1,7997:1,8009:1,8214:1,8257:1,8293:1,8345:1,8419:1,8422:1,8501:1,8505:1,8517:1,8534:1,8616:1,8623:1,8637:1,8681:1,8696:1,8713:1,8729:1,8731:1,8850:1,8912:1,8958:1,8969:1,8970:1,9090:1,9148:1,9211:1,9276:1,9358:1,9489:1,9607:1,9611:1,9618:1,9633:1,9720:1,9924:1,9936:1,9948:1,9968:1}[e]&&a.push(b[e]=f(e).then((function(){b[e]=0}),(function(a){throw delete b[e],a})))},function(){var e={6658:0},a=[];r.f.j=function(a,c){var d=r.o(e,a)?e[a]:void 0;if(0!==d)if(d)c.push(d[2]);else if(/^((35|84)19|1281|215|4864|6326|8345|9211)$/.test(a))e[a]=0;else{var f=new Promise((function(c,f){d=e[a]=[c,f]}));c.push(d[2]=f);var b=r.p+r.u(a),o=new Error;r.l(b,(function(c){if(r.o(e,a)&&(0!==(d=e[a])&&(e[a]=void 0),d)){var f=c&&("load"===c.type?"missing":c.type),b=c&&c.target&&c.target.src;o.message="Loading chunk "+a+" failed.\n("+f+": "+b+")",o.name="ChunkLoadError",o.type=f,o.request=b,d[1](o)}}),"chunk-"+a,a)}};var c=function(){},d=function(d,f){for(var b,o,t=f[0],n=f[1],i=f[2],s=f[3],l=0,u=[];l<t.length;l++)o=t[l],r.o(e,o)&&e[o]&&u.push(e[o][0]),e[o]=0;for(b in n)r.o(n,b)&&(r.m[b]=n[b]);for(i&&i(r),d&&d(f);u.length;)u.shift()();return s&&a.push.apply(a,s),c()},f=("undefined"!=typeof self?self:this).webpackChunkshopee_pc=("undefined"!=typeof self?self:this).webpackChunkshopee_pc||[];function b(){for(var c,d=0;d<a.length;d++){for(var f=a[d],b=!0,o=1;o<f.length;o++){var t=f[o];0!==e[t]&&(b=!1)}b&&(a.splice(d--,1),c=r(r.s=f[0]))}return 0===a.length&&(r.x(),r.x=function(){}),c}f.forEach(d.bind(null,0)),f.push=d.bind(null,f.push.bind(f));var o=r.x;r.x=function(){return r.x=o||function(){},(c=b)()}}(),r.x()}();
//# sourceMappingURL=https://shopee.sg/assets/webpack-runtime.c96cf3563fc628cf.legacy.js.map