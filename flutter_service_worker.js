'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "b35566757fc17dbb18b4b11d2de7f37e",
".git/config": "f90bfb0d230e8a78c7d91e6e4744bc7f",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "45aa0e1b13635dececf3bc0764b3c4a6",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "ae18f4f036044672423e2634ad483407",
".git/logs/refs/heads/gh-pages": "ae18f4f036044672423e2634ad483407",
".git/logs/refs/remotes/origin/gh-pages": "bd082b7143224fa6efde420abb845455",
".git/objects/01/f659ad19da4de79043a3e568fc3466a7f3bfa3": "f70654e99963b6adfe4957a4b8d072b3",
".git/objects/03/2fe904174b32b7135766696dd37e9a95c1b4fd": "80ba3eb567ab1b2327a13096a62dd17e",
".git/objects/03/c824990578d5e5a87ea7567bb3948474340ddc": "a4e4bb065c50734aa4d9363cf0b8ce50",
".git/objects/06/5a156ad876ae75d08bca0aabc8c1e01f285abb": "1338ac20d12542d14345378e2fe2be26",
".git/objects/06/b4981a69085b7f9da2b36a67aca7bad48127b3": "85ad1e1103f7d9a79feaaed6ad4e990e",
".git/objects/13/4ffeaab72f5c64ffd5dd43e00d189466f7754f": "44f16fd47c1cdd25691890bcee4858b3",
".git/objects/17/62ae2ca5fb24e091af719a0c6dc2d8a128360c": "5dcb0b957c4397caed06112954d46a4e",
".git/objects/20/6aa4ada75714e2df6709c7b51bc1276c191388": "66f3be8d7c9e195e0ac70b5829e68407",
".git/objects/24/88cd2e5fc67be9b627e8a9e610f7169925b546": "661d455aff260d07ea0f5be9860c3b78",
".git/objects/28/4cea2160dbef71336c2031e71c22e85125546a": "6ff00c35cc04f2904d95c71d5c968ff6",
".git/objects/2c/05998e25430f58be9d2f00a5c9029cfce6d795": "5a3e5fd93657118fffa8a402a37f2de6",
".git/objects/2c/3e2adf86d2d41362f0530ab1dc3c8160dba466": "b3dc7489b0665923bf60be80ac152c8b",
".git/objects/2c/7612a5db9745fe1ffe99206e6a58a493c49128": "3490be66b31df1eb9bd8be825744d40b",
".git/objects/2d/0471ef9f12c9641643e7de6ebf25c440812b41": "d92fd35a211d5e9c566342a07818e99e",
".git/objects/2d/2640adc1c3d44dc2e70c4b3884b9c80b4802b2": "4f14485824972cbf694a287decce33bb",
".git/objects/30/13ed4018df34f5d5d8d370c580767c1154e867": "38a5e5293571f3366cb2a9f6b6b96feb",
".git/objects/33/31d9290f04df89cea3fb794306a371fcca1cd9": "e54527b2478950463abbc6b22442144e",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "e931dda039902c600d4ba7d954ff090f",
".git/objects/36/e415a1f59bdd5bfd5d46559e61bec5737c586c": "6295393e1b928eff480023408c09c921",
".git/objects/38/bb00a2263e021c931950750b849bb121a8001d": "0d513979b59de8c56bb379d96aa02666",
".git/objects/38/f72c3b661274731c0dca4263c6147292c3313e": "06ec909689545717240ec77454003efe",
".git/objects/39/61ba93bf78043bbeee83af31469631a4581d52": "647a08f371931d49f50855e28bd67b63",
".git/objects/3b/b0860a0981211a1ab11fced3e6dad7e9bc1834": "3f00fdcdb1bb283f5ce8fd548f00af7b",
".git/objects/3f/f98c014fb885c4d81644bc09dccc483d785b51": "65b8e86c34e36a700ed3cc511796aeb2",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/40/c68bb99b0eaece76c10389db556bd9d8525f78": "9a17abcba0281b33bceb682862ae464d",
".git/objects/42/7840037d2a5a198163874d876ad826ca1914c8": "5ed446297b16e14f059c6b27402629ee",
".git/objects/4d/35e03695d3cd8b3ee0bfe39d9094987d744acf": "f653310ea09441dd9e397ead218ee18c",
".git/objects/4f/02e9875cb698379e68a23ba5d25625e0e2e4bc": "254bc336602c9480c293f5f1c64bb4c7",
".git/objects/50/5c8e384cf57c175b50424b7ea147766734c0ce": "5a57d93c8cf8bbadb172249eabf93270",
".git/objects/57/2e94a7f4405be412fc0fe4b55f71e1ed9b977b": "d15aa58f2a761e4535b75808c22d0390",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/5c/564df9277773ae7a9af32fcb061021619574e4": "9440ce6e91867e9460f984dbbfc7733a",
".git/objects/5e/bf37944a56f2b5e479e3858392c6e9030da2da": "d874f5ce1eb6512c7b77ebd17b676f00",
".git/objects/5f/6de56188fd454d899cf58de69e74e4a7ef2935": "2b226188df840a53c41314fb1daf7f05",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/60/eb33538463aa26b963ca03dab4f269fe07e921": "99da3f5bce1ef15a5d85ebc4120131f1",
".git/objects/61/50f54f842af3935a122aaa760b0d5354774244": "617c0e0a900711a6d18877639dbb76bf",
".git/objects/64/5116c20530a7bd227658a3c51e004a3f0aefab": "f10b5403684ce7848d8165b3d1d5bbbe",
".git/objects/64/77a189015764621abe607d80ce03c8fd565d65": "1657cf541697d62498502c9064bfd8ce",
".git/objects/68/6762786fefb7803ea9a5f16d5611892bf1e74a": "0da8ec4b39092c32afa294294804b544",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6e/5c0d6aac99854ea5145efd0248740d5987cd73": "c7c34d13616b6dfc9c5fa16802324544",
".git/objects/6f/b2b416804935a44a76d2d2294386eb8fe0242c": "93e91f8e2df4fa120494319785367761",
".git/objects/70/3ea9ffbce0bf7cbaaca9daa8209c7a71920640": "195e9a7c9f673a7125be7ce75ef61efa",
".git/objects/79/05c6b36efc1887813b3b3eeb60ad07f9f90c98": "2369b948f6ecbec078cec665461f1bf6",
".git/objects/79/94bb00124100c97aa406b50ecf07ed249ac54d": "04ceb62dd18c70c7fab895b315f5c996",
".git/objects/7f/ff137485c1a1b5c99213280bdb3e954772be44": "1ffe8919b8ceb2296cd50e73466ea88b",
".git/objects/81/fdd25ec5ee4acc3f612c2c3a47d8afe8364c95": "165e37e2433cf1261c90f8c1abf0f074",
".git/objects/84/cda950ff95c76a653532743744e69b2fac47b9": "4922c5164e3e925fd9afb3a52ef685a2",
".git/objects/86/a90168ae8b5f9ec67e0c5285e171f408039f36": "d4c03b159abffef416278ecd315b22ba",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/90/09378392109e9eaefa6abecc7946e8f26672b0": "4902a9cfbaaf051314d6aab00588ea1d",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "8963a99a625c47f6cd41ba314ebd2488",
".git/objects/92/7973e826f08a68c8b939bd9b422c815ffb5a95": "dad3c7cdffad03f362a375fb66dd4c49",
".git/objects/92/e1d4b40292fce07c53767bbd02e1f15a5df733": "230a20df0627fecca68fa307933d3cde",
".git/objects/93/be7fd9b9dcdd8564dafd7040a0c8c8f68d4080": "b27ff257c793a735fc818ff37f392ff9",
".git/objects/95/0a5d692561d69521a668de87c6cbdc90c12937": "64fd1e5f86cf067fc6fa8e0207e1c94f",
".git/objects/9b/ef52a26228bc5e723712e8ce72422b267b13b4": "9deb6e714fd7afe9457d4dd1ce2c6c19",
".git/objects/9c/e66124046021f8fa5d3f7dae7c234fce83fa26": "80d5eb4585bce472305348232958aea4",
".git/objects/a2/aba172a06a23ddc9616c008cce49c9429496c8": "052744aec7c99f7951b87f3af86df635",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "9fbbb0db1824af504c56e5d959e1cdff",
".git/objects/a8/89594270555bb765d7655d6446857864afe437": "74b64a183b1df7d158b88df77317d216",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/b4/345b17a2fd1c856646f9e0bcdfef4e39c80538": "dcd41d89394165c6251fa084a04adadb",
".git/objects/b5/7df1d4747fe3949f49346461b87d34916e05b6": "384ebf21e3692bdbfae4925680355315",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/70345c6fe1cf3e12495f64408d58c3fe1ea6b6": "149b5cabf51a048c1a75339906bb8266",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/67019dbe63ef14e093f3a3c37182165d32ac02": "735c3cbd9fd419167be29a628ea540f0",
".git/objects/b9/cdbbc0c4cb12ede73f084b18d8dd9fa6d177cb": "f74cd44bb2e25548c90f13dab3fe5b2f",
".git/objects/ba/a2fed1957823d07b1141db726102c49e4a54cb": "3064b1420d8cc2deeea306b42d409ab8",
".git/objects/bb/6b58aabdbc0b52d5e0ba74e6669b22ebd48be8": "d24ebc490e441883d21232eb8d5fbdc7",
".git/objects/bc/af5c1df5dcd21bbeda4008e22d927a2da4805d": "dc49a9e6cd5b4106ac68ec1c886868cb",
".git/objects/c1/f736154c7088a810f6d8bfa05691130ef5f95a": "bbe54f447d812a6f10842bb8afa4695a",
".git/objects/c7/7663172ca915a99a594ca17d06f527db05657d": "6335b074b18eb4ebe51f3a2c609a6ecc",
".git/objects/ca/3b5f3f5aaebc8c2042465e3d32bf3356012851": "4f60c2dba451910e771f0262caef4002",
".git/objects/cb/2113e15cd4867fb0e4a9815a7a8f4c3fffca52": "943cf51188cd6d357e2cbfec6d784c15",
".git/objects/cb/fa7ffa66e86fa19563dfeff75b453b8d0764f5": "346231bf083ac5c7ce25fca0f61e6a60",
".git/objects/cc/965e94c064478869489cb01afa74c6743155ac": "39e0572c51b5250404e0cce0a81bb334",
".git/objects/ce/21b5e3fa1b4db3ef12ea4074abfceef7c804df": "21b7283fab4b2f25dc93384a5f16fa85",
".git/objects/ce/e3c5bb4ad9ca1b7e02e3391cc1cbba998308b7": "8e23cc0d8eea61c17a30b19ec3ccb417",
".git/objects/d2/47f0a6ee391be49305a43b16069a701556641f": "ae91c6f8924f62f6635bc568c53beb07",
".git/objects/d2/b53bf7575f75124d7dc02376f62202d3a07a81": "477176a2ebd7fee31393e6593a604a8e",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/a322e2858a11abe99b92cee494c2ada1d74127": "63d67bfc4b453e97f44a6a87b687d8e9",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "1401847c6f090e48e83740a00be1c303",
".git/objects/dd/dd1e625cac5b6bc04fb50d9d593dc0fc9a1a11": "bc6f0359bed9fc84ed1ae5594a3954b7",
".git/objects/e9/42503de7a4b1c791a75e28868e83c9b8300450": "56b296841a959c1d119dc05ba43d9a57",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/ea/2e69ddeb1d28977e59eeb430d0f8f1b1e3a520": "1200ae20d95ce456a448f595a8fdb068",
".git/objects/ea/8e8aca8ab0bd4c7920b394c4224d623729e7a2": "9e7a707323dec27aca814ad7df2082f4",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ed/34f46d300cb8fb1cc1eb5e64bf2602e69d4be0": "2d23009423990ca636b5912976b602b2",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "27e32738aea45acd66b98d36fc9fc9e0",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/0773776cbf5930c5a3b1a0d0529834584c7046": "e953ab8945d86e7d7deff0ebb8e9c337",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "538d2edfa707ca92ed0b867d6c3903d1",
".git/objects/f4/ebae7c665bb7a67425b109dbc6ddaaefb08dfd": "6ab0583ad7c1e28009e53007a23aa22e",
".git/objects/f5/55c6a91b54c9b72c02f8527c05839e4a696418": "ef80c3a768bb8291ee1f887717dcae6a",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/f7/fe67090335cd8ac4ababe91325f40aebb9b551": "7d326a72525b27839e4c590c9b9b659a",
".git/objects/fd/c30ef45d6689570d7b5b20140ca7771555a27a": "15e72a6ed3114ec3d2bb029b241dca1f",
".git/objects/fe/a86f53f30949c1e65a0504d6a109a1b30e26c6": "d749068f1c6af663c7dda2bc5ef211ae",
".git/objects/fe/c63f828f69624ebe58db6dc8e86b619c15a575": "f4453551f4f2efad31a78f3331036a07",
".git/refs/heads/gh-pages": "82c6dc11ee0dd31484c926a139704548",
".git/refs/remotes/origin/gh-pages": "82c6dc11ee0dd31484c926a139704548",
"assets/AssetManifest.bin": "38dc792de0f93cd613b80dac43a1f10d",
"assets/AssetManifest.bin.json": "695e3a59ba35dae5beccb5a5777bf8ac",
"assets/AssetManifest.json": "968e4e29c4ddd2f5743fe7e46763bab9",
"assets/assets/fonts/IBMPlexSansArabic-Bold.ttf": "2f1bf48f9ab5e7f3636ed99dfdd50dd6",
"assets/assets/fonts/IBMPlexSansArabic-ExtraLight.ttf": "a6f2c6d703b3b2579c47fa743119f7f7",
"assets/assets/fonts/IBMPlexSansArabic-Light.ttf": "3f86f97f1ea30329d567250428ee4030",
"assets/assets/fonts/IBMPlexSansArabic-Medium.ttf": "96339030fbccc3a8d1ef5268bf4c9253",
"assets/assets/fonts/IBMPlexSansArabic-Regular.ttf": "381623977503164534dfd3b90b67c732",
"assets/assets/fonts/IBMPlexSansArabic-SemiBold.ttf": "9ddce464cf64a5666ef74c0f4b19e37e",
"assets/assets/fonts/IBMPlexSansArabic-Thin.ttf": "9f28aa9b056a0b4b47dfe14c800f7b75",
"assets/assets/images/Advantages%2520Image1.png": "56f0eabc5a694adaf9a1b806c2a46239",
"assets/assets/images/Advantages%2520Image2.jpg": "0c0e2bc4c1090a9c0269145d331b700d",
"assets/assets/images/code%2520background.jpg": "ddb4ee381655d07aecb2303c31f6d0f1",
"assets/assets/images/dark_logo.svg": "1bceb819bb0caa0363299e3aec4c4f23",
"assets/assets/images/home%2520background.jpg": "82110e20276fb994079aa4e92f6b89bd",
"assets/assets/images/light_logo.svg": "bf8daa135fb44adc84467f73cc07268a",
"assets/assets/images/phone.jpg": "40cd76251609d92ad31992c3dc269533",
"assets/assets/images/services%2520logo.jpg": "44f2b727654672eb5bff1c9803da3ce2",
"assets/assets/images/whatsapp.svg": "dc3d05a3ac7654d45836aed884e1e7f2",
"assets/FontManifest.json": "e94b90fb0c756001a2329fb45e21a250",
"assets/fonts/MaterialIcons-Regular.otf": "4962ab38356abcd9c87334502d4980d6",
"assets/NOTICES": "35583a129ebb197d3aa7fe19685d3ab3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "4769f3245a24c1fa9965f113ea85ec2a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "0914c7d98629d7787dd7965efa43f9e2",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9d55a66d76076152a2afa954714fbf80",
"/": "9d55a66d76076152a2afa954714fbf80",
"main.dart.js": "ed3757b3c1f34f0fba0a0d9cb1d47c7e",
"manifest.json": "c44369a6dde00535d0b1526d4e345d3e",
"version.json": "5c55734821a066a68625d3696dc66b93"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
