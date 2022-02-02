/**
 *Submitted for verification at Etherscan.io on 2020-10-06
*/

// SPDX-License-Identifier: --🦉--

pragma solidity =0.7.0;

/*

     _/|       |\_
    /  |       |  \
   |    \     /    |
   |  \ /     \ /  |
   | \  |     |  / |
   | \ _\_/^\_/_ / |
   |   --\\ //--    |
    \_  \     /  _/
      \__  |  __/
         \ _ /
        _/   \_   LiquidityGuard.sol
       /  / \  \  Wise Foundation Library
        /     \   By Vitalik Alderson


The Wise Foundation is an unincorporated nonprofit association formed in February 2020.
The WISE contract and various related software and websites are being wholly funded and
developed by The Wise Foundation. Visit https://wisetoken.net/ for more information.

*/

contract LiquidityGuard {

    mapping (uint32 => uint256) InflationLN;

    bool isReady;

    function getInflation(uint32 _amount) external view returns (uint256) {
        return InflationLN[_amount];
    }

    /*
        for (let i = 1; i <= 500; i++) {
            console.log(
                `InflationLN[${100000+i*6}] = `,
                parseInt(1 / (Math.exp(Math.log(1 + 0.00006 * i) / 365) - 1) * 10000)
            );
        }
    */

    // 0.006% liquidityRate step increase;

    constructor() {
        InflationLN[100006] =  60835153328;
        InflationLN[100012] =  30418486635;
        InflationLN[100018] =  20279597719;
        InflationLN[100024] =  15210153257;
        InflationLN[100030] =  12168486576;
        InflationLN[100036] =  10140708779;
        InflationLN[100042] =  8692296062;
        InflationLN[100048] =  7605986520;
        InflationLN[100054] =  6761079095;
        InflationLN[100060] =  6085153150;
        InflationLN[100066] =  5532122829;
        InflationLN[100072] =  5071264225;
        InflationLN[100078] =  4681306942;
        InflationLN[100084] =  4347057839;
        InflationLN[100090] =  4057375282;
        InflationLN[100096] =  3803903041;
        InflationLN[100102] =  3580251062;
        InflationLN[100108] =  3381449301;
        InflationLN[100114] =  3203574039;
        InflationLN[100120] =  3043486301;
        InflationLN[100126] =  2898645013;
        InflationLN[100132] =  2766971113;
        InflationLN[100138] =  2646747116;
        InflationLN[100144] =  2536541784;
        InflationLN[100150] =  2435152877;
        InflationLN[100156] =  2341563115;
        InflationLN[100162] =  2254905927;
        InflationLN[100168] =  2174438537;
        InflationLN[100174] =  2099520620;
        InflationLN[100180] =  2029597230;
        InflationLN[100186] =  1964185026;
        InflationLN[100192] =  1902861083;
        InflationLN[100198] =  1845253741;
        InflationLN[100204] =  1791035066;
        InflationLN[100210] =  1739914600;
        InflationLN[100216] =  1691634158;
        InflationLN[100222] =  1645963469;
        InflationLN[100228] =  1602696500;
        InflationLN[100234] =  1561648348;
        InflationLN[100240] =  1522652604;
        InflationLN[100246] =  1485559090;
        InflationLN[100252] =  1450231932;
        InflationLN[100258] =  1416547898;
        InflationLN[100264] =  1384394955;
        InflationLN[100270] =  1353671031;
        InflationLN[100276] =  1324282929;
        InflationLN[100282] =  1296145384;
        InflationLN[100288] =  1269180236;
        InflationLN[100294] =  1243315705;
        InflationLN[100300] =  1218485755;
        InflationLN[100306] =  1194629528;
        InflationLN[100312] =  1171690847;
        InflationLN[100318] =  1149617776;
        InflationLN[100324] =  1128362225;
        InflationLN[100330] =  1107879603;
        InflationLN[100336] =  1088128503;
        InflationLN[100342] =  1069070423;
        InflationLN[100348] =  1050669518;
        InflationLN[100354] =  1032892371;
        InflationLN[100360] =  1015707795;
        InflationLN[100366] =  999086648;
        InflationLN[100372] =  983001666;
        InflationLN[100378] =  967427318;
        InflationLN[100384] =  952339667;
        InflationLN[100390] =  937716251;
        InflationLN[100396] =  923535969;
        InflationLN[100402] =  909778978;
        InflationLN[100408] =  896426604;
        InflationLN[100414] =  883461255;
        InflationLN[100420] =  870866344;
        InflationLN[100426] =  858626218;
        InflationLN[100432] =  846726096;
        InflationLN[100438] =  835152004;
        InflationLN[100444] =  823890724;
        InflationLN[100450] =  812929745;
        InflationLN[100456] =  802257212;
        InflationLN[100462] =  791861888;
        InflationLN[100468] =  781733109;
        InflationLN[100474] =  771860755;
        InflationLN[100480] =  762235210;
        InflationLN[100486] =  752847331;
        InflationLN[100492] =  743688425;
        InflationLN[100498] =  734750215;
        InflationLN[100504] =  726024820;
        InflationLN[100510] =  717504727;
        InflationLN[100516] =  709182775;
        InflationLN[100522] =  701052132;
        InflationLN[100528] =  693106277;
        InflationLN[100534] =  685338979;
        InflationLN[100540] =  677744287;
        InflationLN[100546] =  670316512;
        InflationLN[100552] =  663050209;
        InflationLN[100558] =  655940171;
        InflationLN[100564] =  648981409;
        InflationLN[100570] =  642169148;
        InflationLN[100576] =  635498808;
        InflationLN[100582] =  628966001;
        InflationLN[100588] =  622566516;
        InflationLN[100594] =  616296313;
        InflationLN[100600] =  610151513;
        InflationLN[100606] =  604128393;
        InflationLN[100612] =  598223372;
        InflationLN[100618] =  592433012;
        InflationLN[100624] =  586754005;
        InflationLN[100630] =  581183169;
        InflationLN[100636] =  575717442;
        InflationLN[100642] =  570353879;
        InflationLN[100648] =  565089640;
        InflationLN[100654] =  559921992;
        InflationLN[100660] =  554848302;
        InflationLN[100666] =  549866029;
        InflationLN[100672] =  544972724;
        InflationLN[100678] =  540166027;
        InflationLN[100684] =  535443657;
        InflationLN[100690] =  530803415;
        InflationLN[100696] =  526243177;
        InflationLN[100702] =  521760892;
        InflationLN[100708] =  517354577;
        InflationLN[100714] =  513022317;
        InflationLN[100720] =  508762262;
        InflationLN[100726] =  504572620;
        InflationLN[100732] =  500451661;
        InflationLN[100738] =  496397709;
        InflationLN[100744] =  492409143;
        InflationLN[100750] =  488484393;
        InflationLN[100756] =  484621941;
        InflationLN[100762] =  480820315;
        InflationLN[100768] =  477078089;
        InflationLN[100774] =  473393882;
        InflationLN[100780] =  469766354;
        InflationLN[100786] =  466194208;
        InflationLN[100792] =  462676186;
        InflationLN[100798] =  459211066;
        InflationLN[100804] =  455797663;
        InflationLN[100810] =  452434830;
        InflationLN[100816] =  449121449;
        InflationLN[100822] =  445856439;
        InflationLN[100828] =  442638747;
        InflationLN[100834] =  439467353;
        InflationLN[100840] =  436341265;
        InflationLN[100846] =  433259517;
        InflationLN[100852] =  430221175;
        InflationLN[100858] =  427225326;
        InflationLN[100864] =  424271087;
        InflationLN[100870] =  421357595;
        InflationLN[100876] =  418484013;
        InflationLN[100882] =  415649528;
        InflationLN[100888] =  412853346;
        InflationLN[100894] =  410094697;
        InflationLN[100900] =  407372830;
        InflationLN[100906] =  404687013;
        InflationLN[100912] =  402036536;
        InflationLN[100918] =  399420706;
        InflationLN[100924] =  396838847;
        InflationLN[100930] =  394290302;
        InflationLN[100936] =  391774431;
        InflationLN[100942] =  389290608;
        InflationLN[100948] =  386838227;
        InflationLN[100954] =  384416692;
        InflationLN[100960] =  382025427;
        InflationLN[100966] =  379663866;
        InflationLN[100972] =  377331461;
        InflationLN[100978] =  375027673;
        InflationLN[100984] =  372751981;
        InflationLN[100990] =  370503872;
        InflationLN[100996] =  368282848;
        InflationLN[101000] =  366816973;
        InflationLN[101002] =  366088424;
        InflationLN[101008] =  363920123;
        InflationLN[101014] =  361777483;
        InflationLN[101020] =  359660050;
        InflationLN[101026] =  357567382;
        InflationLN[101032] =  355499047;
        InflationLN[101038] =  353454623;
        InflationLN[101044] =  351433699;
        InflationLN[101050] =  349435870;
        InflationLN[101056] =  347460744;
        InflationLN[101062] =  345507935;
        InflationLN[101068] =  343577068;
        InflationLN[101074] =  341667774;
        InflationLN[101080] =  339779695;
        InflationLN[101086] =  337912478;
        InflationLN[101092] =  336065780;
        InflationLN[101098] =  334239265;
        InflationLN[101104] =  332432602;
        InflationLN[101110] =  330645471;
        InflationLN[101116] =  328877556;
        InflationLN[101122] =  327128549;
        InflationLN[101128] =  325398148;
        InflationLN[101134] =  323686058;
        InflationLN[101140] =  321991990;
        InflationLN[101146] =  320315661;
        InflationLN[101152] =  318656793;
        InflationLN[101158] =  317015116;
        InflationLN[101164] =  315390363;
        InflationLN[101170] =  313782273;
        InflationLN[101176] =  312190593;
        InflationLN[101182] =  310615072;
        InflationLN[101188] =  309055465;
        InflationLN[101194] =  307511532;
        InflationLN[101200] =  305983038;
        InflationLN[101206] =  304469753;
        InflationLN[101212] =  302971451;
        InflationLN[101218] =  301487910;
        InflationLN[101224] =  300018914;
        InflationLN[101230] =  298564249;
        InflationLN[101236] =  297123706;
        InflationLN[101242] =  295697082;
        InflationLN[101248] =  294284176;
        InflationLN[101254] =  292884790;
        InflationLN[101260] =  291498731;
        InflationLN[101266] =  290125810;
        InflationLN[101272] =  288765840;
        InflationLN[101278] =  287418641;
        InflationLN[101284] =  286084032;
        InflationLN[101290] =  284761837;
        InflationLN[101296] =  283451885;
        InflationLN[101302] =  282154006;
        InflationLN[101308] =  280868035;
        InflationLN[101314] =  279593807;
    }

    function assignInflation() external {

        require(
            isReady == false,
            "LiquidityGuard: amounts already defined"
        );

        isReady = true;

        InflationLN[101320] =  278331162;
        InflationLN[101326] =  277079945;
        InflationLN[101332] =  275839999;
        InflationLN[101338] =  274611174;
        InflationLN[101344] =  273393320;
        InflationLN[101350] =  272186291;
        InflationLN[101356] =  270989944;
        InflationLN[101362] =  269804137;
        InflationLN[101368] =  268628732;
        InflationLN[101374] =  267463593;
        InflationLN[101380] =  266308584;
        InflationLN[101386] =  265163576;
        InflationLN[101392] =  264028438;
        InflationLN[101398] =  262903044;
        InflationLN[101404] =  261787269;
        InflationLN[101410] =  260680989;
        InflationLN[101416] =  259584084;
        InflationLN[101422] =  258496436;
        InflationLN[101428] =  257417928;
        InflationLN[101434] =  256348444;
        InflationLN[101440] =  255287873;
        InflationLN[101446] =  254236103;
        InflationLN[101452] =  253193025;
        InflationLN[101458] =  252158532;
        InflationLN[101464] =  251132519;
        InflationLN[101470] =  250114881;
        InflationLN[101476] =  249105516;
        InflationLN[101482] =  248104324;
        InflationLN[101488] =  247111206;
        InflationLN[101494] =  246126065;
        InflationLN[101500] =  245148804;
        InflationLN[101506] =  244179331;
        InflationLN[101512] =  243217551;
        InflationLN[101518] =  242263375;
        InflationLN[101524] =  241316711;
        InflationLN[101530] =  240377473;
        InflationLN[101536] =  239445571;
        InflationLN[101542] =  238520922;
        InflationLN[101548] =  237603441;
        InflationLN[101554] =  236693044;
        InflationLN[101560] =  235789650;
        InflationLN[101566] =  234893179;
        InflationLN[101572] =  234003550;
        InflationLN[101578] =  233120687;
        InflationLN[101584] =  232244512;
        InflationLN[101590] =  231374950;
        InflationLN[101596] =  230511925;
        InflationLN[101602] =  229655365;
        InflationLN[101608] =  228805197;
        InflationLN[101614] =  227961350;
        InflationLN[101620] =  227123754;
        InflationLN[101626] =  226292338;
        InflationLN[101632] =  225467036;
        InflationLN[101638] =  224647781;
        InflationLN[101644] =  223834504;
        InflationLN[101650] =  223027143;
        InflationLN[101656] =  222225632;
        InflationLN[101662] =  221429908;
        InflationLN[101668] =  220639908;
        InflationLN[101674] =  219855571;
        InflationLN[101680] =  219076837;
        InflationLN[101686] =  218303645;
        InflationLN[101692] =  217535936;
        InflationLN[101698] =  216773653;
        InflationLN[101704] =  216016738;
        InflationLN[101710] =  215265135;
        InflationLN[101716] =  214518787;
        InflationLN[101722] =  213777640;
        InflationLN[101728] =  213041640;
        InflationLN[101734] =  212310734;
        InflationLN[101740] =  211584868;
        InflationLN[101746] =  210863990;
        InflationLN[101752] =  210148050;
        InflationLN[101758] =  209436997;
        InflationLN[101764] =  208730781;
        InflationLN[101770] =  208029352;
        InflationLN[101776] =  207332663;
        InflationLN[101782] =  206640665;
        InflationLN[101788] =  205953312;
        InflationLN[101794] =  205270556;
        InflationLN[101800] =  204592351;
        InflationLN[101806] =  203918653;
        InflationLN[101812] =  203249416;
        InflationLN[101818] =  202584596;
        InflationLN[101824] =  201924151;
        InflationLN[101830] =  201268036;
        InflationLN[101836] =  200616209;
        InflationLN[101842] =  199968628;
        InflationLN[101848] =  199325252;
        InflationLN[101854] =  198686041;
        InflationLN[101860] =  198050953;
        InflationLN[101866] =  197419950;
        InflationLN[101872] =  196792991;
        InflationLN[101878] =  196170038;
        InflationLN[101884] =  195551053;
        InflationLN[101890] =  194935998;
        InflationLN[101896] =  194324835;
        InflationLN[101902] =  193717528;
        InflationLN[101908] =  193114041;
        InflationLN[101914] =  192514337;
        InflationLN[101920] =  191918382;
        InflationLN[101926] =  191326139;
        InflationLN[101932] =  190737575;
        InflationLN[101938] =  190152655;
        InflationLN[101944] =  189571345;
        InflationLN[101950] =  188993613;
        InflationLN[101956] =  188419424;
        InflationLN[101962] =  187848748;
        InflationLN[101968] =  187281551;
        InflationLN[101974] =  186717803;
        InflationLN[101980] =  186157470;
        InflationLN[101986] =  185600524;
        InflationLN[101992] =  185046932;
        InflationLN[101998] =  184496665;
        InflationLN[102004] =  183949693;
        InflationLN[102010] =  183405986;
        InflationLN[102016] =  182865516;
        InflationLN[102022] =  182328253;
        InflationLN[102028] =  181794169;
        InflationLN[102034] =  181263236;
        InflationLN[102040] =  180735426;
        InflationLN[102046] =  180210711;
        InflationLN[102052] =  179689065;
        InflationLN[102058] =  179170460;
        InflationLN[102064] =  178654871;
        InflationLN[102070] =  178142270;
        InflationLN[102076] =  177632632;
        InflationLN[102082] =  177125932;
        InflationLN[102088] =  176622143;
        InflationLN[102094] =  176121241;
        InflationLN[102100] =  175623202;
        InflationLN[102106] =  175128000;
        InflationLN[102112] =  174635612;
        InflationLN[102118] =  174146014;
        InflationLN[102124] =  173659181;
        InflationLN[102130] =  173175091;
        InflationLN[102136] =  172693721;
        InflationLN[102142] =  172215047;
        InflationLN[102148] =  171739047;
        InflationLN[102154] =  171265699;
        InflationLN[102160] =  170794981;
        InflationLN[102166] =  170326870;
        InflationLN[102172] =  169861346;
        InflationLN[102178] =  169398386;
        InflationLN[102184] =  168937970;
        InflationLN[102190] =  168480077;
        InflationLN[102196] =  168024686;
        InflationLN[102202] =  167571776;
        InflationLN[102208] =  167121328;
        InflationLN[102214] =  166673321;
        InflationLN[102220] =  166227735;
        InflationLN[102226] =  165784552;
        InflationLN[102232] =  165343751;
        InflationLN[102238] =  164905314;
        InflationLN[102244] =  164469221;
        InflationLN[102250] =  164035454;
        InflationLN[102256] =  163603994;
        InflationLN[102262] =  163174823;
        InflationLN[102268] =  162747922;
        InflationLN[102274] =  162323275;
        InflationLN[102280] =  161900862;
        InflationLN[102286] =  161480666;
        InflationLN[102292] =  161062671;
        InflationLN[102298] =  160646857;
        InflationLN[102304] =  160233210;
        InflationLN[102310] =  159821711;
        InflationLN[102316] =  159412345;
        InflationLN[102322] =  159005093;
        InflationLN[102328] =  158599941;
        InflationLN[102334] =  158196872;
        InflationLN[102340] =  157795870;
        InflationLN[102346] =  157396919;
        InflationLN[102352] =  157000003;
        InflationLN[102358] =  156605107;
        InflationLN[102364] =  156212216;
        InflationLN[102370] =  155821314;
        InflationLN[102376] =  155432386;
        InflationLN[102382] =  155045417;
        InflationLN[102388] =  154660393;
        InflationLN[102394] =  154277298;
        InflationLN[102400] =  153896119;
        InflationLN[102406] =  153516841;
        InflationLN[102412] =  153139450;
        InflationLN[102418] =  152763932;
        InflationLN[102424] =  152390272;
        InflationLN[102430] =  152018458;
        InflationLN[102436] =  151648475;
        InflationLN[102442] =  151280311;
        InflationLN[102448] =  150913950;
        InflationLN[102454] =  150549382;
        InflationLN[102460] =  150186591;
        InflationLN[102466] =  149825566;
        InflationLN[102472] =  149466294;
        InflationLN[102478] =  149108761;
        InflationLN[102484] =  148752955;
        InflationLN[102490] =  148398864;
        InflationLN[102496] =  148046475;
        InflationLN[102502] =  147695776;
        InflationLN[102508] =  147346755;
        InflationLN[102514] =  146999400;
        InflationLN[102520] =  146653699;
        InflationLN[102526] =  146309641;
        InflationLN[102532] =  145967212;
        InflationLN[102538] =  145626403;
        InflationLN[102544] =  145287201;
        InflationLN[102550] =  144949596;
        InflationLN[102556] =  144613575;
        InflationLN[102562] =  144279128;
        InflationLN[102568] =  143946244;
        InflationLN[102574] =  143614911;
        InflationLN[102580] =  143285120;
        InflationLN[102586] =  142956859;
        InflationLN[102592] =  142630117;
        InflationLN[102598] =  142304885;
        InflationLN[102604] =  141981151;
        InflationLN[102610] =  141658906;
        InflationLN[102616] =  141338139;
        InflationLN[102622] =  141018840;
        InflationLN[102628] =  140700998;
        InflationLN[102634] =  140384605;
        InflationLN[102640] =  140069650;
        InflationLN[102646] =  139756123;
        InflationLN[102652] =  139444014;
        InflationLN[102658] =  139133315;
        InflationLN[102664] =  138824015;
        InflationLN[102670] =  138516105;
        InflationLN[102676] =  138209576;
        InflationLN[102682] =  137904418;
        InflationLN[102688] =  137600622;
        InflationLN[102694] =  137298180;
        InflationLN[102700] =  136997081;
        InflationLN[102706] =  136697318;
        InflationLN[102712] =  136398881;
        InflationLN[102718] =  136101762;
        InflationLN[102724] =  135805951;
        InflationLN[102730] =  135511441;
        InflationLN[102736] =  135218222;
        InflationLN[102742] =  134926287;
        InflationLN[102748] =  134635626;
        InflationLN[102754] =  134346231;
        InflationLN[102760] =  134058095;
        InflationLN[102766] =  133771209;
        InflationLN[102772] =  133485565;
        InflationLN[102778] =  133201154;
        InflationLN[102784] =  132917969;
        InflationLN[102790] =  132636002;
        InflationLN[102796] =  132355246;
        InflationLN[102802] =  132075691;
        InflationLN[102808] =  131797331;
        InflationLN[102814] =  131520158;
        InflationLN[102820] =  131244165;
        InflationLN[102826] =  130969343;
        InflationLN[102832] =  130695686;
        InflationLN[102838] =  130423186;
        InflationLN[102844] =  130151836;
        InflationLN[102850] =  129881628;
        InflationLN[102856] =  129612555;
        InflationLN[102862] =  129344610;
        InflationLN[102868] =  129077787;
        InflationLN[102874] =  128812077;
        InflationLN[102880] =  128547475;
        InflationLN[102886] =  128283972;
        InflationLN[102892] =  128021563;
        InflationLN[102898] =  127760241;
        InflationLN[102904] =  127499998;
        InflationLN[102910] =  127240828;
        InflationLN[102916] =  126982725;
        InflationLN[102922] =  126725681;
        InflationLN[102928] =  126469692;
        InflationLN[102934] =  126214749;
        InflationLN[102940] =  125960846;
        InflationLN[102946] =  125707978;
        InflationLN[102952] =  125456137;
        InflationLN[102958] =  125205318;
        InflationLN[102964] =  124955515;
        InflationLN[102970] =  124706720;
        InflationLN[102976] =  124458929;
        InflationLN[102982] =  124212135;
        InflationLN[102988] =  123966332;
        InflationLN[102994] =  123721514;
        InflationLN[103000] =  123477676;
    }
}